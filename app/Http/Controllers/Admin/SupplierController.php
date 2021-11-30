<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\Supplier;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
    public function addSupplier(){
        return view('admin.supplier.add-supplier',['categories'=>Category::latest('id')->get()]);
    }
    public function newSupplier(Request $request){
        Supplier::checkSupplierValidation($request);
        Supplier::basicSupplierInfo($request);
        return redirect()->back()->with('message','Supplier Info Save Successfully !!!');
    }
    public function manageSupplier(){
        $suppliers  =   Supplier::with('category:id,name')->latest('id')->get();
        return view('admin.supplier.manage-supplier',['suppliers'=>$suppliers]);
    }
    public function inactiveSupplier($id){
        Supplier::inactiveStatus($id);
        return redirect()->back()->with('message','Supplier Info Inactive Successfully !!!');
    }
    public function activeSupplier($id){
        Supplier::activeStatus($id);
        return redirect()->back()->with('message','Supplier Info Active Successfully !!!');
    }
    public function editSupplier($id){
        return view('admin.supplier.edit-supplier',['supplier'=>Supplier::find($id),'categories'=>Category::all()]);
    }
    public function updateSupplier(Request $request){
        if($request->hasFile('image')){
           Supplier::checkSupplierValidation($request);
        }
        Supplier::updateSupplierInfo($request);
        return redirect('manage-supplier')->with('message','Supplier Info Updated !!!');
    }
    public function deleteSupplier($id){
        $supplier   =   Supplier::find($id);
        if(file_exists($supplier->image)){
            unlink($supplier->image);
        }
        $supplier->delete();
        return redirect()->back()->with('message','Supplier Info Delete Successfully ???');
    }

    public function getSupplierCode(){
        for ($i = 0; $i < 10; ++$i) {
            $code           =   mt_rand(0, 9999);
            $existCode    =   Supplier::where('id',$code)->exists();
            if (!$existCode) {
                return json_encode($code);

            } else {
                $codex = ( mt_rand(0, 99999)+1);
                return json_encode($codex);
            }
        }


    }
}
