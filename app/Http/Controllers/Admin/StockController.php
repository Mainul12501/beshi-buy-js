<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
use App\Models\ManageStock;
use App\Models\OrderDetail;
use App\Models\Product;
use App\Models\ProductColor;
use App\Models\ProductSize;
use App\Models\Purchase;
use App\Models\Size;
use App\Models\Stock;
use App\Models\StockDetail;
use App\Models\SubCategory;
use App\Models\Supplier;
use App\Models\Unit;
use Illuminate\Http\Request;

class StockController extends Controller
{
    public function stockList(){
        $stocks     =   Stock::latest('id')->get();
        return view('admin.stock.stock-list',['stocks'=>$stocks]);
    }

    /*public function dataSearch(Request  $request){
        $stocks =  Stock::latest('id')->get();
        return view('admin.stock.stock-list',['stocks'=>$stocks]);

    }*/

    public function allStockInfo($id,$col,$size){

        if ($col != null && $size != null)
        {
            $stockInfo  = Stock::where('product_id',$id)->where('color_id', $col)->where('size_id', $size)->latest('id')->get();
            $product    = Product::where('id',$id)->select(['id','name','code'])->first();
            $size       = Size::where('id',$size)->select(['id','name'])->first();
            $color      = Color::where('id',$col)->select(['id','name'])->first();
            foreach ($stockInfo as $supplier)
            {
                $sup[] = Supplier::findOrFail($supplier->supplier_id);
            }
            $result = [
                'info'  => $stockInfo,
                'product' => $product,
                'size' => $size,
                'color' => $color,
                'supplier' => $sup,
            ];
            return json_encode($result);

        } elseif ($col == null)
        {
            $stockInfo  = Stock::where('product_id',$id)->where('size_id', $size)->get();
            $product    = Product::where('id',$id)->select(['id','name','code'])->first();
            $size       = Size::where('id',$size)->select(['id','name'])->first();
            $result = [
                'info'  => $stockInfo,
                'product' => $product,
                'size' => $size,
            ];
            return json_encode($result);

        } elseif ($size == null) {
            $stockInfo  = Stock::where('product_id',$id)->where('color_id', $col)->get();
            $product    = Product::where('id',$id)->select(['id','name','code'])->first();
            $color      = Color::where('id',$col)->select(['id','name'])->first();
            $result = [
                'info'  => $stockInfo,
                'product' => $product,
                'color' => $color,
            ];
            return json_encode($result);
        } else {
            $warning = 'Stock Info Not Found !!.';
            return json_encode($warning);
        }

    }


}

