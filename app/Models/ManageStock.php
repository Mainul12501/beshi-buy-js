<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ManageStock extends Model
{
    public static function  updateStock ($newStock,$request)
    {
        $newStock->voucher_no      =   $request->voucher_no;
        $newStock->supplier_id     =   $request->supplier_id;
        $newStock->category_id     =   $request->category_id;
        $newStock->sub_category_id =   $request->sub_category_id;
        $newStock->brand_id        =   $request->brand_id;
        $newStock->product_id      =   $request->product_id;
        $newStock->size_id         =   $request->size_id;
        $newStock->color_id        =   $request->color_id;
        $newStock->unit_id         =   $request->unit_id;
        $newStock->model           =   $request->model;
        $newStock->serial          =   $request->serial;
        $newStock->origin          =   $request->origin;
        if ($newStock->quantity != $request->quantity)
        {
            $newStock->quantity        =   $newStock->quantity + $request->quantity;
        } else {
            $newStock->quantity        =   $request->quantity;
        }
        if ($newStock->damaged_qty != $request->damaged_qty)
        {
            $newStock->damaged_qty     =   $newStock->damaged_qty + $request->damaged_qty;
        } else {
            $newStock->damaged_qty     =   $request->damaged_qty;
        }
        $newStock->damaged_qty     =   $request->damaged_qty;
        $newStock->purchase_price  =   $request->purchase_price;
        $newStock->profit          =   $request->profit;
        $newStock->discount        =   $request->discount;
        $newStock->sell_price      =   $request->sell_price;
        $newStock->save();
    }
}
