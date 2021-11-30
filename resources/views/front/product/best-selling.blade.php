@extends('front.master')
@section('title')
    beshibuy.com
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
                            <li>Best Selling Products</li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!--shop  area start-->
    <div class="shop_area shop_reverse mt-3 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 ">
                    <div class="shop_title">
                        <h4 class="text-primary">Best Selling</h4>
                    </div>
                    @if(isset($data))
                        <div class="row no-gutters shop_wrapper">
                            @foreach($data as $product)
                                <div class="col-lg-3 col-md-3 col-12">
                                    <div class="single_product">
                                        <div class="product_thumb">
                                            <a href="{{route('product-details',['slug'=>$product->slug])}}">
                                                <img src="{{asset($product->image !=null ? $product->image : '')}}" class="px-5"  alt="" style="height: 170px;"/>
                                            </a>
                                            @isset($product->discount)
                                                <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                    <span class="label_sale"> - {{$product->discount}} % </span>
                                                </div>
                                            @endisset
                                            <div class="quick_button">
{{--                                                <a href="{{route('product-details',['slug'=>$product->slug])}}"  title="view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                                  <a href="#" data-toggle="modal" data-target="#modal_box" data-id="{{ $product->id }}" id="quickView" title="quick view"> <i class="zmdi zmdi-eye"></i></a>
                                            </div>
                                        </div>
                                        <div class="product_content grid_content">
                                            <div class="product_name">
                                                <h3><a href="{{route('product-details',['slug'=>$product->slug])}}">{{$product->name}}</a></h3>
                                            </div>
                                            <div class="price_box">
                                                @isset($product->regular_price)
                                                    <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                                @endisset
                                                <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                            </div>
                                            <div class="action_links">
                                                <ul>
                                                    <li class="add_to_cart font-12"><a href="{{route('product-details',['slug'=>$product->slug])}}"  class="text-uppercase"> shop now</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        @else
                        <div class="border">
                            <img src="{{asset('/')}}front/assets/img/sorry_img.jpg" class="w-100" style="height: 270px"/>
                            <h3 class="text-center text-danger font-italic py-2"> There is No Product Found Here !! Please try Another  .</h3>
                        </div>
                     @endif
                </div>
            </div>
        </div>
    </div>
    <!--shop  area end-->

@include('front.includes.product-modal');
@endsection

@section('extra-js')
    <script src="{{ asset('/') }}front/assets/js/purposeJsCodes/modal-cart.js"></script>
@endsection
