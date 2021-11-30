<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    public static function colorInfo($request){
        $color   =   new Color();
        $color->name         =   $request->name;
        $color->description  =   $request->description;
        $color->save();
    }
    public static function inactiveStatus($id){
        $color   =   Color::find($id);
        if($color->status == 1){
            $color->status = 0;
            $color->save();
        }
    }
    public static function activeStatus($id){
        $color   =   Color::find($id);
        if($color->status == 0){
            $color->status = 1;
            $color->save();
        }
    }
    public static function updateColorInfo($request){
        $color   =   Color::find($request->id);
        $color->name         =   $request->name;
        $color->description  =   $request->description;
        $color->status       =   $request->status;
        $color->save();

    }
}
