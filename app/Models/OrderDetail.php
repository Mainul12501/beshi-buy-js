<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $guarded  = [];

    public static function addOrderDetails($cartItems, $order)
    {
        foreach ($cartItems as $item){
            $orderDetail                    =   new OrderDetail();
            $orderDetail->order_id          =   $order->id;
            $orderDetail->order_code          =   $order->order_code;
            $orderDetail->product_id        =   $item->id;
            $orderDetail->product_name      =   $item->name;
            $orderDetail->product_size      =   $item->attributes->size;
            $orderDetail->product_color      =   $item->attributes->color;
            $orderDetail->product_quantity  =   $item->quantity;
            $orderDetail->total_amount     =   $item->price;
            $orderDetail->save();
        }
    }
    public function order()
    {
        return $this->belongsTo(Order::class);
    }
}
