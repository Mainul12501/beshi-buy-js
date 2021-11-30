<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Size;
use Illuminate\Http\Request;

class SizeController extends Controller
{
    public function addSize(){
        return view('admin.size.add-size');
    }
    public function newSize(Request $request){
        Size::sizeInfo($request);
        return redirect()->back()->with('message','Size Info Save Successfully !!!');
    }
    public function manageSize(){
        return view('admin.size.manage-size',['sizes'=>Size::orderBy('id','desc')->get()]);
    }
    public function inactiveSize($id){
        Size::inactiveStatus($id);
        return redirect()->back()->with('message','Size Info Inactive Successfully !!');
    }
    public function activeSize($id){
        Size::activeStatus($id);
        return redirect()->back()->with('message','Size Info Active Successfully !!');
    }
    public function editSize($id){
        return view('admin.size.edit-size',['size'=>Size::find($id)]);
    }
    public function updateSize(Request $request){
        Size::updateSizeInfo($request);
        return redirect('manage-size')->with('message','Size Info Updated !!!');
    }
    public function deleteSize($id){
        $size = Size::find($id);
        $size->delete();
        return redirect()->back()->with('message','Size Info Delete Successfully ??');
    }
}
