<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Carbon;

class SubCategory extends Model
{
    public static function checkSubCatValidation($request){
        if($request->hasFile('sub_category_image')){
            $request->validate([
                'sub_category_name'  =>'required|string|max:256|unique:sub_categories,sub_category_name,'.$request->id,
                'category_id'        =>'required|integer',
                'sub_category_image' =>'required|image|mimes:jpg,jpeg,webp'
            ]);
        }else{
            $request->validate([
                'sub_category_name'  =>'required|string|max:256|unique:sub_categories,sub_category_name,'.$request->id,
                'category_id'        =>'required|integer',
            ]);
        }
    }
    public static function imageUpload($request){
        if($request->hasFile('sub_category_image')){
            $image      =   $request->file('sub_category_image');
            $imageName  =   time().'.'.$image->getClientOriginalExtension();
            $directory  =   './admin/sub_category_images/';
            $imageUrl   =   $directory.$imageName;
            Image::make($image)->resize(185,140)->save($imageUrl,65);
            return $imageUrl;
        }
    }

    public static function basicSubCategoryInfo($request){
        $subCategory    =   new SubCategory();
        $subCategory->category_id               =   $request->category_id;
        $subCategory->sub_category_name         =   $request->sub_category_name;
        $subCategory->slug                      =   str_replace(' ','-',$request->sub_category_name);
        $subCategory->sub_category_description  =   $request->sub_category_description;
        $subCategory->sub_category_image        =   SubCategory::imageUpload($request);
        $subCategory->save();
    }

    public static function updateSubcategoryInfo($request){
        $image          =   $request->file('sub_category_image');
        $subCategory    =   SubCategory::find($request->id);
        if($image){
            if(file_exists($subCategory->sub_category_image)){
                unlink($subCategory->sub_category_image);
                $imageUrl   = SubCategory::imageUpload($request);
            }else{
                $imageUrl   = SubCategory::imageUpload($request);
            }
        }else{
            $imageUrl   = $subCategory->sub_category_image;
        }
        $subCategory->category_id               =   $request->category_id;
        $subCategory->sub_category_name         =   $request->sub_category_name;
        $subCategory->slug                      =   str_replace(' ','-',$request->sub_category_name);
        $subCategory->sub_category_description  =   $request->sub_category_description;
        $subCategory->sub_category_image        =   $imageUrl;
        $subCategory->status                    =   $request->status;
        $subCategory->save();
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }
    protected $guarded  = [];
    public function products()
    {
        return $this->hasMany(Product::class,'sub_category_id','id');
    }
}
