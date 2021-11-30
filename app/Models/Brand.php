<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Intervention\Image\Facades\Image;

class Brand extends Model
{
    public static function checkBrandValidation($request){
        if($request->hasFile('image')){
            $request->validate([
                'name' =>'required|string|max:256|unique:brands,name,'.$request->id,
                'category_id'=>'required|integer',
                'image'=>'required|image|mimes:jpg,jpeg,webp'
            ]);
        }else{
            $request->validate([
                'name' =>'required|string|max:256|unique:brands,name,'.$request->id,
                'category_id'=>'required|integer',
            ]);
        }

    }
    public static function imageUpload($request){
        if($request->hasFile('image')){
            $image      =   $request->file('image');
            $imageName  =   time().'.'.$image->getClientOriginalExtension();
            $directory  =   './admin/brand_images/';
            $imageUrl   =   $directory.$imageName;
            Image::make($image)->resize(170,93)->save($imageUrl,65);
            return $imageUrl;
        }
    }
    public static function basicBrandInfo($request){
        $brand   =   new Brand();
        $brand->name            =   $request->name;
        $brand->slug            =   str_replace(' ','-', $request->name);
        $brand->category_id     =   $request->category_id;
        $brand->image           =   Brand::imageUpload($request);
        $brand->save();
    }
    public static function inactiveStatus($id){
        $brand   =   Brand::find($id);
        if($brand->status    ==  1){
            $brand->status   =   0;
            $brand->save();
        }
    }
    public static function activeStatus($id){
        $brand   =   Brand::find($id);
        if($brand->status    ==  0){
            $brand->status   =   1;
            $brand->save();
        }
    }
    public static function updateBrandInfo($request){
        $brand  =   Brand::find($request->id);
        $image  =   $request->file('image');
        if($image){
            if(file_exists($brand->image)){
                unlink($brand->image);
                $imageUrl       =  Brand::imageUpload($request);
            }else{

                $imageUrl       =  Brand::imageUpload($request);
            }
        }
        else{
            $imageUrl       =  $brand->image;
        }
        $brand->name        =   $request->name;
        $brand->slug            =   str_replace(' ','-', $request->name);
        $brand->category_id =   $request->category_id;
        $brand->image       =   $imageUrl;
        $brand->status      =   $request->status;
        $brand->save();
    }
    public function category(){
        return $this->belongsTo(Category::class);
    }


}
