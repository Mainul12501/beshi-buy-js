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

class GroupPageController extends Controller
{
    protected function unique_multi_array($array, $key) {
        $temp_array = array();
        $i = 0;
        $key_array = array();

        foreach($array as $val) {
            if (!in_array($val[$key], $key_array)) {
                $key_array[$i] = $val[$key];
                $temp_array[$i] = $val;
            }
            $i++;
        }
        return $temp_array;
    }


    public function categoryWiseProductView ($id, $name)
    {
        $catProducts            = Product::where('category_id', $id)->where('status', 1)->orderBy('id', 'DESC')->paginate(12);

        $categoryId             = Category::where('id', $id)->first();
        $categories             = Category::where('status',1)->get();
        $brands                 = Brand::where('status', 1)->get();
        $colors                 = Color::where('status', 1)->orderBy('name', 'ASC')->get();
        $latestProducts         = Product::where('status', 1)->orderBy('id', 'DESC')->take(12)->get();
        $maxPrice               = $catProducts->max('sell_price');
        $minPrice               = $catProducts->min('sell_price');
        return view('front.category.cat-prod', [
            'categoryWiseProducts'          => $catProducts,
            'categories'                    => $categories,
            'latestProducts'                => $latestProducts,
            'categoryId'                    => $categoryId,
            'brands'                        => $brands,
            'colors'                        => $colors,
            'maxPrice'                      => $maxPrice,
            'minPrice'                      => $minPrice,
        ]);
    }

    //    get products by brand name
    public function productsByBrand ($id)
    {
        $brandProducts  = Product::where('brand_id', $id)->where('status', 1)->paginate(4);
        return json_encode($brandProducts);
    }
//    get products by color name
    public function productsByColor ($id)
    {
        $productColors  = ProductColor::where('color_id', $id)->select('product_id')->get();
        $test = [];
        foreach ($productColors as $productColor)
        {
            $test[] = Product::where('id', $productColor->product_id)->first();
        }
        return json_encode($test);
    }

}
