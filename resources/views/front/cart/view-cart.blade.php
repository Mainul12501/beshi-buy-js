@extends('front.master')
@section('title')
   View Cart
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
                            <li>Shopping Cart</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <div id="printViewCart" style="min-height: 250px;">

    </div>


@endsection

@section('extra-css')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
@endsection
@section('extra-js')
    @if(\Illuminate\Support\Facades\Session::has('loginAlert'))
        <script>
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please login before checkout your order!',
            })
        </script>
    @endif
    <script src="{{asset('/')}}front/page-js/view-cart/view-cart.js"></script>
@endsection
