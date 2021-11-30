<?php

namespace App\Models;

use http\Env\Request;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;
use Intervention\Image\Facades\Image;

class Stock extends Model
{
    public static function checkStockValidation($request){
        $request->validate([
            'purchase_date'     => 'required',
            'voucher_no'        => 'required',
            'supplier_id'       => 'required|integer',
            'brand_id'          => 'required|integer',
            'category_id'       => 'required|integer',
            'sub_category_id'   => 'required|integer',
            'product_id'        => 'required|integer',
            'size_id'           => 'required|integer',
            'color_id'          => 'required|integer',
            'unit_id'           => 'required|integer',
            'quantity'          => 'required',
            'purchase_price'    => 'required',
        ]);
    }
    public static function basicStockInfo($purchase){
        $stock                  = new Stock();
        $stock->purchase_id     = $purchase->id;
        $stock->save();
    }
    public static function updateStockInfo($purchase,$request){
        $stock = Stock::where('purchase_id',$purchase->id)->firstOrFail();
        $stock->purchase_id = $request->id;
        $stock->save();
    }
    public static function deleteStockInfo($id){
        $stock  =   Stock::where('purchase_id',$id)->first();
        $stock->delete();
    }

}
