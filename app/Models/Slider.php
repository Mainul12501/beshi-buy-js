<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;
use Intervention\Image\Facades\Image;

class Slider extends Model
{
    public static function checkSliderValidation($request){
        $request->validate([
            'title' =>'required|string|max:256|unique:sliders,title,'.$request->id,
            'category_id'=>'required|integer',
            'image' =>'required|image|mimes:jpg,jpeg,webp'
        ]);
    }
    public static function imageUpload($request){
        if($request->hasFile('image')){
            $image      =   $request->file('image');
            $imageName  =   time().'.'.$image->getClientOriginalExtension();
            $directory  =   './admin/slider_images/';
            $imageUrl   =   $directory.$imageName;
            Image::make($image)->resize(870,400)->save($imageUrl,65);
            return $imageUrl;
        }
    }

    public static function basicSliderInfo($request){
        $slider    =   new Slider();
        $slider->category_id    =   $request->category_id;
        $slider->title          =   $request->title;
        $slider->description    =   $request->description;
        $slider->image          =   Slider::imageUpload($request);
        $slider->save();
    }

    public static function updateSliderInfo($request){
        $image     =   $request->file('image');
        $slider    =   Slider::find($request->id);
        if($image){
            if(file_exists($slider->image)){
                unlink($slider->image);
                $imageUrl   = Slider::imageUpload($request);
            }else{
                $imageUrl   = Slider::imageUpload($request);
            }
        }else{
            $imageUrl   = $slider->image;
        }
        $slider->category_id    =   $request->category_id;
        $slider->title          =   $request->title;
        $slider->description    =   $request->description;
        $slider->image          =   $imageUrl;
        $slider->save();
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }
}
