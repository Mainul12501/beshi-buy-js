<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use App\Models\Purchase;
use Faker\Provider\DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class SalesController extends Controller
{
    public function salesList(){
        $orders =   Order::where('order_status','Complete')->latest('id')->get();
        return view('admin.sales.sales-list',['orders'=>$orders]);
    }
    public function Search(Request $request){
        $from    =   Carbon::createFromFormat('Y-m-d', $request->from)->toDateString();
        $to      =   Carbon::createFromFormat('Y-m-d', $request->to)->toDateString();
        $orders  =   Order::where('order_status','Complete')->whereBetween('updated_at',[$from,$to])->get();
        return view('admin.sales.sales-list',['orders'=>$orders]);
    }
}

