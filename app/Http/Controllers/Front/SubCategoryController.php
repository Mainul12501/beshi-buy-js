<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Product;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    public function subCategoryProduct($slug){
        return view('front.sub-category.subCat-product',['productTypeSlug' => $slug]);
    }

//    ajax controller codes start --- date: 37-7-21
    public function subCatWiseProduct ($slug)
    {
//        $products        =  Product::where('category_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('id','desc')->paginate(4);
        $products        =  Product::where('sub_category_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('id','desc')->get();
        $result     = $this->returnData($products, $slug);

        return json_encode($result);
    }
    public function subCatPriceWiseProduct ($slug, $priceShort)
    {
//        $products        =  Product::where('category_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id')->orderBy('id','desc')->paginate(12);
        if ($priceShort == 'lth')
        {
            $products        =  Product::where('sub_category_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','ASC')->get();
        } elseif ($priceShort == 'htl')
        {
            $products        =  Product::where('sub_category_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','desc')->get();
        }
        $result     = $this->returnData($products, $slug);
        return json_encode($result);
    }
    public function subCatBrandWiseProduct($categorySlug, $brandSlug)
    {
        $products        =  Product::where('sub_category_slug',$categorySlug)->where('brand_slug', $brandSlug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','ASC')->get();
        $productsx      = Product::where('sub_category_slug', $categorySlug)->where('status', 1)->select('id','brand_id')->get();
        $result     = $this->returnDataTypeTwo($products, $productsx, $categorySlug);
//        foreach ($productsx as $product)
//        {
//            $brandDatas[]   = Brand::where('id', $product->brand_id)->select('id','name','slug')->first();
//        }
//        $brands = array_unique($brandDatas);
//        $result = [
//            'productTypeSlug'   => $categorySlug,
//            'products'          => $products,
//            'brands'            => $brands,
//            'type'              => 'sub-category',
//        ];
        return json_encode($result);
    }
    public function subCatFormPriceWiseProduct(Request $request)
    {
        $products        =  Product::where('sub_category_slug',$request->type_slug)->where('status',1)->whereBetween('sell_price', [$request->minPrice, $request->maxPrice])->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','ASC')->get();
        $productsx      = Product::where('sub_category_slug', $request->type_slug)->where('status', 1)->select('id','brand_id')->get();
        $result     = $this->returnDataTypeTwo($products, $productsx, $request->type_slug);
        return json_encode($result);
    }
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
                'type'              => 'sub-category',
            ];
        } else{
            $brands = Brand::all()->random(5);
            $result = [
                'productTypeSlug'   => $slug,
                'products'          => 'failed',
                'brands'            => $brands,
                'type'              => 'sub-category',
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
                'type'              => 'sub-category',
            ];
        } else{
            $brands = Brand::all()->random(5);
            $result = [
                'productTypeSlug'   => $slug,
                'products'          => 'failed',
                'brands'            => $brands,
                'type'              => 'sub-category',
            ];
        }
        return $result;
    }
//    ajax controller codes end --- date: 37-7-21

//---------------------------------------

//    public function subCategoryProduct($id){
//        $subCategory    =   SubCategory::find($id);
//        $products       =   Product::where('sub_category_id',$id)->where('status',1)->orderBy('id','desc')->paginate(12);
//        $singleProduct  =   Product::where('sub_category_id',$id)->orderBy('id','desc')->first();
//        return view('front.category.category-product',['products'=>$products,'singleProduct'=>$singleProduct,'subCategory'=>$subCategory]);
//    }

//---------------------------------------


}
