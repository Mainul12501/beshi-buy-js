<?php

namespace App\Models;

use App\Notifications\EmailNotification;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Session;


class Customer extends Model
{
    use Notifiable;

    public static function sameAddressInfo($request){

        $customer               = new Customer();
        $customer->name         = $request->name;
        $customer->email        = $request->email;
        $customer->phone        = $request->phone;
        $customer->city         = $request->city;
        $customer->district_id  = $request->district_id;
        $customer->address      = $request->address;
        $customer->save();

       /* $customer->notify(new EmailNotification($customer));*/

        Session::put('customerId',$customer->id);
        Session::put('customerName',$customer->name);

        $shipping                   = new Shipping();
        $shipping->customer_id      = $customer->id;
        $shipping->ship_name        = $customer->name;
        $shipping->ship_email       = $customer->email;
        $shipping->ship_phone       = $customer->phone;
        $shipping->ship_city        = $customer->city;
        $shipping->ship_district_id = $customer->district_id;
        $shipping->ship_address     = $customer->address;
        $shipping->save();

        Session::put('shippingId',$shipping->id);
        Session::put('shippingName',$shipping->ship_name);
    }
    public static function differentAddressInfo($request){
        $customer               = new Customer();
        $customer->name         = $request->name;
        $customer->email        = $request->email;
        $customer->phone        = $request->phone;
        $customer->city         = $request->city;
        $customer->district_id  = $request->district_id;
        $customer->address      = $request->address;
        $customer->save();

        Session::put('customerId',$customer->id);
        Session::put('customerName',$customer->name);

       /* $customer->notify(new EmailNotification($customer));*/

        $shipping                       = new Shipping();
        $shipping->customer_id          = $customer->id;
        $shipping->ship_name            = $request->ship_name;
        $shipping->ship_email           = $request->ship_email;
        $shipping->ship_phone           = $request->ship_phone;
        $shipping->others_phone         = $request->others_phone;
        $shipping->ship_city            = $request->ship_city;
        $shipping->ship_district_id     = $request->ship_district_id;
        $shipping->ship_address         = $request->ship_address;
        $shipping->save();

        Session::put('shippingId',$shipping->id);
        Session::put('shippingName',$shipping->ship_name);
    }

}
