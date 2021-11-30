@extends('front.master')
@section('title')
    Payment
@endsection
@section('extra-css')
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;1,700&display=swap" rel="stylesheet">
    <style>
        .font-roboto {
            font-family: 'Roboto', sans-serif;
        }
        #printAddress p {
            margin-bottom: 0px;
        }
        #printAddress h5 {
            margin-bottom: 0px;
        }
    </style>
@endsection
@section('body')
    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="{{route('/')}}">home</a></li>
                            <li>Payment Info</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->
    <!--Checkout page section-->
    <div class="Checkout_section mt-60">
        <div class="container">

{{--            third attempt start--}}
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        {{--                        <div class="card-header bg-primary p-2 border border-warning">--}}
                        {{--                            <h2 class="mb-0">--}}
                        {{--                                <button class="btn  btn-block text-left text-decoration-none" type="button">--}}
                        {{--                                    <h4 class="text-warning text-capitalize f-s-26 text-orange text-center">payment method</h4>--}}
                        {{--                                </button>--}}
                        {{--                            </h2>--}}
                        {{--                        </div>--}}
                        <style>
                            .cash-img {
                                height: 50px;
                                width: 60px;
                            }
                        </style>
                        <div class="card-body" style=" background-color: rgba(211,211,211, .2)">
                            <p style="color: deeppink" id="message" class="p-0 m-0"></p>
                            <div class="mb-4">
                                <span class="font-weight-bold text-capitalize f-s-20 font-roboto pb-4">select address</span>

                                {{--                                shipping addresses--}}
                                @foreach($shipping as $key=>$ship)
                                    <div class="row pb-3">
                                        <div class="col-md-1">
                                            <input type="radio" {{--{{ $key == 0 ? 'checked' : '' }}--}} name="ship_address_id" value="{{ $ship->id }}" onclick="getShipid(this.value)" class="float-right" style="padding-right: 30%;">
                                        </div>
                                        <div id="printAddress" class="col-md-11">
                                            <h5 class="font-roboto font-weight-bold f-s-18">{{ $ship->ship_name }}</h5>
                                            <p class="font-roboto">{{ $ship->ship_email }}</p>
                                            <p class="font-roboto">{{ $ship->ship_phone }}</p>
                                            <p class="font-roboto">{{ $ship->ship_city }}</p>
                                            <p class="font-roboto">{{ $ship->ship_address }}</p>
                                        </div>
                                    </div>
                                @endforeach
                                {{--                                back up--}}
                                {{--                                <div class="row pb-3">--}}
                                {{--                                    <div class="col-md-1">--}}
                                {{--                                        <input type="radio" name="ship_address" value="" class="float-right" style="padding-right: 30%;">--}}
                                {{--                                    </div>--}}
                                {{--                                    <div id="printAddress" class="col-md-11">--}}
                                {{--                                        <h5 class="font-roboto font-weight-bold f-s-18">Full name</h5>--}}
                                {{--                                        <p class="font-roboto">email</p>--}}
                                {{--                                        <p class="font-roboto">01646688970</p>--}}
                                {{--                                        <p class="font-roboto">address</p>--}}
                                {{--                                    </div>--}}
                                {{--                                </div>--}}

                                {{--                                add address button--}}
                                <div>
                                    <a href="{{ route('add-address') }}" class="btn btn-outline-danger btn-block text-capitalize" style="">
                                        <i class="fas fa-plus"></i>
                                        <span class="py-2 font-roboto"> add address</span>
                                    </a>
                                </div>
                            </div>
                            <div class="card-text text-center">
                                @if($message = Session::get('message'))
                                    <div class="alert alert-danger alert-dismissible fade show py-2" role="alert">
                                        {{ $message }}
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                @endif
                            </div>
                            @if ($errors->any())
                                <div>
                                    <p class="text-danger">Please fix these errors and submit the form again.</p>
                                    @foreach ($errors->all() as $error)
                                        <div class="text-danger">{{$error}}</div>
                                    @endforeach
                                </div>
                            @endif

                            <div class="mt-2">
                                <h4 class="text-capitalize f-s-26 font-roboto mb-4">payment method</h4>
                            </div>

                            <form action="{{ route('confirm-order') }}" method="post" id="peymentMethodForm">
                                @csrf
                                <input type="hidden" id="shipId" name="ship_id">
                                <input type="hidden" id="couponAmount" value="{{ \Illuminate\Support\Facades\Session::has('coupon_amount') ? \Illuminate\Support\Facades\Session::get('coupon_amount') : 0 }}">
                                <?php
                                    if (\Illuminate\Support\Facades\Session::has('coupon_amount'))
                                        {
                                            $xtotal = $xtotal - \Illuminate\Support\Facades\Session::get('coupon_amount');
                                        }
                                ?>
                                <div id="accordion">
                                    <div id="zero">
                                        <div  >
                                            <input type="hidden" name="cash_target_amount" id="grandtotal" value="{{ $xtotal }}">
                                            <input type="radio" name="payment_type" value="cash"> &nbsp; Cash On Delivery
                                        </div>
                                    </div>
                                    <div id="one">
                                        <input type="radio" name="payment_type" value="bkash" data-toggle="collapse" data-target="#bkash" > &nbsp;Bkash <img src="https://www.logo.wine/a/logo/BKash/BKash-Icon2-Logo.wine.svg" class="cash-img" alt="bkash pay">
                                    </div>
                                    <div id="bkash" class="collapse" aria-labelledby="one" data-parent="#accordion">
                                        <?php
                                        $cha   = ($xtotal * 1.85)/100;
                                        // $bkash  = number_format($total+$cha, 2);
                                        $bkash  = ceil($xtotal+$cha);
                                        ?>
                                        <p>Rocket Number: <b>01556339088</b> Please complete your bKash payment at first, then fill up the form below. Also note that 1.85% bKash "SEND MONEY" cost will be added with net price. Total amount you need to send us at ৳ <span>{{ $bkash }}</span></p>
                                        <div class="row form-group">
                                            <label class="col-md-4">Bkash Number </label>
                                            <div class="col-md-8">
                                                <input type="hidden" name="bkash_target_amount" id="bkashtotal" value="{{ $bkash }}" />
                                                <input type="text" name="bkash_phone" class="form-control" placeholder="01556339088" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-4">BKash Transaction ID </label>
                                            <div class="col-md-8">
                                                <input type="text" name="bkash_txt_id" class="form-control text-uppercase" placeholder="8AE9FGN2T5">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="two">
                                        <input type="radio" name="payment_type" value="rocket" data-toggle="collapse" data-target="#rocket"> &nbsp;Rocket <img src="https://app.dutchbanglabank.com/DBBLWeb/img/mlogo.png"  class="cash-img" alt="rocket pay">
                                    </div>
                                    <div id="rocket" class="collapse" aria-labelledby="two" data-parent="#accordion">
                                        <?php

                                        $cha   = ($xtotal * 1)/100;
                                        // $rocket  = number_format($total+$cha, 2);
                                        $rocket  = ceil($xtotal+$cha);
                                        ?>
                                        <p>Rocket Number: <b>017344819926</b>Please complete your Rocket payment at first, then fill up the form below. Also note that 1% Rocket "SEND MONEY" cost will be added with net price. Total amount you need to send us at ৳ <span >{{ $rocket }}</span></p>
                                        <div class="row form-group">
                                            <label class="col-md-4">Rocket Number </label>
                                            <div class="col-md-8">
                                                <input type="hidden" name="rocket_target_amount" id="rockettotal" value="{{ $rocket }}" />
                                                <input type="text" name="rocket_phone" class="form-control" placeholder="017344819926">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-4">Rocket Transaction ID </label>
                                            <div class="col-md-8">
                                                <input type="text" name="rocket_txt_id" class="form-control text-uppercase" placeholder="8AE9FGN2T5">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="three">
                                        <input type="radio" name="payment_type" value="nagad" data-toggle="collapse" data-target="#nagad"> &nbsp;Nagad <img src="https://image.apktoy.com/img/1a/com.konasl.nagad/icon.png" class="cash-img" alt="nagad pay">
                                    </div>
                                    <div id="nagad" class="collapse" aria-labelledby="three" data-parent="#accordion">
                                        <?php

                                        $cha   = ($xtotal * 1.5)/100;
                                        // $nagad  = number_format($total+$cha, 2);
                                        $nagad  = ceil($xtotal+$cha);
                                        ?>
                                        <p>Please complete your Nagad payment at first, then fill up the form below. Also note that 1.85% bKash "SEND MONEY" cost will be added with net price. Total amount you need to send us at ৳ <span>{{ $nagad }}</span></p>
                                        <div class="row form-group">
                                            <label class="col-md-4">Nagad Number </label>
                                            <div class="col-md-8">
                                                <input type="hidden" name="nagad_target_amount" value="{{ $nagad }}" id="nagadtotal" />
                                                <input type="text" name="nagad_phone" class="form-control" placeholder="Ex. 015XXXXXXXX">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-4">Nagad Transaction ID </label>
                                            <div class="col-md-8">
                                                <input type="text" name="nagad_txt_id" class="form-control text-uppercase" placeholder="Ex. 8AE9FGN2T5">
                                            </div>
                                        </div>
                                    </div>
{{--                                    <div id="four">--}}
{{--                                        <input type="radio" name="payment_type" value="ssl" data-toggle="collapse" data-target="" disabled=""> &nbsp;SSLCommerz <img src="https://www.sslcommerz.com/wp-content/uploads/2019/11/footer_logo.png" class="" style="width: 120px; height: 50px;" alt="nagad pay">--}}
{{--                                    </div>--}}
{{--                                    <div id="five">--}}
{{--                                        <input type="radio" name="payment_type" value="shurjopay" data-toggle="collapse" data-target="" disabled=""> &nbsp;ShurjoPay <img src="https://shurjopayonlinepaymentgatewayinbangladesh.files.wordpress.com/2016/08/shurjopay-online-payment-gateway-in-bangladesh.png" class="" style="width: 120px; height: 50px;" alt="shurjo pay">--}}
{{--                                    </div>--}}
                                </div>
                                <input type="submit" class="btn btn-success position-absolute text-right" id="paymentSubBtn" onclick="validation();" style="right: 10px; bottom: 10px; display: none" value="Place Order">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card shadow">
                        <div class="card-header bg-dark p-2 border border-warning" id="headingOne">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left text-decoration-none" type="button">
                                    <h4 class="text-warning text-capitalize text-center">your order summary .</h4>
                                </button>
                            </h2>
                        </div>

                        <div class="">
                            <div class="card-body">
                                <table class="table table-bordered" >
                                    <thead class="text-center bg-white">
                                    <tr style="padding: 0px">
                                        <th>Product</th>
                                        <th>Unit Price</th>
                                        <th>Total</th>
                                    </tr>
                                    </thead>
                                    @php($total = 0)
                                    <tbody class="text-center">
                                    @foreach($items as $item)
                                        <tr>
                                            <td class="product_thumb" >
                                                <img src="{{asset($item->attributes->image)}}" style="height: 30px;width: 40px"/><br/>
                                                size : <span>{{$item->attributes->size}}</span>,color :
                                                <span>{{$item->attributes->color}}</span>
                                            </td>
                                            <td>
                                                {{$item->price}} <span> X</span> <span>{{$item->quantity}}</span>
                                            </td>
                                            <td>
                                                <strong>{{number_format($subTotal = $item->quantity*$item->price,2 )}}</strong>
                                            </td>
                                        </tr>
                                        @php($total = $total +$subTotal)
                                    @endforeach
                                    </tbody>
                                    <tfoot class="bg-light-grey">
                                    <tr>
                                        <th colspan="2">SubTotal</th>
                                        <td class="text-center">
                                            <strong>{{number_format($total,2)}}</strong>
                                        </td>
                                    </tr>
                                    @php($sc=0)
                                    @if(\Illuminate\Support\Facades\Session::has('coupon_amount'))
                                        <tr>
                                            <th colspan="2">Coupon Value</th>
                                            <td class="text-center">
                                                <strong>{{$sc = number_format(\Illuminate\Support\Facades\Session::get('coupon_amount'),2)}}</strong>
                                            </td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <th colspan="2" id="payMethod">Payment Charge</th>
                                        <td class="text-center">
                                            {{--                                            <strong>{{$sc = number_format($deliveryCharge,2)}}</strong>--}}
                                            <p id="payCharge"></p>
                                            {{--                                            <input type="text" id="payCharge">--}}
                                        </td>
                                    </tr>
                                    <tr>
                                        <th colspan="2" class="text-uppercase text-warning">Order Total</th>
                                        <td class="text-center">
                                            {{--                                            <span class="text-warning mr-3" >Tk . </span><strong class="text-danger" style="font-size: 15px"> {{$orderTotal = number_format($total+$sc,2)}}</strong>--}}
                                            <span class="text-warning mr-3" >Tk . </span><strong class="text-danger" style="font-size: 15px" id="showTotal"> {{$orderTotal = number_format($total-$sc,2)}}</strong>
                                            <?php /*//Session::put('orderTotal',$orderTotal)*/?>

                                        </td>
                                    </tr>
                                    </tfoot>
                                </table>
                                <div class="mt-4">
                                    <button type="button" id="clickMePaymentBtn" class="btn btn-outline-danger btn-block">Place order</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
{{--            third attempt endt--}}
        </div>
    </div>
    <!--Checkout page section end-->

@endsection

@section('extra-js')
    <script>
        $('#clickMePaymentBtn').click(function () {
            var address  = $('input[name=ship_address_id]:checked').val();
            if (address)
            {
                $('#paymentSubBtn').trigger('click');
            } else {
                toastr.error('Please select a shipping address.');
            }
        })
        function getShipid(id)
        {
            $('#shipId').val(id);
        }
    </script>
    <script src="{{asset('/')}}front/page-js/checkout-page/checkout.js"></script>
@endsection
