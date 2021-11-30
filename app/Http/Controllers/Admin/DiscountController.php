<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Discount;
use App\Models\Product;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class DiscountController extends Controller
{
    public function index(){
        $cats               = Category::where('status', 1)->select('id','name')->get();
//        $productDiscounts   = Discount::orderBy('status','DESC')->get();
        return view('admin.product.discount', [
            'cats'          => $cats,
//            'productDiscounts'  => $productDiscounts,
        ]);
    }
   public function newDiscount(Request $request){
       $discount = Discount::saveDiscountData($request);
       return json_encode($discount);
   }
    public function getData()
    {
        $productDiscounts   = Discount::orderBy('status','DESC')->get();
        if (count($productDiscounts) > 0)
        {
            foreach ($productDiscounts as $discount)
            {
                $products[] = Product::where('id', $discount->product_id)->select('id', 'name')->first();
            }
            $result     = [
                'productDiscounts'      => $productDiscounts,
                'products'              => $products,
            ];
            return json_encode($result);
        } else {
            return json_encode('error');
        }
    }
    public function del($id)
    {
        $dis    = Discount::findOrFail($id);
        $dis->delete();
        return json_encode('Discount Product Deleted Successfully.');
    }
    public function change($id)
    {
        $dis    = Discount::findOrFail($id);
        if ($dis->status == 1)
        {
            $dis->status = 0;
            $dis->save();
        } elseif ($dis->status == 0)
        {
            $dis->status = 1;
            $dis->save();
        }
        return json_encode('Status Changed Successfully.');
    }
    public function edit($id)
    {
        $dis    = Discount::findOrFail($id);
        $productName    = Product::where('id',$dis->product_id)->select('id','name','category_id','sub_category_id')->first();
        $catName    = Category::where('id', $productName->category_id)->select('id','name')->first();
        $subCatName    = SubCategory::where('id', $productName->sub_category_id)->select('id','sub_category_name')->first();
        $result = [
            'discount'  => $dis,
            'productName'      => $productName,
            'catName'       => $catName,
            'subCatName'    => $subCatName
        ];
        return json_encode($result);
    }
    public function schedule()
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
