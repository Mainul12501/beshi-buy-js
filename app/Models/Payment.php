<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $guarded  = [];
    public static function addPapyment($order, $paymentType)
    {
        $payment                    =   new Payment();
        $payment->order_id          =   $order->id;
        $payment->payment_type      =   $paymentType;
        $payment->save();

    }
}
