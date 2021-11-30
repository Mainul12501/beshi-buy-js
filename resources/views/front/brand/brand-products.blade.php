@extends('front.master')
@section('title')
    beshibuy.com - brand - {{ $productTypeSlug ?? '' }}
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
                            <li><span id="type" class=""></span></li>
                            <li><span id="typeName" class=""></span></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!--shop  area start-->
    <div class="shop_area shop_reverse mt-3 mb-50">
        <div class="container bg-white">
            <div class="row">
                <div class="col-lg-12 col-md-12 ">
                    <div class="shop_title">
                        <h3>Shop</h3>
                    </div>
                    {{--                    @if(isset($products))--}}
                    <div class="shop_toolbar_wrapper mb-20">
                        <div class="shop_toolbar_btn">
                            <div class="dropdown">
                                <a class="btn btn-secondary dropdown-toggle rounded" data-toggle="dropdown" style="background: #FFFFFF;height: 33px;width: 160px">
                                    Brand By
                                </a>
                                <div class="dropdown-menu overflow-auto" id="brandLoop" style="height: 230px">

                                </div>
                            </div>
                        </div>
                        <div class="page_amount">
                            <form  action="" id="shortByPrice" method="GET">
                                @csrf
                                <ul class="list-group list-group-horizontal">
                                    <li class="list-group-item p-0">
                                        <input type="number" class="text-justify"  name="minPrice" placeholder="50 /-" min="50"  style="width: 70px;height: 30px;font-size: 13px"/>
                                    </li>
                                    <span class="px-2"> - </span>
                                    <li class="list-group-item p-0">
                                        <input type="number" class="text-justify" name="maxPrice" placeholder=" 50000 /-" max="50000" style="width: 70px;height: 30px;font-size: 13px"/>
                                        <input type="hidden" id="subCategorySlug" name="type_slug" value="{{ $productTypeSlug ?? '' }}">
                                    </li>
                                    <button type="submit" class="ml-1 btn-outline-secondary px-3 rounded"> Filter </button>
                                </ul>
                            </form>
                        </div>
                        <div class="dropdown">
                            <a class="btn btn-secondary dropdown-toggle rounded" data-toggle="dropdown" style="background: #FFFFFF;height: 33px;width: 160px">
                                Sort By
                            </a>
                            <div class="dropdown-menu">
                                {{--                                <a href="{{route('product-shorting-sub',['value' => 'low-to-high'])}}" onclick="getTypeWiseProduct($('#subCategorySlug').val(), 'lowToHigh')" class="dropdown-item p-1" >price low to high</a>--}}
                                <span onclick="getTypeWiseProduct($('#subCategorySlug').val(), 'lowToHigh')" class="dropdown-item p-1" style="cursor: pointer" >price low to high</span>
                                {{--                                <a href="{{route('product-shorting-sub',['value' => 'high-to-low'])}}" onclick="getTypeWiseProduct($('#subCategorySlug').val(), 'highToLow')" class="dropdown-item p-1" >price high to Low</a>--}}
                                <span onclick="getTypeWiseProduct($('#subCategorySlug').val(), 'highToLow')" class="dropdown-item p-1" style="cursor: pointer" >price high to Low</span>
                            </div>
                        </div>

                    </div>
                    <!--shop toolbar end-->
                    <div class="row no-gutters shop_wrapper print-products-cat" id="print-products-cat">

                    </div>

                    <div class="shop_toolbar t_bottom">
                        <div class="pagination" id="paginate">

                        </div>
                    </div>
                    <div id="printCatErrorMsg">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--shop  area end-->


@endsection
@section('extra-divs')
    @include('front.includes.product-modal')
@endsection

@section('extra-js')
    <script src="{{ asset('/') }}front/assets/css/pagination.js.org.2.1.5.css"></script>
    <script src="{{ asset('/') }}front/assets/js/pagination.js.org.2.1.5.js"></script>
    <script src="{{asset('/')}}front/assets/js/purposeJsCodes/modal-cart.js"></script>
    <script src="{{ asset('/') }}front/page-js/brands/brand-products.js"></script>
@endsection
