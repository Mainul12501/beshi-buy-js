<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Carbon;

class Category extends Model
{
    public static function checkCategoryValidation($request){
        $request->validate([
            'name' =>'required|string|max:256|unique:categories,name,'.$request->id,
            'icon' =>'required',
            'image'=>'required|image|mimes:jpg,jpeg,webp'
        ]);
    }

    public static  function imageUpload($request){
        if($request->hasFile('image')){
            $image      =   $request->file('image');
            $imageName  =   time().'.'.$image->getClientOriginalExtension();
            $directory  =   './admin/category_images/';
            $imageUrl   =   $directory.$imageName;
            Image::make($image)->resize(290,340)->save($imageUrl,65);
            return $imageUrl;
        }
    }

    public static function basicCategoryInfo($request){
        $category   =   new Category();
        $category->name         =   $request->name;
        $category->slug         =   str_replace(' ','-',$request->name);
        $category->icon         =   $request->icon;
        $category->description  =   $request->description;
        $category->image        =   Category::imageUpload($request);
        $category->save();
    }
    public static function updateCategoryInfo($request){
        $category   =   Category::find($request->id);
        $image  =   $request->file('image');
        if($image){
            if(file_exists($category->image)){
                unlink($category->image);
                $imageUrl    =  Category::imageUpload($request);
            }else{
                $imageUrl    =  Category::imageUpload($request);
            }
        }
        else{
            $imageUrl   =  $category->image;
        }
        $category->name         =   $request->name;
        $category->slug         =   str_replace(' ','-',$request->name);
        $category->icon         =   $request->icon;
        $category->description  =   $request->description;
        $category->image        =   $imageUrl;
        $category->status       =   $request->status;
        $category->save();
    }
    public function subCategory()
    {
        return $this->hasMany(SubCategory::class);
//        return $this->hasMany(SubCategory::class,'category_id','id');
    }
    public function products()
    {
        return $this->hasMany(Product::class,'id','category_id');
    }
    public function sliders()
    {
        return $this->hasMany(Slider::class);
    }
}
