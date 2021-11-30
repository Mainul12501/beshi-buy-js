<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;

class Product extends Model
{
    public static function checkProductValidation($request){
        if($request->hasFile('sub_image')){
            $request->validate([
                'name'              =>  'required|string|min:3',
                'code'              =>  'required|string',
                'category_id'       =>  'required|integer',
                'sub_category_id'   =>  'required|integer',
                'brand_id'          =>  'required|integer',
                'unit_id'           =>  'required|integer',
                'product_color_id'  =>  'required|array',
                'product_size_id'   =>  'required|array',
                'short_description' =>  'required',
                'long_description'  =>  'required',
                'image'             =>  'required|image|mimes:jpg,jpeg,webp',
                'sub_image'         =>  'required|array',
                'sub_image.*'       =>  'required|image|mimes:jpg,jpeg,webp',
            ]);
        }else if($request->hasFile('image')){
            $request->validate([
                'name'              =>  'required|string|min:3',
                'code'              =>  'required|string',
                'category_id'       =>  'required|integer',
                'sub_category_id'   =>  'required|integer',
                'brand_id'          =>  'required|integer',
                'unit_id'           =>  'required|integer',
                'product_color_id'  =>  'required|array',
                'product_size_id'   =>  'required|array',
                'short_description' =>  'required',
                'long_description'  =>  'required',
                'image'             =>  'required|image|mimes:jpg,jpeg,webp',
            ]);
        }else{
            $request->validate([
                'name'              =>  'required|string|min:3',
                'code'              =>  'required|string',
                'category_id'       =>  'required|integer',
                'sub_category_id'   =>  'required|integer',
                'brand_id'          =>  'required|integer',
                'unit_id'           =>  'required|integer',
                'product_color_id'  =>  'required|array',
                'product_size_id'   =>  'required|array',
                'short_description' =>  'required',
                'long_description'  =>  'required',
            ]);
        }
    }

    public static function updateProductValidation($request){
        if($request->hasFile('image') && $request->hasFile('sub_image')){
            $request->validate([
                'image'             =>  'required|image|mimes:jpg,jpeg,webp',
                'sub_image'         =>  'required|array',
                'sub_image.*'       =>   'required|image|mimes:jpg,jpeg,webp',
            ]);
        }
        if($request->hasFile('image')){
            $request->validate([
                'image'             =>  'required|image|mimes:jpg,jpeg,webp',
            ]);
        }
        if($request->hasFile('sub_image')){
            $request->validate([
                'sub_image'              =>  'required|array',
                'sub_image.*'           =>  'required|image|mimes:jpg,jpeg,webp',
            ]);
        }
    }

    public static function uploadProductImage($request)
    {
        if($request->hasFile('image')){
            $mainImage  = $request->file('image');
            $imageName  = time().'.'.$mainImage->getClientOriginalExtension();
            $directory  =  './admin/product_images/';
            $imageUrl   =   $directory.$imageName;
            Image::make($mainImage)->resize(195,170)->save($imageUrl,65);
            return $imageUrl;
        }

    }
    public static function uploadProductBigImage($request){
        if($request->hasFile('image')){
            $mainImage      =   $request->file('image');
            $imageName      =   time().'.'.$mainImage->getClientOriginalExtension();
            $directory      =  './admin/product_big_images/';
            $bigImageUrl    =   $directory.$imageName;
            Image::make($mainImage)->resize(650,650)->save($bigImageUrl,65);
            return $bigImageUrl;
        }

    }
    public static function uploadProductMultipleImage($request, $productId)
    {
        if($request->hasFile('sub_image')){
            $images = $request->file('sub_image');
            foreach ($images as $image) {
                $imageName = time().'.'.$image->getClientOriginalName();
                $directory = './admin/sub_images/';
                $imageUrl   =   $directory.$imageName;
                Image::make($image)->resize(650,650)->save($imageUrl,65);
                $subImage = new SubImage();
                $subImage->product_id = $productId;
                $subImage->sub_image  = $directory.$imageName;
                $subImage->save();
            }
        }

    }
    public static function multipleProductColor($request, $productId){
        foreach ($request->product_color_id as $singleColor ) {
            $productColor = new ProductColor();
            $productColor->product_id = $productId;
            $productColor->color_id   = $singleColor;
            $productColor->save();
        }
    }
    public static function multipleProductSize($request, $productId){
        foreach ($request->product_size_id as $singleSize) {
            $productSize = new ProductSize();
            $productSize->product_id  = $productId;
            $productSize->size_id     = $singleSize;
            $productSize->save();
        }
    }

    public static function productBasicInfo($request) {
        $category   = Category::where('id', $request->category_id)->select('id','slug')->first();
        $subCategory   = SubCategory::where('id', $request->sub_category_id)->select('id','slug')->first();
        $brand   = Brand::where('id', $request->brand_id)->select('id','slug')->first();
        $product                        =   new Product();
        $product->category_id           =   $request->category_id;
        $product->sub_category_id       =   $request->sub_category_id;
        $product->brand_id              =   $request->brand_id;
        $product->unit_id               =   $request->unit_id;
        $product->name                  =   $request->name;
        $product->slug                  =   str_replace(' ','-',$request->name);
        $product->category_slug         =   $category->slug;
        $product->sub_category_slug     =   $subCategory->slug;
        $product->brand_slug            =   $brand->slug;
        $product->code                  =   $request->code;
        $product->model                 =   $request->model;
        $product->origin                =   $request->origin;
        $product->serial_imei           =   $request->serial_imei;
        $product->weight                =   $request->weight;
        $product->short_description     =   $request->short_description;
        $product->long_description      =   $request->long_description;
        $product->video_url             =   $request->video_url;
        $product->image                 =   Product::uploadProductImage($request);
        $product->big_image             =   Product::uploadProductBigImage($request);
        $product->save();
        $productId = $product->id;
        Product::uploadProductMultipleImage($request,$productId);
        Product::multipleProductColor($request,$productId);
        Product::multipleProductSize($request,$productId);
    }

    public static function inactiveStatus($id){
        $product   =   Product::find($id);
        if($product->status == 1){
            $product->status = 0;
            $product->save();
        }
    }
    public static function activeStatus($id){
        $product   =   Product::find($id);
        if($product->status == 0){
            $product->status = 1;
            $product->save();
        }
    }

    public static function updateProductInfo($request){
        $mainImage  =   $request->file('image');
        $product    =   Product::findOrFail($request->id);
        if($mainImage){
            if(file_exists($product->image)){
                unlink($product->image);
                $imageUrl   =   Product::uploadProductImage($request);
            } else {
                $imageUrl   =   Product::uploadProductImage($request);
            }

        }else{
            $imageUrl       =   $product->image;
        }
        if($mainImage){
            if(file_exists($product->big_image)){
                unlink($product->big_image);
                $bigImageUrl = Product::uploadProductBigImage($request);
            } else {
                $bigImageUrl = Product::uploadProductBigImage($request);
            }
        }else{
            $bigImageUrl =  $product->big_image;
        }

        if($request->file('sub_image')){
            $subImages = SubImage::where('product_id',$request->id)->get();
            foreach ($subImages as $subImage){
                if(file_exists($subImage->sub_image)){
                    unlink($subImage->sub_image);
                }
                $subImage->delete();
            }
            Product::uploadProductMultipleImage($request,$request->id);
        }
        $existProductColor   =   ProductColor::where('product_id',$request->id)->get();
        foreach ($existProductColor as $item){
            $item->delete();
        }
        Product::multipleProductColor($request,$request->id);
        $existProductSize   =   ProductSize::where('product_id',$request->id)->get();
        foreach ($existProductSize as $item){
            $item->delete();
        }
        Product::multipleProductSize($request,$request->id);

        $category   = Category::where('id', $request->category_id)->select('id','slug')->first();
        $subCategory   = SubCategory::where('id', $request->sub_category_id)->select('id','slug')->first();
        $brand   = Brand::where('id', $request->brand_id)->select('id','slug')->first();

        $product->category_id           =   $request->category_id;
        $product->sub_category_id       =   $request->sub_category_id;
        $product->brand_id              =   $request->brand_id;
        $product->unit_id               =   $request->unit_id;
        $product->name                  =   $request->name;
        $product->slug                  =   str_replace(' ','-',$request->name);
        $product->category_slug         =   $category->slug;
        $product->sub_category_slug     =   $subCategory->slug;
        $product->brand_slug            =   $brand->slug;
        $product->code                  =   $request->code;
        $product->model                 =   $request->model;
        $product->origin                =   $request->origin;
        $product->serial_imei           =   $request->serial_imei;
        $product->weight                =   $request->weight;
        $product->short_description     =   $request->short_description;
        $product->long_description      =   $request->long_description;
        $product->video_url             =   $request->video_url;
        $product->image                 =   $imageUrl;
        $product->big_image             =   $bigImageUrl;
        $product->status                =   $request->status;
        $product->save();

    }
    public static function deleteProductInfo($id){
        $product    =   Product::find($id);
        if($product->image){
            if(file_exists($product->image)){
                unlink($product->image);
            }
        }
        if($product->big_image){
            if(file_exists($product->big_image)){
                unlink($product->big_image);
            }
        }
        $subImages = SubImage::where('product_id',$id)->get();
        foreach ($subImages as $subImage){
            if(file_exists($subImage->sub_image)){
                unlink($subImage->sub_image);
            }
            $subImage->delete();
        }
        $product->delete();
    }

    public function category(){
            return $this->belongsTo(Category::class);
    }
    public function subCategory(){
        return $this->belongsTo(SubCategory::class);
    }
    public function brand(){
        return $this->belongsTo(Brand::class);
    }
    public function unit(){
        return $this->belongsTo(Unit::class);
    }

}
