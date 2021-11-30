<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
use App\Models\Delivery;
use App\Models\FrontLayout;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductReview;
use App\Models\ProductSize;
use App\Models\ProductSubReview;
use App\Models\Purchase;
use App\Models\Size;
use App\Models\SubCategory;
use App\Models\SubImage;
use App\Models\User;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Auth;
use Session;

class EcommerceController extends Controller
{

    public function quickView($id){
        $product = Product::find($id);
        $productSizes = ProductSize::where('product_id',$id)->get();
        $subImages   = SubImage::where('product_id',$id)->get();
        $sizes  = [];
        foreach ($productSizes as $productSize)
        {
            $sizes[] = Size::find($productSize->size_id)->name;
        }
        $productColors = ProductColor::where('product_id', $product->id)->get();
        $colors     = [];
        foreach ($productColors as $productColor)
        {
            $colors[] = Color::find($productColor->color_id)->name;
        }
        $data = [
            'product'=>$product,
            'sizes'     =>$sizes,
            'subImages'=>$subImages,
            'colors'   => $colors,
        ];

        return json_encode($data);
    }

//    home page functions start
    public function index(){
        $layouts    = FrontLayout::where('cat_status', 1)->orderBy('serial', 'ASC')->with('category')->get();
        $sliders = \App\Models\Slider::where('status',1)->with('category')->orderBy('id','desc')->take(4)->get();
        return view('front.home.home2',[
            'layouts'       => $layouts,
            'sliders'       => $sliders,
        ]);
    }
    public function getHomePageProducts ()
    {
        $layouts    = FrontLayout::where('cat_status', 1)->orderBy('serial', 'ASC')->with('category')->get();
        return json_encode($layouts);
    }
    public function getHomeProductsController ()
    {
        $layouts    = FrontLayout::where('cat_status', 1)->orderBy('serial', 'ASC')->with('category')->get();
        foreach ($layouts as $layout)
        {
            $subCategories[]    = SubCategory::where('category_id', $layout->category->id)->with('products')->get();
        }
        $html   = '';
//        $html   = (string)\View::make('front.home.include-home-products', $layouts);
//        return view('front.home.include-home-products')->with(compact('layouts'))->render();
        return view('front.home.include-home-products')->with(compact('layouts'));
        return json_encode($html);
    }
    public function getHomeProductsByCategory($catId)
    {
        $products   = Product::where('category_id', $catId)->where('status', 1)->orderBy('id','DESC')->get();
        return json_encode($products);
    }
    public function getHomeProductsBySubCategory($catId)
    {
        $subCategories  =   \App\Models\SubCategory::where('category_id',$catId)->where('status', 1)->orderBy('id','desc')->take(5)->get();
        return json_encode($subCategories);
    }
    public function getHomePageProductsBySubCategory($subCatId)
    {
        $products = \App\Models\Product::where('sub_category_id',$subCatId)->where('status',1)->orderBy('id','desc')->get();
        return json_encode($products);
    }
    public function getAdsData($type,$amount,$catId)
    {
        if ($type == 'catwise')
        {
            $ads    = Banner::where('category_id', $catId)->orderBy('id','DESC')->take($amount)->get();
        } elseif ($type == 'random')
        {
            $getads    = Banner::orderBy('id','DESC')->get();
            if (count($getads) > $amount) {
                $ads    = $getads->random($amount);
            } else {
                $ads    = $getads;
            }
        }
        return json_encode($ads);
    }
    public function getExploreSales()
    {
        $products   = \App\Models\Product::where('status', 1)->where('sell_count','!=',null)->select('id','name','slug','sell_price','brand_id','image','regular_price')->take(12)->orderBy('sell_count', 'DESC')->get();
        return json_encode($products);
    }
//    home page functions end



    public function colorProduct($id){
        $productId    =   ProductColor::where('color_id',$id)->select('product_id')->paginate(12);

        if(count($productId)>0){
            $products        =   Product::find($productId);
            foreach ($products as $product){
                $subCategory = SubCategory::where('id',$product->sub_category_id)->first();
            }
            return view('front.category.category-product',[
                'products'      =>  $products,
                'subCategory'   =>  $subCategory,
                'pagination'   =>  $productId,
            ]);

        } else {
           return view('front.category.category-product');
        }

    }


     public function bestSell(){
        $products = Product::where('status',1)->orderBy('sell_count', 'DESC')->take(16)->get();
//        $data = [];
//        foreach ($products as $product){
//            if($product->sell_count >= 2){
//                $data[] = $product;
//            }
//        }
//       return view('front.product.best-selling',['data'=>$data]);
       return view('front.product.best-selling',['data'=>$products]);
     }

     public function offerzProdcut(){
        $products   =   Product::where('status',1)->latest('id')->get();
        $data       =   [];
        foreach ($products as $product){
            if($product->discount){
                $data[] = $product;
            }
        }
      return view('front.product.offers-product',['data'=>$data]);
     }

    public function priceFiltering (Request $request)
    {
       $products   = Product::orderBy('sell_price','asc')->whereBetween('sell_price',[$request->minPrice, $request->maxPrice])->paginate(12);
        if(count($products)>0){
            foreach ($products as $product){
                $subCategory = SubCategory::where('id',$product->sub_category_id)->first();
            }
            return view('front.category.category-product', [
                'products'      => $products,
                'subCategory'   =>  $subCategory,
                'priceFiltering' => $products,
            ]);
        }else{
            return view('front.category.category-product');
        }
    }

    public function productShorting ($value)
    {
        if ($value == 'low-to-high'){
            $products   = Product::orderBy('sell_price', 'ASC')->paginate(12);
            foreach ($products as $product){
                $subCategory = SubCategory::where('id',$product->sub_category_id)->first();
            }

        } elseif ($value == 'high-to-low'){
            $products   = Product::orderBy('sell_price', 'DESC')->paginate(12);
            foreach ($products as $product){
                $subCategory = SubCategory::where('id',$product->sub_category_id)->first();
            }
        }
        return view('front.category.category-product', [
            'products'      => $products,
            'subCategory'   =>  $subCategory,
        ]);
    }

    public function productDetails($slug){
        $product            =   Product::where('slug', $slug)->first();
        $subImages          =   SubImage::where('product_id',$product->id)->orderBy('id','desc')->get();
        $relatedProducts    =   Product::where('category_id',$product->category_id)->orderBy('category_id','desc')->get();
        $comments           =   ProductReview::orderBy('id', 'DESC')->where('status', 1)->take(10)->get();
        $subComments        =   ProductSubReview::orderBy('id', 'ASC')->get();
        return view('front.product.product-details',[
            'product'           =>$product,
            'subImages'         =>$subImages,
            'relatedProducts'   =>$relatedProducts,
            'comments'          => $comments,
            'subComments'       => $subComments,
            'productSlug'       => $slug,
        ]);
    }
    public function getPrice($sizeId){
       return json_encode($sizeId);
    }
    public function searchProduct($name){
        $products = Product::where('name','LIKE',"% $name%")->orderBy('id','desc')->select('id','name','slug','image','sub_category_id','sub_category_slug')->take(10)->get();
        return json_encode($products);
    }
    public function getProduct($id){
        $subCategory    =   SubCategory::find($id);
        $products       =   Product::where('sub_category_id',$id)->orderBy('id','desc')->paginate(12);

        return view('front.category.category-product',['products'=>$products,'subCategory'=>$subCategory]);
    }
    public function getSearchProduct(Request $request){
        $search            =  $request->search;
        $products          =  Product::where('name','LIKE','%'. $search .'%')->orderBY('id','desc')->get();
        $subCategory       = '' ;

        // for seo perpose
        $count  = count($products);

        foreach ($products as $product){
            $subCategory = SubCategory::where('id',$product->sub_category_id)->first();
        }
        return view('front.product.search-product',['products'=>$products,'subCategory'=>$subCategory,'count'=>$count,'request'=>$request]);

    }



}
