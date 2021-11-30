<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BrandController extends Controller
{
    public function addBrand(){
       return view('admin.brand.add-brand',['categories'=>Category::orderBy('id','desc')->get()]);
    }
   public function newBrand(Request $request){
        Brand::checkBrandValidation($request);
        Brand::basicBrandInfo($request);
        return redirect()->back()->with('message','Brand Info Save Successfully !!!');
    }
    public function manageBrand(){
        return view('admin.brand.manage-brand',['brands'=>Brand::orderBy('id','desc')->get()]);
    }
    public function inactiveBrand($id){
        Brand::inactiveStatus($id);
        return redirect()->back()->with('message','Brand Info Inactive Successfully !!!');
    }
    public function activeBrand($id){
        Brand::activeStatus($id);
        return redirect()->back()->with('message','Brand Info Active Successfully !!!');

    }
    public function editBrand($id){
        return view('admin.brand.edit-brand',['brand'=>Brand::find($id),'categories'=>Category::orderBy('id','desc')->get()]);
    }
    public function updateBrand(Request $request){
        if($request->hasFile('image')){
            Brand::checkBrandValidation($request);
        }
        Brand::updateBrandInfo($request);
        return redirect('manage-brand')->with('message','Brand Info Update Successfully !!!');
    }
    public function deleteBrand($id){
        $brand   =   Brand::find($id);
        if(file_exists($brand->image)){
            unlink($brand->image);
        }
        $brand->delete();
        return redirect()->back()->with('message','Brand Info Delete Successfully ???');

    }

}
