<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
use App\Models\Delivery;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductSize;
use App\Models\Purchase;
use App\Models\PurchaseDetail;
use App\Models\Size;
use App\Models\Stock;
use App\Models\SubCategory;
use App\Models\Supplier;
use App\Models\Unit;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

/*use function GuzzleHttp\Promise\all;*/

class PurchaseController extends Controller
{
    public function addPurchase(){
        return view('admin.purchase.add-purchase',[
            'categories'        =>  Category::latest('id')->get(),
            'suppliers'         =>  Supplier::latest('id')->get(),
            'sub_categories'    =>  SubCategory::latest('id')->get(),
            'products'          =>  Product::latest('id')->get(),
            'brands'            =>  Brand::latest('id')->get(),
            'sizes'             =>  Size::latest('id')->get(),
            'colors'            =>  Color::latest('id')->get(),
            'units'             =>  Unit::latest('id')->get(),
            'deliveries'        =>  Delivery::latest('id')->get(),
        ]);
    }
    public function storePurchase(Request $request){
        Purchase::checkPurchaseValidation($request);
        Purchase::basicPurchaseInfo($request);
        return redirect()->back()->with('message','Purchase Info Save Successfully !! .');
    }
    public function mngPurchase(){
        $purchases  =   Purchase::latest('id')->get();
        return view('admin.purchase.purchase-list',['purchases'=>$purchases]);
    }
    public function editPurchase($id){
       $purchase   =   Purchase::findOrFail($id);
        return view('admin.purchase.edit-purchase',[
            'purchase'          =>  $purchase,
            'categories'        =>  Category::latest('id')->get(),
            'suppliers'         =>  Supplier::latest('id')->get(),
            'sub_categories'    =>  SubCategory::latest('id')->get(),
            'products'          =>  Product::latest('id')->get(),
            'brands'            =>  Brand::latest('id')->get(),
            'sizes'             =>  Size::latest('id')->get(),
            'colors'            =>  Color::latest('id')->get(),
            'units'             =>  Unit::latest('id')->get(),
            'deliveries'        =>  Delivery::latest('id')->get(),
        ]);
    }
    public function updatePurchase(Request $request){
        $purchase   =   Purchase::find($request->id);
        if($purchase->purchase_date != $request->purchase_date || $purchase->voucher_no != $request->voucher_no ){
            return redirect()->back()->with('message','please dont try updated .');
        }else{
            Purchase::updatePurchaseInfo($purchase,$request);
        }
        return redirect('purchase-list')->with('message','Purchase info update successfully !!');
    }

    public function search(Request $request){
        //$purchases  =   Purchase::where('purchase_date','>=',$request->from)->where('purchase_date','<=',$request->to)->get();
         $purchases = Purchase::select('*')->whereBetween('purchase_date',[$request->from,$request->to])->get();
        return view('admin.purchase.purchase-list',['purchases'=>$purchases]);
    }
    public function view($id){
        $purchases = Purchase::where('product_id',$id)->latest('id')->get();
        return view('admin.purchase.view-purchase',['purchases'=>$purchases]);
    }
    public function delete($id){
        Purchase::deletePurchaseInfo($id);
        return redirect()->back()->with('message','Purchase Info Delete Successfully ??');
    }
   /* public function getPurCat($id){
        $subCategories  = SubCategory::where('category_id',$id)->latest('id')->get();
        return json_encode($subCategories);
    }*/
   /* public function getPurSubCat($id){
        $products = Product::where('sub_category_id',$id)->select(['id','name','brand_id'])->latest('id')->get();
        $brands = [];
        foreach ($products as $product){
            $brands[] = Brand::where('id', $product->brand_id)->select(['id', 'name'])->first();
        }
        if (count($brands) >0)
        {
            $brax[]   = array_unique($brands);
        } else {
            $brax = [];
        }
        $result = [
            'products'  => $products,
            'brands'    => $brax,
        ];
        return json_encode($result);
    }*/

    public function getSizeColor($id){
        $product      = Product::findOrFail($id);
        $productSizes   = ProductSize::where('product_id',$id)->select('size_id')->get();
        $productColors  = ProductColor::where('product_id',$id)->select('color_id')->get();
        foreach ($productSizes as $productSize){
            $sizes[]  = Size::where('id',$productSize->size_id)->select(['id','name'])->first();
        }
        foreach ($productColors as $productColor){
            $colors[]  =   Color::where('id',$productColor->color_id)->select(['id','name'])->first();
        }
        $result = [
            'sizes'    =>$sizes,
            'colors'   =>$colors,
            'product'  =>$product,
        ];
        return json_encode($result);
    }

    public function checkVn($vn){
        $purchase   =   Purchase::where('voucher_no',$vn)->exists();
        if(!$purchase){
            $message = 'available this number.. !!';
        }else{
            $message = 'already exists.try another.. !!';
        }
        return json_encode($message);
    }


}
