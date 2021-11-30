<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductSize;
use App\Models\Size;
use Cart;
use Illuminate\Support\Facades\URL;

class ShortingController extends Controller
{

    //    get products by price slider filtering
    public function priceFilter (Request $request)
    {
        $min_price  = $request->minimum_price;
        $max_price  = $request->maximum_price;
        if (isset($min_price) && isset($max_price))
        {
            $categoryProducts = Product::where('category_id', $request->category_id)->orderBy('id', 'DESC')->whereBetween('sell_price', [$min_price, $max_price])->get();
        }

        return json_encode($categoryProducts);
    }

//    get products by filtering values
    public function productFilter ($value, $categoryId)
    {
        if ($value == 'nameA2Z'){
            $products   = Product::where('category_id', $categoryId)->orderBy('name', 'ASC')->get();
            return json_encode($products);
        } elseif ($value == 'nameZ2A')
        {
            $products   = Product::where('category_id', $categoryId)->orderBy('name', 'DESC')->get();
            return json_encode($products);
        } elseif ($value == 'low-high')
        {
            $products   = Product::where('category_id', $categoryId)->orderBy('sell_price', 'ASC')->get();
            return json_encode($products);
        } elseif ($value == 'high-low')
        {
            $products   = Product::where('category_id', $categoryId)->orderBy('sell_price', 'DESC')->get();
            return json_encode($products);
        } else {
            $msg = 'Plese select a shorting type';
            return json_encode($msg);
        }
    }
}
