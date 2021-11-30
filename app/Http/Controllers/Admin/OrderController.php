<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Payment;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Customer;
use App\Models\Shipping;
use App\Models\District;
use App\Models\Product;
use App\Models\Color;
use App\Models\Supplier;
use App\Models\Size;
use PDF;

class OrderController extends Controller
{
    public function getOrderNumber()
    {
        $random = substr(mt_rand(),0,8);
        $orderNumber = strtoupper('bb').$random;
        $existNumber    = \App\Models\Order::where('order_id', $orderNumber)->first();
        if ($existNumber)
        {
            $this->getOrderNumber();
        }
        return $orderNumber;
    }
    public function addOrder ()
    {
        $products   = Product::where('status', 1)->select('id','name')->get();
        $districts  = District::all();
        $colors     = Color::where('status', 1)->select('id','name')->get();
        $sizes     = Size::where('status', 1)->select('id','name')->get();
        $suppliers  =   Supplier::where('status',1)->select('id','name')->get();
        return view('admin.order.add-order', [
            'products'      => $products,
            'districts'     => $districts,
            'colors'        => $colors,
            'sizes'         => $sizes,
            'suppliers'     => $suppliers
        ]);
    }
    public function getPrice ($id)
    {
        $product    = Product::where('id', $id)->select('retail_price')->first();
        return json_encode($product);
    }
    public function manageOrder(){

        return view('admin.order.manage-order',['orders'=>Order::orderBy('id','desc')->get()]);
    }
    protected function customOrderCustomer ($customer,$request)
    {
        $customer->name    = $request->name;
        $customer->email    = $request->email;
        $customer->phone    = $request->phone;
        $customer->district_id    = $request->district_id;
        $customer->address    = $request->address;
        $customer->save();
        return $customer;
    }
    protected function customerSkull ($request)
    {
        if (Customer::where('phone', $request->phone)->exists())
        {
            $existCustomer  = Customer::where('phone', $request->phone)->first();
            $customer   = $this->customOrderCustomer($existCustomer, $request);
            return $customer;
        } else {
            $newCustomer    = new Customer();
            $customer   = $this->customOrderCustomer($newCustomer, $request);
            return $customer;
        }
    }
    protected function customOrderShipping ($shipping, $request, $customer)
    {
        $shipping->customer_id          = $customer->id;
        $shipping->ship_district_id     = $customer->district_id;
        $shipping->ship_name            = $request->name;
        $shipping->ship_email           = $request->email;
        $shipping->ship_phone           = $request->phone;
        $shipping->ship_address         = $request->address;
        $shipping->save();
        return $shipping;
    }
    protected function customPayment ($order)
    {
        $payment    = new Payment();
        $payment->order_id      = $order->id;
        $payment->payment_type  = $order->vendor;
        $payment->save();
        return $payment;
    }

    // protected function customOrder ($customer, $shipping, $request)
    // {
    //     $order  = new Order();
    //     $order->customer_id     = $customer->id;
    //     $order->shipping_id     = $shipping->id;
    //     $order->paid_amount     = $request->paid_amount;
    //     $order->order_total     = $request->paid_amount;
    //     $order->vendor     = $request->vendor;
    //     $order->ordered_from     = $request->ordered_from;
    //     $order->retail_price     = $request->retail_price;
    //     if ($order->vendor == 'bkash')
    //     {
    //         $order->bkash_phone = $request->vendor_phone;
    //         $order->bkash_txt_id = $request->txt_id;
    //     } elseif ($order->vendor == 'rocket')
    //     {
    //         $order->rocket_phone = $request->vendor_phone;
    //         $order->rocket_txt_id = $request->txt_id;
    //     } elseif ($order->vendor == 'nagad')
    //     {
    //         $order->nagad_phone = $request->vendor_phone;
    //         $order->nagad_txt_id = $request->txt_id;
    //     }
    //     $order->save();
    //     return $order;
    // }
    // public function newOrder (Request $request)
    // {

    //     if (Shipping::where('ship_phone', $request->phone)->exists())
    //     {
    //         $customer   = $this->customerSkull($request);
    //         $existShipping  = Shipping::where('ship_email', $request->email)->first();
    //         $shipping   = $this->customOrderShipping($existShipping, $request, $customer);
    //         $order  = $this->customOrder($customer, $shipping, $request);
    //         $payment    = $this->customPayment($order);
    //     } else {
    //         $customer   = $this->customerSkull($request);
    //         $newShipping    = new Shipping();
    //         $shipping   = $this->customOrderShipping($newShipping, $request, $customer);
    //         $order  = $this->customOrder($customer, $shipping, $request);
    //         $payment    = $this->customPayment($order);
    //     }
    //     return redirect()->back()->with('message', 'Order submitted successfully.');
    // }

    protected function customOrder ($customer, $shipping, $request)
    {
        $order  = new Order();
        $order->order_code    = $this->getOrderNumber();

        $order->customer_id     = $customer->id;
        $order->shipping_id     = $shipping->id;
        if ($request->vendor == 'cash')
        {
            $order->paid_amount     = 0;
        } else {
            $order->paid_amount     = $request->paid_amount;
        }
        $order->order_total     = $request->order_total;
        $order->vendor          = $request->vendor;
        $order->ordered_from    = $request->ordered_from;
        $order->retail_price    = $request->retail_price;
        if ($order->vendor == 'bkash')
        {
            $order->bkash_phone = $request->vendor_phone;
            $order->bkash_txt_id = $request->txt_id;
        } elseif ($order->vendor == 'rocket')
        {
            $order->rocket_phone = $request->vendor_phone;
            $order->rocket_txt_id = $request->txt_id;
        } elseif ($order->vendor == 'nagad')
        {
            $order->nagad_phone = $request->vendor_phone;
            $order->nagad_txt_id = $request->txt_id;
        }
        $order->save();
        return $order;
    }
    protected function customOrderNoShippingInfo ($request)
    {
        $order  = new Order();
        $order->order_code    = $this->getOrderNumber();

        if ($request->vendor == 'cash')
        {
            $order->paid_amount     = 00;
        } else {
            $order->paid_amount     = $request->paid_amount;
        }
        $order->order_total     = $request->order_total;
        $order->vendor          = $request->vendor;
        $order->ordered_from    = $request->ordered_from;
        $order->retail_price    = $request->retail_price;
        if ($order->vendor == 'bkash')
        {
            $order->bkash_phone     = $request->vendor_phone;
            $order->bkash_txt_id    = $request->txt_id;
        } elseif ($order->vendor == 'rocket')
        {
            $order->rocket_phone    = $request->vendor_phone;
            $order->rocket_txt_id   = $request->txt_id;
        } elseif ($order->vendor == 'nagad')
        {
            $order->nagad_phone = $request->vendor_phone;
            $order->nagad_txt_id = $request->txt_id;
        }
//        bypass error
        $order->customer_id  = 00;
        $order->shipping_id  = 00;
        $order->save();
        return $order;
    }
    protected function customOrderDetails ($order, $request)
    {
        $orderDetails               = new OrderDetail();
        $product                    = Product::find($request->product_id);
        $orderDetails->order_id     = $order->id;

        $orderDetails->order_code   = $order->order_code;

        $orderDetails->sell_date    = $request->sell_date;
        if ($request->custom_product)
        {
            $orderDetails->product_name     = $request->custom_product;
            $orderDetails->product_id       = 00;
            $orderDetails->product_size     = 00;
            $orderDetails->product_color    = 00;
        } else {
            $orderDetails->product_id       = $request->product_id;
            $orderDetails->product_name     = $product->name;
            $orderDetails->product_size     = $request->product_size;
            $orderDetails->product_color    = $request->product_color;
        }

        $orderDetails->total_amount         = $request->order_total;
        $orderDetails->supplier_id          = $request->supplier_id;
        $orderDetails->product_quantity     = $request->product_quantity;

        $orderDetails->discount             = $request->discount;
        $orderDetails->sell_person          = $request->sell_person;
        $orderDetails->delivery_charge      = $request->delivery_charge;
        $orderDetails->payment_collect      = $request->payment_collect;
        $orderDetails->save();
        return $orderDetails;
    }
    protected function validateNewOrder ($request)
    {
        if ($request->ship_phone != null)
        {
            $this->validate($request, [
                'name'          => 'required',
                'phone'         => 'required',
                'district_id'   => 'required',
                'address'       => 'required',

            ]);
        }
        if ($request->product_id == null)
        {
            $this->validate($request, [
                'custom_product' => 'required',
            ]);
        }
        if ($request->vendor != 'cash')
        {
            $this->validate($request, [
                'vendor_phone'  => 'required',
                'txt_id'        => 'required',
            ]);

        }
        $this->validate($request, [
                'order_total'   => 'required',
                'sell_date'     => 'required',
            ]);
    }
    public function newOrder (Request $request)
    {

        $this->validateNewOrder($request);
        if ($request->phone != null)
        {
            if (Shipping::where('ship_phone', $request->phone)->exists())
            {
                $customer       = $this->customerSkull($request);
                $existShipping  = Shipping::where('ship_email', $request->email)->first();
                $shipping       = $this->customOrderShipping($existShipping, $request, $customer);
                $order          = $this->customOrder($customer, $shipping, $request);
                $payment        = $this->customPayment($order);
                $orderDetails   = $this->customOrderDetails($order, $request);
            } else {
                $customer       = $this->customerSkull($request);
                $newShipping    = new Shipping();
                $shipping       = $this->customOrderShipping($newShipping, $request, $customer);
                $order          = $this->customOrder($customer, $shipping, $request);
                $payment        = $this->customPayment($order);
                $orderDetails   = $this->customOrderDetails($order, $request);
            }

        } else {

            $order          = $this->customOrderNoShippingInfo($request);
            $payment        = $this->customPayment($order);
            $orderDetails   = $this->customOrderDetails($order, $request);
        }


        return redirect()->back()->with('message', 'Order submitted successfully.');
    }

    public function orderDetail($id){
        $order          =   Order::find($id);
        $orderDetails   =   OrderDetail::where('order_id',$id)->get();
        $customer       =   Customer::find($order->customer_id);
        $shipping       =   Shipping::find($order->shipping_id);
        if($shipping){
            $shipping   =   Shipping::find($order->shipping_id);
        }else{
            $customer   =   Customer::find($order->customer_id);
        }
        return view('admin.order.order-detail',[
            'order'        =>$order,
            'orderDetails' =>$orderDetails,
            'customer'     =>$customer,
            'shipping'     =>$shipping

            ]);
    }

    public function downloadInvoice($id){
        $order          =   Order::find($id);
        $orderDetails   =   OrderDetail::where('order_id',$id)->get();
        $customer       =   Customer::find($order->customer_id);
        $shipping       =   Shipping::find($order->shipping_id);
        $payment        =   Payment::where('order_id', $id)->first();
        $pdf            =   PDF::loadView('admin.order.download-invoice',[
            'order'             =>$order,
            'orderDetails'      =>$orderDetails,
            'customer'          =>$customer,
            'shipping'          =>$shipping,
            'payment'           =>$payment,
        ]);
        return $pdf->stream('000'.$order->id.'.pdf');
    }

    public function editOrder($id){
        return view('admin.order.edit-order', [
            'order' => Order::find($id),
            'payment' => Payment::where('order_id', $id)->first(),
        ]);
    }
    public function complete(Request $request){
        $order = Order::find($request->id);

        $order->order_status    = $request->order_status;
        $order->delivery_status = $request->delivery_status;
        $order->paid_amount     = str_replace(",","", $request->paid_amount);
        $order->save();

        $payment = Payment::where('order_id', $request->id)->first();
        $payment->payment_status = $request->payment_status;
        $payment->save();

        $orderDetails           =   OrderDetail::where('order_id',$order->id)->get();
        foreach ($orderDetails as $orderDetail){
            $product            = Product::findOrFail($orderDetail->product_id);
            $newSellQty         = $product->sell_qty+$orderDetail->product_quantity;
            $product->sell_qty  = $newSellQty;
            $product->save();
        }

        if($order->order_status == 'Complete' && $order->delivery_status == 'Complete' && $payment->payment_status == 'Complete' ){
            return redirect('/order/manage-order')->with('message', 'Order, Payment & Delivery status successfully  Done . !!');
        }elseif ($order->order_status == 'Canceled' && $order->delivery_status == 'Canceled' && $payment->payment_status == 'Canceled'){
            return redirect('/order/manage-order')->with('message', 'Order, Payment & Delivery status Cancelled . !!');
        }
        return redirect('/order/manage-order')->with('message','Order, Payment & Delivery status Pending . !! ');
    }


}
