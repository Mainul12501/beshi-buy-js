<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Unit extends Model
{
    public static function unitInfo($request){
        $unit   =   new Unit();
        $unit->name         =   $request->name;
        $unit->description  =   $request->description;
        $unit->save();
    }
    public static function inactiveStatus($id){
        $unit   =   Unit::find($id);
        if($unit->status == 1){
            $unit->status = 0;
            $unit->save();
        }
    }
    public static function activeStatus($id){
        $unit   =   Unit::find($id);
        if($unit->status == 0){
            $unit->status = 1;
            $unit->save();
        }
    }
    public static function updateUnitInfo($request){
        $unit   =   Unit::find($request->id);
        $unit->name         =   $request->name;
        $unit->description  =   $request->description;
        $unit->status       =   $request->status;
        $unit->save();
    }

}
