<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    public function addSlider(){
        return view('admin.slider.add-slider',['categories'=>Category::orderBy('id','desc')->get()]);
    }
    public function newSlider(Request $request){
        Slider::checkSliderValidation($request);
        Slider::basicSliderInfo($request);
        return redirect()->back()->with('message','Slider Info Save Successfully !!');
    }
    public function manageSlider(){
        $sliders  =   Slider::with('category:id,name')->orderBy('id','desc')->get();
        return view('admin.slider.manage-slider',['sliders'=>$sliders]);
    }
    public function inactiveSlider($id){
        $slider    =   Slider::find($id);
        if($slider->status ==  1){
            $slider->status    =   0;
            $slider->save();
        }
        return  redirect()->back()->with('message','Slider Info Inactive Successfully !!');
    }
    public function activeSlider($id){
        $slider    =   Slider::find($id);
        if($slider->status ==  0){
            $slider->status    =   1;
            $slider->save();
        }
        return  redirect()->back()->with('message','Slider Info Active Successfully !!');
    }
    public function editSlider($id){
        return view('admin.slider.edit-slider',['slider'=>Slider::find($id),'categories'=>Category::orderBy('id','desc')->get()]);
    }
    public function updateSlider(Request $request){
        if($request->hasFile('image')){
          Slider::checkSliderValidation($request);
        }
        Slider::updateSliderInfo($request);
        return redirect('manage-slider')->with('message','Slider Info Update Successfully !!!');
    }
    public function deleteSlider($id){
        $slider    =   Slider::find($id);
        if(file_exists($slider->image)){
            unlink($slider->image);
        }
        $slider->delete();
        return redirect()->back()->with('message','Slider Info Delete Successfully ??');
    }
}
