<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class MenuPagesController extends Controller
{
    function getLatestProducts()
    {
        $products   =   Product::where('status',1)->latest('id')->select('id','name','slug','sell_price','brand_id','image','regular_price')->take(16)->get();
        return json_encode($products);
    }
    public function latestProduct(){
        return view('front.product.new-explore');
    }
}
