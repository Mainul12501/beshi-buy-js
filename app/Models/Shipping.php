<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Session;

class Shipping extends Model
{
    public static function basicShippingInfo($request){
        $shipping   =   new Shipping();
        $shipping->name         =   $request->name;
        $shipping->customer_id  =   Session::get('customerId');;
        $shipping->email        =   $request->email;
        $shipping->phone        =   $request->phone;
        $shipping->other_phone  =   $request->other_phone;
        $shipping->city         =   $request->city;
        $shipping->address      =   $request->address;
        $shipping->district     =   $request->district;
        $shipping->save();
        return $shipping;
    }
    protected $guarded  = [];

    public static function addShippingAddress($request)
    {
        $shipping                       = new Shipping();
        $shipping->customer_id          = Auth::id();
        $shipping->ship_name            = $request->name;
        $shipping->ship_email           = $request->email;
        $shipping->ship_phone           = $request->phone;
//        $shipping->others_phone         = $request->others_phone;
        $shipping->ship_city            = $request->city;
        $shipping->ship_district_id     = $request->district_id;
        $shipping->ship_address         = $request->address;
        $shipping->save();
    }
}
