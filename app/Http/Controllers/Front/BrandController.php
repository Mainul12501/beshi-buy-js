<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Product;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function getBrandNames()
    {
        $brands = Brand::where('status', 1)->latest('id')->select(['id','name','image','slug'])->get();
        return json_encode($brands);
    }
    public function productBrand()
    {
        $brands = Brand::where('status', 1)->latest('id')->select(['id','name','image'])->paginate(12);
        return view('front.brand.brand-product',['brands'=>$brands]);
    }
    public function brandProduct($slug){
//        $products       =   Product::where('brand_id',$id)->orderBy('id','desc')->paginate(12);
//        $subCategory    =   '' ;
//        if(count($products)>0){
//            foreach ($products as $product){
//                $subCategory = SubCategory::where('id',$product->sub_category_id)->first();
//            }
//            return view('front.category.category-product',[
//                'products'      =>$products,
//                'subCategory'  =>$subCategory
//            ]);
//        }else{
//            return view('front.category.category-product');
//        }

        return view('front.brand.brand-products',['productTypeSlug' => $slug]);
    }
    public function brandWiseProduct($slug)
    {
        $products       =   Product::where('brand_slug',$slug)->orderBy('sell_price','desc')->select('id','name','slug','sell_price','brand_id','image','regular_price')->get();
        $result         =   $this->returnData($products, $slug);
        return json_encode($result);
    }
    public function brandPriceWiseProduct($slug, $priceShort)
    {
        if ($priceShort == 'lth')
        {
            $products        =  Product::where('brand_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','ASC')->get();
        } elseif ($priceShort == 'htl')
        {
            $products        =  Product::where('brand_slug',$slug)->where('status',1)->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','DESC')->get();
        }
        $result     = $this->returnData($products, $slug);
        return json_encode($result);
    }
    public function brandFormPriceWiseProduct(Request $request)
    {
        $products        =  Product::where('brand_slug',$request->type_slug)->where('status',1)->whereBetween('sell_price', [$request->minPrice, $request->maxPrice])->select('id','name','slug','sell_price','brand_id','image','regular_price')->orderBy('sell_price','ASC')->get();
        $result          = $this->returnData($products, $request->type_slug);
        return json_encode($result);
    }
    protected function returnData($products, $slug)
    {
        $brands         = Brand::all();
        if (count($products)>0)
        {
            $result         = [
                'products'          => $products,
                'brands'            => $brands,
                'productTypeSlug'   => $slug,
                'type'              => 'Brand',
            ];
        } else{
            $result         = [
                'products'          => 'failed',
                'brands'            => $brands,
                'productTypeSlug'   => $slug,
                'type'              => 'Brand',
            ];
        }
        return $result;
    }
}
