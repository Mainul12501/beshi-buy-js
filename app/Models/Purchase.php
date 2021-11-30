<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Purchase extends Model
{
    protected $guarded = [];

    public static function checkPurchaseValidation($request){
        if($request->store_type == 0){
            $request->validate([
                'voucher_no'        => 'required',
                'supplier_id'       => 'required|integer',
                'product_id'        => 'required|integer',
                'size_id'           => 'required|integer',
                'color_id'          => 'required|integer',
                'unit_id'           => 'required|integer',
                'unit_price'        => 'required',
                'total_qty'         => 'required',
                'sell_price'        => 'required',
            ]);
        }elseif ($request->store_type == 1){
            $request->validate([
                'voucher_no'        => 'required',
                'supplier_id'       => 'required|integer',
                'product_id'        => 'required|integer',
                'size_id'           => 'required|integer',
                'color_id'          => 'required|integer',
                'unit_id'           => 'required|integer',
                'vend_price'        => 'required',
                'pro_mrp'           => 'required',
            ]);
        }

    }

    public static function basicPurchaseInfo($request){
        $purchase   =   new Purchase();
        $purchase->purchase_date    =   $request->purchase_date;
        $purchase->voucher_no       =   $request->voucher_no;
        $purchase->supplier_id      =   $request->supplier_id;
        $purchase->product_id       =   $request->product_id;
        $purchase->vp_code          =   $request->vp_code;
        $purchase->unit_id          =   $request->unit_id;
        $purchase->size_id          =   $request->size_id;
        $purchase->color_id         =   $request->color_id;
        $purchase->store_type       =   $request->store_type;
        if($request->store_type == 0){
            $purchase->unit_price   =   $request->unit_price;
        }elseif ($request->store_type == 1){
            $purchase->unit_price   =   $request->vend_price;
        }
        $purchase->total_qty        =   $request->total_qty;
        $purchase->addt_cost        =   ($request->trs_cost+$request->mkt_cost+$request->others_cost);
        $purchase->profit           =   $request->profit;
        $purchase->vat              =   $request->vat;
        $purchase->discount         =   $request->discount;
        $purchase->regular_price    =   $request->regular_price;
        $purchase->commission       =   $request->commission;
        if($request->store_type == 0){
            $purchase->sell_price   =   $request->sell_price;
        }elseif ($request->store_type == 1){
            $purchase->sell_price   =   $request->pro_mrp;
        }
        $purchase->save();

        $product    = Product::findOrFail($request->product_id);
        $product->sell_price    = $purchase->sell_price;
        $product->regular_price    = $purchase->regular_price;
        $product->save();

        if($request->store_type == 0){
            Stock::basicStockInfo($purchase);
        }

    }
    public static function updatePurchaseInfo($purchase,$request){
        $purchase->purchase_date    =   $request->purchase_date;
        $purchase->voucher_no       =   $request->voucher_no;
        $purchase->supplier_id      =   $request->supplier_id;
        $purchase->product_id       =   $request->product_id;
        $purchase->vp_code          =   $request->vp_code;
        $purchase->unit_id          =   $request->unit_id;
        $purchase->size_id          =   $request->size_id;
        $purchase->color_id         =   $request->color_id;
        $purchase->unit_price       =   $request->unit_price;
        $purchase->total_qty        =   $request->total_qty;
        $purchase->addt_cost        =   $request->addt_cost;
        $purchase->profit           =   $request->profit;
        $purchase->vat              =   $request->vat;
        $purchase->discount         =   $request->discount;
        $purchase->commission       =   $request->commission;
        $purchase->regular_price    =   $request->regular_price;
        $purchase->sell_price       =   $request->sell_price;
        $purchase->store_type       =   $request->store_type;
        $purchase->save();

        $product    = Product::findOrFail($request->product_id);
        $product->sell_price    = $purchase->sell_price;
        $product->regular_price    = $purchase->regular_price;
        $product->save();

        if($purchase->store_type == 0){
            Stock::updateStockInfo($purchase,$request);
        }
    }
    public static function deletePurchaseInfo($id){
        $purchase = Purchase::findOrFail($id);
        if($purchase->store_type == 0){
            $purchase->delete();
            Stock::deleteStockInfo($id);
        }elseif ($purchase->store_type == 1){
            $purchase->delete();
        }

    }
}
