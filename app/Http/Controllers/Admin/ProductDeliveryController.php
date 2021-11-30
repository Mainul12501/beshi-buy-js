<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\DeliveryItemCodes;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Product;
use App\Models\ProductDelivery;
use App\Models\ProductQRcode;
use App\Models\Shipping;
use App\Models\Supplier;
use Illuminate\Http\Request;

class ProductDeliveryController extends Controller
{
    //
    public function manage ()
    {
        return view('admin.product-delivery.manage');
    }

    public function add ($id)
    {
        $order  = Order::findOrFail($id);
        $shipping   = Shipping::where('id', $order->shipping_id)->select('id','ship_name','ship_email','ship_phone','ship_address')->first();
        $orderDetails   = OrderDetail::where('order_id', $order->id)->select('id','order_id','product_name','product_size','product_color','product_quantity','sell_date')->get();
        return view('admin.product-delivery.add', [
            'order' => $order,
            'orderDetails'  => $orderDetails,
            'shipping' => $shipping,
        ]);
    }
    protected function customerProductDeliveryInfo($productDelivery, $request)
    {
        $productDelivery->order_id          = $request->order_id;
        $productDelivery->order_details_id          = $request->order_details_id;
        $productDelivery->customer_name          = $request->customer_name;
        $productDelivery->customer_email          = $request->customer_email;
        $productDelivery->customer_phone          = $request->customer_phone;
        $productDelivery->customer_address          = $request->customer_address;
    }
    protected function otherProductDeliveryInfo($productDelivery, $request)
    {
        $productDelivery->product_name          = $request->product_name;
        $productDelivery->product_size          = $request->product_size;
        $productDelivery->product_color          = $request->product_color;
        $productDelivery->product_quantity          = $request->product_quantity;
        $productDelivery->supplier_id          = $request->supplier_id;
        $productDelivery->delivery_vendor_id          = $request->delivery_vendor_id;
        $productDelivery->report          = $request->report;
        $productDelivery->status          = $request->status;

    }
    protected function productDeliveryItemCode ($request, $productDelivery)
    {
        foreach ($request->item_code as $code)
        {
            $deliveryItemCode  = new DeliveryItemCodes();
            $deliveryItemCode->order_id     = $productDelivery->order_id;
            $deliveryItemCode->order_details_id     = $productDelivery->order_details_id;
            $deliveryItemCode->product_delivery_id     = $productDelivery->id;
            $deliveryItemCode->item_code     = $code;
            $deliveryItemCode->save();
        }
    }
    protected function productDeliveryValidation ($request)
    {
        $this->validate($request, [
            '*'=> 'required',
        ]);
    }
    public function new (Request $request)
    {
        $this->productDeliveryValidation($request);
        $productDelivery    = new ProductDelivery();
        $this->customerProductDeliveryInfo($productDelivery, $request);
        $this->otherProductDeliveryInfo($productDelivery, $request);
        $productDelivery->save();
        $this->productDeliveryItemCode($request, $productDelivery);

        return redirect('/product-delivery/manage')->with('message', 'Data Saved Successfully');

    }

    public function getOrderData(Request $request)
    {
        $orderDetails   = OrderDetail::findOrFail($request->order_details_id);
        $order  = Order::where('id', $orderDetails->order_id)->select('id','shipping_id')->first();
        $shipping   = Shipping::where('id', $order->shipping_id)->select('id','ship_name','ship_email','ship_phone','ship_address')->first();
        $product    = Product::where('id', $orderDetails->product_id)->select('id','code')->first();
        $getSupplierIds = ProductQRcode::where('product_id', $orderDetails->product_id)->where('color_name', $orderDetails->product_color)->where('size_name', $orderDetails->product_size)->select('supplier_id','code')->get();
        $supplierIds  = $getSupplierIds->unique('supplier_id');
        foreach ($getSupplierIds as $code)
        {
            $existCode  = DeliveryItemCodes::where('item_code',$code->code)->exists();
            if (!$existCode)
            {
                $codes[]    = $code->code;
            }
        }
        foreach ($supplierIds as $supplierId)
        {
            $suppliers[]    = Supplier::where('id', $supplierId->supplier_id)->select('id','name')->first();
        }
        $result     = [
            'orderDetails'  => $orderDetails,
            'shipping'      => $shipping,
            'product'       => $product,
            'suppliers'     => $suppliers,
            'codes'         => $codes,
        ];
        return json_encode($result);
        
       
    }

}
