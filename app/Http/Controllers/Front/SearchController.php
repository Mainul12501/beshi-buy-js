<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Product;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function allResults($name)
    {
//        $products = Product::where('name','LIKE',"% $name%")->orderBy('id','desc')->select('id','name','slug','image','brand_id','brand_slug')->take(10)->get();
        return view('front.search.search-products',['productTypeSlug' => $name]);
    }
    public function allResultsProducts($name)
    {
        $products = Product::where('name','LIKE',"% $name%")->orderBy('id','desc')->select('id','name','slug','image','brand_id','brand_slug')->take(10)->get();
        if (count($products)>0)
        {
            $result = [
                'productTypeSlug'   => $name,
                'products'          => $products,
                'type'              => 'search-result',
            ];
        }
        return json_encode($result);
    }
}
