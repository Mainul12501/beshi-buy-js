<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Delivery extends Model
{
    protected $guarded = [];

    public static function updateDeliveryInfo($request){
        $delivery                   =   Delivery::find($request->id);
        $delivery->district_id      =   $request->district_id;
        $delivery->product_id       =   $request->product_id;
        $delivery->delivery_charge  =   strtolower($request->delivery_charge);
        $delivery->save();
    }
}
