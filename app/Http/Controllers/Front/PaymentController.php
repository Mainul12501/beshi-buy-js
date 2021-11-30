<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Discount;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\Payment;
use App\Models\Product;
use App\Models\Shipping;
use Illuminate\Http\Request;
use Cart;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Mail;

class PaymentController extends Controller
{
    public function confirmOrder(Request $request){
        //        old place order code
//        $this->oldOrderCode($request);

        $cartItems  =   Cart::getContent();
        if (count($cartItems)>0)
        {
            $this->validate($request,[
                'payment_type'       => 'required',
            ]);
            $orderCode = $this->generateOrderCode();

            $reduceAmount   = 0; // default coupon amount
            $couponCode   = ''; // default coupon code
            if ((Session::has('coupon_code')) && (Session::has('coupon_amount')))
            {
                $couponProduct  = Discount::where('coupon_code', Session::get('coupon_code'))->first();
                if ($couponProduct)
                {
                    foreach ($cartItems as $item)
                    {
                        if ($couponProduct->product_id == $item->id)
                        {
                            $reduceAmount   = $couponProduct->reduce_amount;
                            $couponCode = $couponProduct->coupon_code;
                        }
                    }
                }
            }
            $paymentType    =   $request->payment_type;
            //        input data on order table
            if($paymentType == 'cash'){
                $order  = $this->cash($request, $orderCode, $reduceAmount, $couponCode);
            }
            elseif ($paymentType == 'bkash'){
                $order  = $this->bkash($request, $orderCode, $reduceAmount, $couponCode);
//            return view('front.payment.bkash');
            }
            elseif ($paymentType == 'rocket'){
                $order  = $this->rocket($request, $orderCode, $reduceAmount, $couponCode);
//            return view('front.payment.ssl');
            }
            elseif ($paymentType == 'nagad'){
                $order  = $this->nagad($request, $orderCode, $reduceAmount, $couponCode);
//            return view('front.payment.paypal');
            }

            //        input data on order details table
            OrderDetail::addOrderDetails($cartItems, $order);

            //        input data on payment table
            Payment::addPapyment($order, $paymentType);

            foreach ($cartItems as $item)
            {
                $product                =   Product::find($item->id);
                $newSellCount           =   $product->sell_count;
                $product->sell_count    =   $newSellCount+1;
                $product->save();
            }
            Session::put('order_id', $order->id);
            Cart::clear();
            if (Session::has('coupon_code'))
            {
                Session::forget('coupon_code');
            }
            if (Session::has('coupon_amount'))
            {
                Session::forget('coupon_amount');
            }

            return redirect('/order/order-complete');

        } else {
            return redirect('/view-cart');
        }

    }
    public function completeOrder(){
        $order  = Order::where('id', Session::get('order_id'))->first();

        $customer   = Shipping::where('customer_id', $order->customer_id)->first();
//        $shipping   = Shipping::where('id', $order->shipping_id)->first();
        $orderDetails   = OrderDetail::where('order_id', $order->id)->get();;
        $data   = [
            'order'             =>$order,
            'orderDetails'      =>$orderDetails,
            'customer'          =>$customer,
//            'shipping'          =>$shipping,
        ];

     if (isset($customer->email))
        {
            Mail::send('admin.order.download-invoice', $data, function ($message) use ($data){
                $message->to($data['customer']->email, 'Beshibuy')->subject('Beshibuy Order Summary');
            });

        } elseif (isset(Auth::user()->email))
        {
            Mail::send('admin.order.download-invoice', $data, function ($message) use ($data){
                $message->to(Auth::user()->email, 'Beshibuy')->subject('Beshibuy Order Summary');
            });

        }
        return view('front.payment.complete-order');
    }

    public function generateOrderCode()
    {
        $newCode    = 'BB'.random_int(10000000,99999999);
        $existCode  = Order::where('order_code', $newCode)->first();
        if ($existCode)
        {
            $this->generateOrderCode();
        }
        return $newCode;
    }

    //    payment vendors [cash]
    public function cash($request,$orderCode, $reduceAmount, $couponCode)
    {

        $order  =   new Order();
        $order->customer_id = Auth::id();
        $order->shipping_id = $request->ship_id;
//            $order->order_total = str_replace(",","", Session::get('orderTotal'));
        $order->order_total = str_replace(",","", $request->cash_target_amount)-$reduceAmount;
        $order->vendor      = $request->payment_type;
        $order->order_code   = $orderCode;
        $order->reduce_amount   = $reduceAmount;
        $order->coupon_code   = $couponCode;
        $order->save();

        return $order;
    }
    public function bkash($request, $orderCode, $reduceAmount, $couponCode)
    {
        $this->validate($request,[
            'bkash_phone'     =>'required|regex:/(01)[0-9]{9}/|max:11',
            'bkash_txt_id'     =>'required',
        ]);
        $order  =   new Order();
        $order->customer_id = Auth::id();
        $order->shipping_id = $request->ship_id;
//            $order->order_total = str_replace(",","", Session::get('orderTotal'));
        $order->order_total = str_replace(",","", $request->bkash_target_amount)-$reduceAmount;
        $order->vendor      = $request->payment_type;
        $order->bkash_phone      = $request->bkash_phone;
        $order->bkash_txt_id      = $request->bkash_txt_id;
        $order->order_code   = $orderCode;
        $order->reduce_amount   = $reduceAmount;
        $order->coupon_code   = $couponCode;
        $order->save();

        return $order;
    }
    public function rocket($request, $orderCode, $reduceAmount, $couponCode)
    {
        $this->validate($request,[
            'rocket_phone'     =>'required|regex:/(01)[0-9]{9}/|max:11',
            'rocket_txt_id'     =>'required',
        ]);
        $order  =   new Order();
        $order->customer_id = Auth::id();
        $order->shipping_id = $request->ship_id;
//            $order->order_total = str_replace(",","", Session::get('orderTotal'));
        $order->order_total = str_replace(",","", $request->rocket_target_amount)- $reduceAmount;
        $order->vendor      = $request->payment_type;
        $order->rocket_phone      = $request->rocket_phone;
        $order->rocket_txt_id      = $request->rocket_txt_id;
        $order->order_code   = $orderCode;
        $order->reduce_amount   = $reduceAmount;
        $order->coupon_code   = $couponCode;
        $order->save();

        return $order;
    }
    public function nagad($request, $orderCode, $reduceAmount, $couponCode)
    {
        $this->validate($request,[
            'nagad_phone'     =>'required|regex:/(01)[0-9]{9}/|max:11',
            'nagad_txt_id'     =>'required',
        ]);
        $order  =   new Order();
        $order->customer_id = Auth::id();
        $order->shipping_id = $request->ship_id;
//            $order->order_total = str_replace(",","", Session::get('orderTotal'));
        $order->order_total = str_replace(",","", $request->nagad_target_amount)- $reduceAmount;
        $order->vendor      = $request->payment_type;
        $order->nagad_phone      = $request->nagad_phone;
        $order->nagad_txt_id      = $request->nagad_txt_id;
        $order->order_code   = $orderCode;
        $order->reduce_amount   = $reduceAmount;
        $order->coupon_code   = $couponCode;
        $order->save();

        return $order;
    }

    public function oldOrderCode ($request)
    {
        $paymentType    =   $request->payment_type;
        if($paymentType == 'cash'){

            $order  =   new Order();
            $order->customer_id = Session::get('customerId');
            $order->shipping_id = Session::get('shippingId');
            $order->order_total = str_replace(",","", Session::get('orderTotal'));
            $order->save();

            $cartItems  =   Cart::getContent();
            foreach ($cartItems as $item){
                $orderDetail                    =   new OrderDetail();
                $orderDetail->order_id          =   $order->id;
                $orderDetail->product_id        =   $item->id;
                $orderDetail->product_name      =   $item->name;
                $orderDetail->product_size      =   $item->attributes->size;
                $orderDetail->product_quantity  =   $item->quantity;
                $orderDetail->product_price     =   $item->price;
                $orderDetail->save();
            }

            $payment                    =   new Payment();
            $payment->order_id          =   $order->id;
            $payment->payment_type      =   $paymentType;
            $payment->save();

            foreach ($cartItems as $item)
            {
                $product                =   Product::find($item->id);
                $newSellCount           =   $product->sell_count;
                $product->sell_count    =   $newSellCount+1;
                $product->save();
            }


        }
        elseif ($paymentType == 'bkash'){
            return view('front.payment.bkash');
        }
        elseif ($paymentType == 'ssl'){
            return view('front.payment.ssl');
        }
        elseif ($paymentType == 'paypal'){
            return view('front.payment.paypal');
        }
    }
}
