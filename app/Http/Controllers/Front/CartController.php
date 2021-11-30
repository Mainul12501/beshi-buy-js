<?php

namespace App\Http\Controllers\Front;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Delivery;
use App\Models\Discount;
use App\Models\Product;
use App\Models\ProductSize;
use App\Models\Size;
use Illuminate\Http\Request;
use Cart;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
//    public function addToCart(Request $request){
//       $product    = Product::find($request->id);
//        if($request->btn == 1){
//            Cart::add([
//                'id'            =>  $product->id,
//                'name'          =>  $product->name,
//                'price'         => str_replace(",","", $product->sell_price),
//                'quantity'      =>  $request->qty,
//                'attributes'            => [
//                    'image'             =>  $product->image,
//                    'size'              =>  $request->size_name,
//                    'color'             =>  $request->color,
//                ]
//            ]);
//            // return redirect('/cart/view-cart');
//            return redirect()->back()->with('barta', 'Product Added to Cart Successfully.');
//        }elseif($request->btn == 0){
//            Cart::add([
//                'id'            =>  $product->id,
//                'name'          =>  $product->name,
//                'price'         => str_replace(",","", $product->sell_price),
//                'quantity'      =>  $request->qty,
//                'attributes'    => [
//                    'image'     =>  $product->image,
//                    'size'      =>  $request->size_name,
//                    'color'     =>  $request->color,
//                ]
//            ]);
//            return redirect('/checkout/process-to-checkout');
//        }
//
//
//    }
    public function viewCart(){
        return view('front.cart.view-cart');
    }
    public function viewCartData ()
    {
        $items = Cart::getContent();
        $count  = $items->count();
        $result = [
            'items' => $items,
            'count' => $count,
        ];
        return json_encode($result);
    }
    public function updateCart(Request $request){
        Cart::update($request->id, [
            'quantity' => [
                'relative' => false,
                'value' => $request->qty
            ],
        ]);

        if (!$request->ajax())
        {
            return redirect('/view-cart')->with('message','Qty Update Successfully !!');
        } else {
            return json_encode('Product Quantity Updated Successfully.');
        }

    }
    public function itemDelete($id){
        Cart::remove($id);
        if (\request()->ajax()){
            return json_encode('Product Deleted Successfully.');
        } else {
            return redirect('/view-cart')->with('message','Cart Item Delete Successfully ??');
        }

    }

//    load cart
    public function loadCart ()
    {
        $cartContent    = Cart::getContent();
        $cartTotal      = Cart::getTotal();
        $count          = Cart::getContent()->count();
        $result         = [
            'content'   => $cartContent,
            'total'     => $cartTotal,
            'count'     => $count,
        ];
        return json_encode($result);

    }
    public function loadCartHover ()
    {
        $count          = Cart::getContent()->count();
        return json_encode($count);
    }

//    item delete
    public function itemDeleteAjax($id){
        Cart::remove($id);
        $count  = Cart::getContent()->count();
        $content= Cart::getContent();
        $msg = 'product deleted';
        $cartTotal      = Cart::getTotal();
        $result = [
            'msg'   => $msg,
            'count' => $count,
            'content' => $content,
            'total'     => $cartTotal,
        ];
        return json_encode($result);

    }
    //    add to cart from home page test
    public function addToCartHome(Request $request){
        if ($request->qty)
        {
            $qty = $request->qty;
        } else {
            $qty    = 1;
        }
//        $productSize = ProductSize::where('product_id', $id)->select('size_id')->first();
//        $size   = Size::where('id', $productSize->size_id)->first();
        $product = Product::find($request->product_id);
        Cart::add([
            'id'            =>  $product->id,
            'name'          =>  $product->name,
            'price'         => str_replace(",","", $product->sell_price),
            'quantity'      =>  $qty,
            'attributes'    => [
                'image'     =>  $product->image,
                'size'      =>  $request->size,
                'color'      =>  $request->color,
            ]
        ]);

        $count          = Cart::getContent()->count();
        return json_encode($count);
    }

//    get cart content on mobile
    public function mobileCart ()
    {
        $cartContent    = Cart::getContent()->take(2);
        $cartTotal      = Cart::getTotal();
        $count          = Cart::getContent()->count();
        $result         = [
            'content'   => $cartContent,
            'total'     => $cartTotal,
            'count'     => $count,
        ];
        return json_encode($result);

    }
//    coupon check
    public function couponCheck($code)
    {

        $checkCoupon    = Discount::where('coupon_code', $code)->first();
//        $currentTime    = Carbon::createFromFormat('d-m-Y H:m:s', Carbon::now())->toDateTimeString();
        if (!empty($checkCoupon))
        {
            if ($checkCoupon->validity == 0){
                $data   = [
                    'status'    => 'expired',
                    'message'   => 'Your coupon code is expired.',
                ];
            } elseif ($checkCoupon->validity == 1)
            {
                $cartProducts   = Cart::getContent();
                foreach ($cartProducts as $product)
                {
                    if ($product->id == $checkCoupon->product_id)
                    {
                        if (Session::has('coupon_code'))
                        {
                            Session::remove('coupon_code');
                        }
                        Session::put('coupon_code', $checkCoupon->coupon_code);
                        if (Session::has('coupon_amount'))
                        {
                            Session::remove('coupon_amount');
                        }
                        Session::put('coupon_amount', $checkCoupon->reduce_amount);
                        $data   = [
                            'status'    => 'success',
                            'message'   => 'Your coupon code applied successfully.',
                            'amount'    => $checkCoupon->reduce_amount,
                        ];
                    }
//                    else {
//                        $data   = [
//                            'status'    => 'error',
//                            'message'   => 'Your coupon code is not valid for these products.',
//                            'amount'    => 0,
//                        ];
//                    }
                }


                if (empty($data['amount']))
                {
                    $data   = [
                        'status'    => 'error',
                        'message'   => 'Your coupon code is not valid for these products.',

                    ];
                }





            }
        } else {
            $data   = [
                'status'    => 'invalid',
                'message'   => 'Your coupon code is invalid.',
            ];
        }
//        return json_encode($checkCoupon);
        return json_encode($data);
    }
}
