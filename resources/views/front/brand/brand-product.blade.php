@extends('front.master')
@section('title')
    Beshi Buy - all brands
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
                            <li>brand</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

<div class="shop_area">
    <div class="container bg-white p-t-50 p-b-50">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="shop_title">
                    <h2 class="text-primary text-center">Brands</h2>
                </div>
                <div class="row" id="brandDiv" style="min-height: 150px;">
{{--                    @foreach($brands as $brand)--}}
{{--                        <div class="col-md-2 p-2">--}}
{{--                            <div class="card ">--}}
{{--                                <div class="card-body shadow">--}}
{{--                                    <a href="{{route('brand-wise-product',['id'=>$brand->id,'name'=>preg_replace('/\s+/u', '-', trim($brand->name))])}}">--}}
{{--                                        <img src="{{asset($brand->image !=null ? $brand->image : ' ')}}"  alt=""   style="height: 70px" />--}}
{{--                                    </a>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    @endforeach--}}
                </div>
                <div class="shop_toolbar t_bottom">
                    <div class="pagination" id="paginate">
                        <ul>
{{--                            @if(isset($pagination))--}}
{{--                                <li class="current">{{$pagination->links()}}</li>--}}
{{--                            @elseif(isset($priceFiltering))--}}
{{--                                <li class="current">{{$brands->appends(Request::all())->links()}}</li>--}}
{{--                            @elseif(isset($brands))--}}
{{--                                <li class="current">{{$brands->links()}}</li>--}}
{{--                            @endif--}}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    <!--shop  area end-->
@endsection
@section('extra-js')
    <script src="{{ asset('/') }}front/assets/css/pagination.js.org.2.1.5.css"></script>
    <script src="{{ asset('/') }}front/assets/js/pagination.js.org.2.1.5.js"></script>
    <script src="{{ asset('/') }}front/page-js/brands/brands.js"></script>
@endsection
