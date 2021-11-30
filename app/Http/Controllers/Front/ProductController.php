<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function relatedProducts($slug)
    {
        $product    = Product::where('slug', $slug)->select('id','category_slug')->first();
        $relatedProducts    = Product::where('category_slug', $product->category_slug)->select('id','name','slug','sell_price','brand_id','image','regular_price')->get()->random(8);
        return json_encode($relatedProducts);
    }
}
