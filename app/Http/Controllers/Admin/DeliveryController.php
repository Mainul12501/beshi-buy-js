<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Delivery;
use App\Models\District;
use App\Models\Product;
use Illuminate\Http\Request;
use DB;

class DeliveryController extends Controller
{
    public function manageDelivery(){
        $deliveries = Delivery::orderBy('id','desc')->get();
       return view('admin.delivery.charge-list',['deliveries'=>$deliveries]);
    }

    public function editDelivery($id){
        $delivery   =   Delivery::find($id);
        $districts  =   District::get();
        $products   =   Product::orderBy('id','desc')->get();
        return view('admin.delivery.edit-charge',[
            'delivery'  => $delivery,
            'districts' =>$districts,
            'products'  =>$products
        ]);
    }
    public function updateDelivery(Request $request){
        Delivery::updateDeliveryInfo($request);
        return redirect('/charge-list')->with('message','Delivery Info Updated Successfully !!');
    }
    public function deleteDelivery($id){
        $delivery   =   Delivery::find($id);
        $delivery->delete();
        return redirect()->back()->with('message','Delivery Info Delete Successfully !!');
    }
}
