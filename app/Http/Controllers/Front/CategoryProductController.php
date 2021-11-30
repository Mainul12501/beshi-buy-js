<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Product;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class CategoryProductController extends Controller
{
    public function categoryProduct($slug){
        return view('front.category.category-product',['productTypeSlug' => $slug]);
    }


//    ajax controller codes start --- date: 37-7-21
    public function catWiseProduct ($slug)
    {
//        $products        =  Product::where('category_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('id','desc')->paginate(4);
        $products        =  Product::where('category_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('id','desc')->get();

        $result     = $this->returnData($products, $slug);
        return json_encode($result);
    }
    public function catPriceWiseProduct ($slug, $priceShort)
    {
//        $products        =  Product::where('category_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id')->orderBy('id','desc')->paginate(12);
        if ($priceShort == 'lth')
        {
            $products        =  Product::where('category_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','ASC')->get();
        } elseif ($priceShort == 'htl')
        {
            $products        =  Product::where('category_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','desc')->get();
        }
        $result     = $this->returnData($products, $slug);
        return json_encode($result);
    }
    public function catBrandWiseProduct($categorySlug, $brandSlug)
    {
        $products        =  Product::where('category_slug',$categorySlug)->where('brand_slug', $brandSlug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','ASC')->get();
        $productsx      = Product::where('category_slug', $categorySlug)->where('status', 1)->select('id','brand_id')->get();
        $result     = $this->returnDataTypeTwo($products, $productsx, $categorySlug);
        return json_encode($result);
    }
    public function catFormPriceWiseProduct(Request $request)
    {
        $products        =  Product::where('category_slug',$request->type_slug)->where('status',1)->whereBetween('sell_price', [$request->minPrice, $request->maxPrice])->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','ASC')->get();
        $productsx      = Product::where('category_slug', $request->type_slug)->where('status', 1)->select('id','brand_id')->get();
        $result     = $this->returnDataTypeTwo($products, $productsx, $request->type_slug);
        return json_encode($result);
    }
//    ajax controller codes end --- date: 37-7-21
    public function returnDataTypeTwo($products, $productsx, $slug)
    {
        if (count($products)>0)
        {
            foreach ($productsx as $product)
            {
                $brandDatas[]   = Brand::where('id', $product->brand_id)->select('id','name','slug')->first();
            }
            $brands = array_unique($brandDatas);
            $result = [
                'productTypeSlug'   => $slug,
                'products'          => $products,
                'brands'            => $brands,
                'type'              => 'Category',
            ];
        } else{
            $brands = Brand::all()->random(5);
            $result = [
                'productTypeSlug'   => $slug,
                'products'          => 'failed',
                'brands'            => $brands,
                'type'              => 'Category',
            ];
        }
        return $result;
    }
    public function returnData($products, $slug)
    {
        if (count($products)>0)
        {
            foreach ($products as $product)
            {
                $brandDatas[]   = Brand::where('id', $product->brand_id)->select('id','name','slug')->first();
            }
            $brands = array_unique($brandDatas);
            $result = [
                'productTypeSlug'   => $slug,
                'products'          => $products,
                'brands'            => $brands,
                'type'              => 'Category',
            ];
        } else {
            $brands = Brand::all()->random(5);
            $result = [
                'productTypeSlug'   => $slug,
                'products'          => 'failed',
                'brands'            => $brands,
                'type'              => 'Category',
            ];
        }

        return  $result;
    }
}
