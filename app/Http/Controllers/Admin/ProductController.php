<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductSize;
use App\Models\Purchase;
use App\Models\Size;
use App\Models\SubCategory;
use App\Models\SubImage;
use App\Models\Supplier;
use App\Models\Unit;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;

class ProductController extends Controller
{
    public function addProduct(){
        return view('admin.product.add-product',[
            'categories'        =>  Category::latest('id')->get(),
            'sub_categories'    =>  SubCategory::latest('id')->get(),
            'brands'            =>  Brand::latest('id')->get(),
            'colors'            =>  Color::latest('id')->get(),
            'sizes'             =>  Size::latest('id')->get(),
            'units'             =>  Unit::latest('id')->get(),
        ]);
    }
    public function newProduct(Request $request){
        Product::checkProductValidation($request);
        Product::productBasicInfo($request);
        return redirect()->back()->with('message','Product Info Save Successfully !!');
    }
    public function manageProduct(){
        $products = Product::with('category:id,name','subCategory:id,sub_category_name','brand:id,name')->latest('id')->get();
        return view('admin.product.manage-product',['products'=>$products]);
    }
    public function inactiveProduct($id){
        Product::inactiveStatus($id);;
        return redirect()->back()->with('message','Product Info Inactive Successfully !!');
    }
    public function activeProduct($id){
        Product::activeStatus($id);;
        return redirect()->back()->with('message','Product Info Active Successfully !!');
    }
    public function editProduct($id){
        $product            =   Product::find($id);
        $categories         =   Category::orderBy('id','desc')->get();
        $sub_categories     =   SubCategory::orderBy('id','desc')->get();
        $brands             =   Brand::orderBy('id','desc')->get();
        $subImages          =   SubImage::where('product_id',$id)->get();
        $productColors      =   ProductColor::where('product_id',$id)->get();
        $productSizes       =   ProductSize::where('product_id',$id)->get();
        $colors             =   Color::orderBy('id','desc')->get();
        $sizes              =   Size::orderBy('id','desc')->get();
        $units              =   Unit::orderBy('id','desc')->get();

        $editColor          =   [];
        foreach ($productColors as $productColor){
            array_push($editColor,$productColor->color_id);
        }
        $editSize           =   [];
        foreach ($productSizes as $productSize){
            array_push($editSize,$productSize->size_id);
        }
        return view('admin.product.edit-product',[
            'product'           =>  $product,
            'categories'        =>  $categories,
            'sub_categories'    =>  $sub_categories,
            'brands'            =>  $brands,
            'subImages'         =>  $subImages,
            'productColors'     =>  $productColors,
            'productSizes'      =>  $productSizes,
            'colors'            =>  $colors,
            'sizes'             =>  $sizes,
            'units'             =>  $units,
            'editColor'         =>  $editColor,
            'editSize'          =>  $editSize
        ]);
    }
    public function updateProduct(Request $request){
        Product::updateProductValidation($request);
        Product::updateProductInfo($request);
        return redirect('/manage-product')->with('message','Product Info Update Successfully !!');
    }
    public function deleteProduct($id){
        Product::deleteProductInfo($id);
        return redirect()->back()->with('message','Product Info Delete Successfully ??');
    }

    public function getCatSub($catId){
        $subCategories  =   SubCategory::where('category_id',$catId)->latest('id')->get();
        return json_encode($subCategories);
    }
    public function getSubBrand($subId){
        $subCategory    =   SubCategory::findOrFail($subId);
        $brands         =   Brand::where('category_id',$subCategory->category_id)->latest('id')->get();
        return json_encode($brands);
    }

    public function getProductCode($subId){
         for ($i = 0; $i < 10; ++$i) {
            $code = 'BB-'.$subId.mt_rand(0, 99999);
            $existCode = Product::where('code',$code)->exists();
            if (!$existCode) {
                return json_encode($code);
            } else {
                $codex = 'BB-'.($subId).( mt_rand(0, 99999)+1);
                return json_encode($codex);
            }
        }

    }

}
