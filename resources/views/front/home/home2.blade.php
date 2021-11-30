@extends('front.master')
@section('title')
    besibuy.com
@endsection
@section('body')

    <!--slider area start-->
    <section class="slider_section shadow mb-50" >
        <div class="container-fluid">
            <div class="row">

                <div class="col-lg-9 offset-lg-3 p-0">

                    <div class="slider_area slider_two owl-carousel">
                        @foreach($sliders as $slider)
                            <div class="single_slider d-flex align-items-center" data-bgimg="{{asset($slider->image)}}"style="height: 400px;width: 100%">
                                <div class="slider_content slider_content_two content_position_center">
                                    <h1 class="text-info" style="font-size: 20px; ">{{Str::limit($slider->title,20)}} </h1>
                                    {{--  <span>High-Fidelity Sound that takes <br> your breath away </span>--}}
                                    {{--  <h2><span>form</span> $99  <span>00</span></h2>--}}

                                    <a href="{{route('category-product',['slug'=>$slider->category->slug])}}">shop now</a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </section>


    <!--today deals start-->
    <section class="new_product_area mb-50 mt-50 " id="hideExploreSales">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2>Explore <span>Sales</span></h2>
                    </div>
                </div>
            </div>
<!--            --><?php
//            $products = \App\Models\Product::where('status',1)->latest('id')->get();
//            ?>
            <div class="new_product_two_container">
                <div class="row no-gutters">
                    <div class="col-lg-12 col-md-12">
                        <div id="exploreDeals">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    {{--<!--today deals start area end-->--}}

    <style>
        #layoutAppend {
            min-height: 400px;
        }
    </style>
    <div id="layoutAppend">

    </div>




@endsection

@section('extra-divs')
    @include('front.includes.product-modal')
@endsection

@section('extra-js')
    <script src="{{asset('/')}}front/assets/js/purposeJsCodes/modal-cart.js"></script>
    <script src="{{asset('/')}}front/page-js/home-page/home-page.js"></script>
@endsection

