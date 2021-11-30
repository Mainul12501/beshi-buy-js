<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;

class Discount extends Model
{
    protected $guarded  = [];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public static function saveDiscountData($request)
    {
        if (isset($request->discount_id))
        {
            $discount   = Discount::findOrFail($request->discount_id);
        } else {
            $discount   = new Discount();
        }
//        $discount   = new Discount();
        $discount->coupon_name  = $request->coupon_name;
        $discount->coupon_code  = $request->coupon_code;
        $discount->product_id   = $request->product_id;
        $discount->start_date   = Carbon::createFromFormat('d-m-Y H:m:s', $request->start_date)->toDateTimeString();
//        $discount->start_date   = Carbon::createFromFormat('d-m-Y H:m:s', $request->start_date)->format('Y-m-d h:i:s');
        $discount->end_date   = Carbon::createFromFormat('d-m-Y H:m:s', $request->end_date)->toDateTimeString();
//        $discount->end_date   = Carbon::createFromFormat('d-m-Y H:m:s', $request->end_date)->format('Y-m-d h:i:s');
        $discount->description   = $request->description;
        if (isset($request->discount_percentage))
        {
            $discount->discount_percentage  = $request->discount_percentage;
            $discount->discount_cash  = 0;
            $product    = Product::findOrFail($request->product_id);
            $reduceAmount   = round(($product->sell_price * $request->discount_percentage)/100);
            $discount->reduce_amount  = $reduceAmount;
        } else {
            $discount->discount_percentage  = 0;
            $discount->discount_cash  = $request->discount_cash;
            $discount->reduce_amount  = $request->discount_cash;
        }
        $discount->save();
        return $discount;
    }
    public static function schedule()
    {
        $currentTime    = Carbon::now()->toDateTimeString();
        $productDiscounts   = Discount::where('status', 1)->get();
        foreach ($productDiscounts as $productDiscount)
        {
            if ($productDiscount->end_date < $currentTime)
            {
//                $productDiscount->validity  = 'expired';
                $productDiscount->validity  = 0;
                $productDiscount->save();
            }
        }
    }
}
