<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Unit;
use Illuminate\Http\Request;

class UnitController extends Controller
{
    public function addUnit(){
        return view('admin.unit.add-unit');
    }
    public function newUnit(Request $request){
        Unit::unitInfo($request);
        return redirect()->back()->with('message','Unit Info Save Successfully !!!');
    }
    public function manageUnit(){
        return view('admin.unit.manage-unit',['units'=>Unit::orderBy('id','desc')->get()]);
    }
    public function inactiveUnit($id){
        Unit::inactiveStatus($id);
        return redirect()->back()->with('message','Unit Info Inactive Successfully !!');
    }
    public function activeUnit($id){
        Unit::activeStatus($id);
        return redirect()->back()->with('message','Unit Info Active Successfully !!');
    }
    public function editUnit($id){

        return view('admin.unit.edit-unit',['unit'=>Unit::find($id)]);
    }
    public function updateUnit(Request $request){
        Unit::updateUnitInfo($request);
        return redirect('manage-unit')->with('message','Unit Info Updated !!!');
    }
    public function deleteUnit($id){
        $unit = Unit::find($id);
        $unit->delete();
        return redirect()->back()->with('message','Unit Info Delete Successfully ??');
    }
}
