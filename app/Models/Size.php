<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Size extends Model
{
    public static function sizeInfo($request){
        $size   =   new Size();
        $size->name         =   $request->name;
        $size->description  =   $request->description;
        $size->save();
    }
    public static function inactiveStatus($id){
        $size   =   Size::find($id);
        if($size->status == 1){
            $size->status = 0;
            $size->save();
        }
    }
    public static function activeStatus($id){
        $size   =   Size::find($id);
        if($size->status == 0){
            $size->status = 1;
            $size->save();
        }
    }
    public static function updateSizeInfo($request){
        $size   =   Size::find($request->id);
        $size->name         =   $request->name;
        $size->description  =   $request->description;
        $size->status       =   $request->status;
        $size->save();

    }

}
