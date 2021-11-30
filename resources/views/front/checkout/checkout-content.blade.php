@extends('front.master')
@section('title')
    Checkout
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
                            <li class="text-primary">Checkout</li>
                            <li>Billing / Shipping Info</li>
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
            <div class="row">
                <div class="col-lg-12">

                </div>
            </div>
            <div class="row">
                <div class="col-lg-7 col-md-6">
                    <div class="card card-title">
                        @if(Session::has('customerName'))
                            <h5 class="text-success p-2">Dear , <strongn class="text-warning ml-1">{{Session::get('customerName')}}</strongn>  !!  . you have to give us product billing and shipping info for complete your valuable order .  </h5>
                        @else
                            <h4 class="text-primary text-justify p-2">Dear customer , you have to give us product billing and shipping info for complete your valuable order . </h4>
                        @endif
                    </div>

                    <div class="card">
                        <div class="card-header bg-success p-1 ">
                            <h3 class="text-white ml-3"> Bill To :</h3>
                        </div>
                        <div class="card-body p-4">
                            <form action="{{route('new-customer')}}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label> Name :</label>
                                    @if($existCustomer)
                                        <input type="text" class="form-control" name="name" value="{{$existCustomer->name}}" placeholder="Enter Name" style="height: 3rem">
                                        <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : '' }}</span>
                                    @else
                                        <input type="text" class="form-control" name="name"  placeholder="Enter Name" style="height: 3rem">
                                        <span class="text-danger">{{ $errors->has('name') ? $errors->first('name') : '' }}</span>
                                     @endif
                                </div>
                                <div class="form-group">
                                    <label> Email :</label>
                                    @if($existCustomer)
                                    <input type="email" class="form-control" name="email" value="{{$existCustomer->email}}" placeholder="Enter  Email" style="height: 3rem">
                                    <span class="text-danger">{{ $errors->has('email') ? $errors->first('email') : '' }}</span>
                                    @else
                                        <input type="email" class="form-control" name="email"  placeholder="Enter  Email" style="height: 3rem">
                                        <span class="text-danger">{{ $errors->has('email') ? $errors->first('email') : '' }}</span>
                                      @endif
                                </div>
                                <div class="form-group">
                                    <label> Mobile :</label>
                                    @if($existCustomer)
                                    <input type="text" class="form-control" name="phone" value="{{$existCustomer->phone}}" placeholder="01XXX . . . ." style="height: 3rem">
                                    <span class="text-danger">{{ $errors->has('phone') ? $errors->first('phone') : '' }}</span>
                                    @else
                                        <input type="text" class="form-control" name="phone"  placeholder="01XXX . . . ." style="height: 3rem">
                                        <span class="text-danger">{{ $errors->has('phone') ? $errors->first('phone') : '' }}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label> City / Thana :</label>
                                    <input type="text" class="form-control" name="city" placeholder="City/Thana" style="height: 3rem" >
                                </div>
                                <div class="form-group">
                                    <select name="district_id" class="form-control districtId" id="" onchange="deliveryCharge(this.value)" style="height: 3rem" >
                                        <option value="" disabled selected>Select District</option>
                                        @foreach($districts as $district)
                                            <option value="{{$district->id}}">{{$district->district_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label> Address :</label>
                                    <textarea name="address" class="form-control" placeholder="Enter Address" style="height: 5rem"></textarea>
                                    <span class="text-danger">{{ $errors->has('address') ? $errors->first('address') : '' }}</span>
                                </div>
                                <div class="form-group">
                                    <input type="radio"  name="checkout" id="hideContent" value="1" checked/> <span class="ml-2">Shipping address same as billing Address.</span>
                                    <br>
                                    <input type="radio" name="checkout" id="showContent" value="0"/> <span class="ml-2">Ship to different Address</span>
                                </div>
                                <hr/>
                                <div class="hide-me" id="test">
                                    <h3 class="text-primary pb-3">Ship To :</h3>

                                  <div class="form-group">
                                      <label> Name :</label>
                                      <input type="text" class="form-control" name="ship_name" placeholder="Enter Name" style="height: 3rem">
                                      <span class="text-danger">{{ $errors->has('ship_name') ? $errors->first('ship_name') : '' }}</span>
                                   </div>
                                    <div class="form-group">
                                        <label> Email :</label>
                                        <input type="email" class="form-control" name="ship_email" placeholder="Enter Email" style="height: 3rem">
                                        <span class="text-danger">{{ $errors->has('ship_email') ? $errors->first('ship_email') : '' }}</span>
                                    </div>

                                    <div class="form-group">
                                        <label> Mobile :</label>
                                        <input type="text" class="form-control" name="ship_phone" placeholder="01XXX . . . ." style="height: 3rem">
                                        <span class="text-danger">{{ $errors->has('ship_phone') ? $errors->first('ship_phone') : '' }}</span>
                                    </div>
                                    <div class="form-group">
                                        <label> Others Mobile [Optional] :</label>
                                        <input type="text" class="form-control" name="others_phone" placeholder="Bangladeshi Mobile Number" style="height: 3rem">
                                        <span class="text-danger">{{ $errors->has('others_phone') ? $errors->first('others_phone') : '' }}</span>
                                    </div>
                                    <div class="form-group">
                                        <label> City / Thana :</label>
                                        <input type="text" class="form-control" name="ship_city" placeholder="Enter City/Thana" style="height: 3rem" >

                                    </div>
                                    <div class="form-group">
                                        <select name="ship_district_id" class="form-control districtId" onchange="deliveryCharge(this.value)" style="height: 3rem" >
                                            <option value="" disabled selected>Select District</option>
                                            @foreach($districts as $district)
                                                <option value="{{$district->id}}">{{$district->district_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label> Address :</label>
                                        <textarea name="ship_address" class="form-control" placeholder="Address" style="height: 5rem"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-dark text-warning btn-block"  value="Go to Payment"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6">
                    <div class="card border-0">
                        <div class="card-header bg-dark p-1">
                            <h3 class="text-warning ml-2">Order Summary </h3>
                        </div>
                        <div class="card-body border">
                            <table class="table table-bordered">
                                <thead class="text-center  bg-white">
                                <tr>
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
                                            <img src="{{asset($item->attributes->image)}}" style="height: 40px;width: 40px"/><br/>
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
{{--                                        <strong>{{$total}}</strong>--}}
                                      <strong>{{number_format($total,2)}}</strong>
                                    </td>
                                </tr>
                                <!--<tr>-->
                                <!--    <th colspan="2">Vat (5%)</th>-->
                                <!--    <td class="text-center">-->
                                <!--    {{--  <strong>{{$vat = ($total*5)/100}}</strong>--}}-->
                                <!--         <strong>{{number_format($vat = ($total*5)/100,2)}}</strong>-->
                                <!--    </td>-->
                                <!--</tr>-->
                                <tr>
                                    <th colspan="2">Delivery</th>
                                    <td class="text-center">
                                        <strong id="result"></strong>
                                    </td>
                                </tr>

                                <tr>
                                    <th colspan="2" >
                                        <strong class="text-uppercase text-warning">Order Total</strong><span class="text-primary ml-1"> [ TK . ]</span>
                                    </th>
                                    <td class="text-center">
                                        <input type="text" id="outPut"  class="form-control bg-light border-0 text-danger font-weight-bolder text-center" style="height: 30px;"/>
                                        <input type="hidden" id="grandValue"  value=" {{$total}}"/>
                                        {{--  <span class="text-warning mr-3" >Tk . </span><strong class="text-danger" style="font-size: 15px"> {{number_format($total+$sc,2)}}</strong>--}}
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!--Checkout page section end-->

@endsection


@section('extra-js')
    <script>
        // payment address show hide
        $(document).ready(function () {
            $('#showContent').click(function () {
                $('#test').removeClass('hide-me');
            });
            $('#hideContent').click(function () {
                $('#test').addClass('hide-me');
            });
        });
    </script>
@endsection
