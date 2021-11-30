<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Intervention\Image\Facades\Image;

class Supplier extends Model
{
    public static function checkSupplierValidation($request){
        if($request->hasFile('image')){
            $request->validate([
                'name'          =>'required|string|max:256',
                'code'          =>'required|string',
                'category_id'   =>'required|integer',
                'email'         =>'required|email|unique:suppliers,email,'.$request->id,
                'phone'         =>'required|min:4|max:11',
                'address'       =>'required|string|max:255',
                'image'         =>'required|image|mimes:jpg,jpeg,webp'
            ]);
        }else{
            $request->validate([
                'name'          =>'required|string|max:256',
                'code'          =>'required|string',
                'category_id'   =>'required|integer',
                'email'         =>'required|email|unique:suppliers,email,'.$request->id,
                'phone'         =>'required|min:4|max:11',
                'address'       =>'required|string|max:255',
            ]);
        }

    }

    public static  function imageUpload($request){
        if($request->hasFile('image')){
            $image      =   $request->file('image');
            $imageName  =   time().'.'.$image->getClientOriginalExtension();
            $directory  =   './admin/supplier_images/';
            $imageUrl   =   $directory.$imageName;
            Image::make($image)->resize(170,140)->save($imageUrl,65);
            return $imageUrl;
        }

    }

    public static function basicSupplierInfo($request){
        $supplier   =   new Supplier();
        $supplier->name         =   $request->name;
        $supplier->category_id  =   $request->category_id;
        $supplier->code         =   $request->code;
        $supplier->email        =   $request->email;
        $supplier->phone        =   $request->phone;
        $supplier->address      =   $request->address;
        $supplier->image       =   Supplier::imageUpload($request);

        $supplier->save();
    }
    public static function inactiveStatus($id){
        $supplier   =   Supplier::find($id);
        if($supplier->status == 1){
            $supplier->status = 0;
            $supplier->save();
        }
    }
    public static function activeStatus($id){
        $supplier   =   Supplier::find($id);
        if($supplier->status == 0){
            $supplier->status = 1;
            $supplier->save();
        }
    }
    public static function updateSupplierInfo($request){
        $image  =   $request->file('image');
        $supplier   =   Supplier::find($request->id);
        if($image){
            if(file_exists($supplier->image)){
                unlink($supplier->image);
                $imageUrl   =   Supplier::imageUpload($request);
            }else{

                $imageUrl   =   Supplier::imageUpload($request);
            }
        }else{
            $imageUrl   =   $supplier->image;
        }
        $supplier->name         =   $request->name;
        $supplier->category_id  =   $request->category_id;
        $supplier->code         =   $request->code;
        $supplier->email        =   $request->email;
        $supplier->phone        =   $request->phone;
        $supplier->address      =   $request->address;
        $supplier->image        =   $imageUrl;
        $supplier->status       =   $request->status;
        $supplier->save();

    }

    public function category(){
        return $this->belongsTo(Category::class);
    }
}
