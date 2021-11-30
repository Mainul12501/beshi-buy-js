<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Intervention\Image\Facades\Image;
//use Image;

class Banner extends Model
{
    protected $guarded = ['id'];
    public static function checkValidation($request){
        $request->validate([
            'category_id' => 'required|integer',
            'product_url' => 'required',
            'image'       => 'required|image|mimes:jpg,jpeg,webp',
        ]);
    }
    public static function uploadImage($request){
        if($request->hasFile('image')){
            $image      =   $request->file('image');
            $imageName  =   time().'.'.$image->getClientOriginalExtension();
            $directory  =  './admin/banner_images/';
            $imageUrl   =   $directory.$imageName;
            Image::make($image)->resize(570,190)->save($imageUrl,65);
            return $imageUrl;
        }
    }
    public static function uploadBigImage($request){
        if($request->hasFile('image')){
            $image          =   $request->file('image');
            $imageName      =   time().'.'.$image->getClientOriginalExtension();
            $directory      =  './admin/banner_big_images/';
            $bigImageUrl    =   $directory.$imageName;
            Image::make($image)->resize(1170,170)->save($bigImageUrl,65);
            return $bigImageUrl;
        }
    }
    public static function bannerBasicInfo($request){
        $banner              =  new Banner();
        $banner->category_id =  $request->category_id;
        $banner->product_url =  $request->product_url;
        $banner->publication_status =  $request->publication_status;
        $banner->image       =  Banner::uploadImage($request);
        $banner->big_image   =  Banner::uploadBigImage($request);
        $banner->save();
    }
    public static function bannerStyleInfo($id){
        $banner     = Banner::find($id);
        $categories = Category::all();
        if($categories->count() > $banner->serial){
            $banner->serial =  $banner->serial+1;
            $banner->save();
        }elseif($categories->count() >= $banner->serial){
            $banner->serial = 0;
            $banner->save();
        }
    }
    public static function bannerStatusInfo($id){
        $banner = Banner::find($id);
        if($banner->status == 0){
            $banner->status = 1;
            $banner->save();
        }elseif ( $banner->status == 1){
            $banner->status = 2;
            $banner->save();
        }elseif ( $banner->status == 2){
            $banner->status = 3;
            $banner->save();
        }elseif ( $banner->status == 3){
            $banner->status = 0;
            $banner->save();
        }
    }
    public static function updateBanner($request){
        $image  =   $request->file('image');
        $banner = Banner::findOrFail($request->id);

        if($image){
            if(file_exists($banner->image)){
                unlink($banner->image);
                $imageUrl = Banner::uploadImage($request);
            }else{
                $imageUrl = Banner::uploadImage($request);
            }
        }else{
            $imageUrl =  $banner->image;
        }

        if($image){
            if(file_exists($banner->big_image)){
                unlink($banner->big_image);
                $bigImageUrl = Banner::uploadBigImage($request);
            }else{
                $bigImageUrl = Banner::uploadBigImage($request);
            }
        }else{
            $bigImageUrl =  $banner->big_image;
        }

        $banner->category_id =  $request->category_id;
        $banner->product_url =  $request->product_url;
        $banner->publication_status =  $request->publication_status;
        $banner->image       =  $imageUrl;
        $banner->big_image   =  $bigImageUrl;
        $banner->save();

    }
    public static function deleteBannerInfo($banner){
        if($banner->image){
            if(file_exists($banner->image)){
                unlink($banner->image);
            }
        }
        if($banner->big_image){
            if(file_exists($banner->big_image)){
                unlink($banner->big_image);
            }
        }
        $banner->delete();
    }

}
