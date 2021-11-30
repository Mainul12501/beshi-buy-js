<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Color;
use Illuminate\Http\Request;

class ColorController extends Controller
{
    public function addColor(){
        return view('admin.color.add-color');
    }
    public function newColor(Request $request){
        Color::colorInfo($request);
        return redirect()->back()->with('message','Color Info Save Successfully !!!');
    }
    public function manageColor(){
        return view('admin.color.manage-color',['colors'=>Color::orderBy('id','desc')->get()]);
    }
    public function inactiveColor($id){
        Color::inactiveStatus($id);
        return redirect()->back()->with('message','Color Info Inactive Successfully !!');
    }
    public function activeColor($id){
        Color::activeStatus($id);
        return redirect()->back()->with('message','Color Info Active Successfully !!');
    }
    public function editColor($id){

        return view('admin.color.edit-color',['color'=>Color::find($id)]);
    }
    public function updateColor(Request $request){
        Color::updateColorInfo($request);
        return redirect('manage-color')->with('message','Color Info Updated !!!');
    }
    public function deleteColor($id){
        $color = Color::find($id);
        $color->delete();
        return redirect()->back()->with('message','Color Info Delete Successfully ??');
    }
}
