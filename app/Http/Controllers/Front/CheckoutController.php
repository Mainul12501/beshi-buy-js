<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Delivery;
use App\Models\District;
use App\Models\Product;
use App\Models\ProductSize;
use App\Models\Shipping;
use App\Notifications\EmailNotification;
use Illuminate\Http\Request;
use Illuminate\Notifications\Notification;
use Illuminate\Support\Facades\Auth;
use Session;
use Cart;

class CheckoutController extends Controller
{
    public function checkoutProcess(Request $request){
//        $existCustomerId    = Session::get('customerId');
//        $existCustomer      = Customer::where('id', $existCustomerId)->first();
//        $subTotal           = Cart::getTotal();
////        return view('front.checkout.checkout-content',['items'=> Cart::getContent(),'existCustomer'=>$existCustomer,'districts'=>District::all()]);
//        if($subTotal>0){
//        return view('front.checkout.checkout-content',['items'=> Cart::getContent(),'existCustomer'=>$existCustomer,'districts'=>District::all()]);
//        }else{
//            return redirect('/');
//        }
        if (Auth::check())
        {
            if (Cart::getTotal() > 0)
            {
                $shippingAddress   = Shipping::where('customer_id', Auth::id())->get();
                $subTotal            =  Cart::getTotal();

                return view('front.payment.payment-info', [
                    'xtotal'    => $subTotal,
                    'shipping'  => $shippingAddress,
                    'items' => Cart::getContent(),
//                    'deliveryCharge'=>'50', // temp value
                ]);
            } else {
                return  redirect(route('view-cart'));
            }

        } else {
//            return redirect()->route('view-cart')->with('loginAlert', 'show login alert');
            return redirect('/view-cart')->with('loginAlert', 'show login alert');
        }
    }
    public function address ()
    {
        $districts  = District::all();
        return view('front.shipping.add-address', [
            'districts' => $districts,
        ]);
    }
    public function newAddress(Request $request)
    {
        $this->checkCustomerValidation($request);
        Shipping::addShippingAddress($request);
        return json_encode('success');
    }
    protected function checkCustomerValidation($request){
       $this->validate($request,[
            'name'      =>'required|max:255',
            'email'     =>'required|email',
            'phone'     =>'required|regex:/(01)[0-9]{9}/|max:11',
            'address'   =>'required|max:255',
        ]);
    }
    public function create(Request $request){
//        $this->checkCustomerValidation($request);
//
//        if ($request->checkout == 1)
//        {
//            Customer::sameAddressInfo($request);
//
//        } else
//        {
//           Customer::differentAddressInfo($request);
//        }
//        return redirect('/customer/payment-info');
    }

    public function paymentInfo(){
        $subTotal            =  Cart::getTotal();
        $existShippingId    =   Session::get('shippingId');
        $existCustomer      =   Shipping::where('id', $existShippingId)->first();

        $districtName   = District::find($existCustomer->ship_district_id)->district_name;
        Session::put('districtName', $districtName);

        if ($subTotal) {
            if($existCustomer){
                // $deliveryCharge     =   Delivery::find($existCustomer->ship_district_id)->delivery_charge;
                // return view('front.payment.payment-info', ['items' => Cart::getContent(),'deliveryCharge'=>$deliveryCharge]);
                // $vat    = number_format(($subTotal*5)/100 ,2);
                $deliveryCharge     =   Delivery::find($existCustomer->ship_district_id)->delivery_charge;
//                $total      = number_format(($subTotal+$deliveryCharge+$vat),2);
                $total      = $subTotal+$deliveryCharge;

                Session::put('orderTotal',$total);
                return view('front.payment.payment-info', [
                    'items' => Cart::getContent(),
                    'deliveryCharge'=>$deliveryCharge,
                    'xtotal' => $total,
                ]);
            }
            else{
                return redirect(route('/'));
            }
        }
        else {
            return redirect(route('/'));
        }
    }


    public function userLogin(Request $request){
        $customer = Customer::where('phone',$request->email_or_phone)->orWhere('email',$request->email_or_phone)->first();
        if($customer){
            Session::put('customerId',$customer->id);
            Session::put('customerName',$customer->name);
            return redirect('/');
        }else{
            return redirect()->back()->with('message','your credential not match . please input valid credential .');
        }
    }
    public function loginCustomer(Request $request){
        $customer = Customer::where('phone',$request->email_or_phone)->orWhere('email',$request->email_or_phone)->first();
        if($customer){
            if(password_verify($request->password,$customer->password)){
                Session::put('customerId',$customer->id);
                Session::put('customerName',$customer->name);
                return  redirect('/customer/shipping-info');
            }else{
                return redirect()->back()->with('message','Your password is Invalid . please use valid Password .');
            }
        }else{
            return redirect()->back()->with('message','Your credential is Incorrect . Please use valid Credential .');
        }

    }

    public function getCharge($id){
      $delivery  = Delivery::where('district_id',$id)->first();
       return json_encode($delivery);
    }

    public function logoutCustomer(){
        Cart::clear();
        Session::forget('customerId');
        Session::forget('customerName');
        return redirect('/');
    }



}
