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
                    <input type="hidden" id="categorySlug" value="{{ $categorySlug ?? '' }}">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="{{route('/')}}">home</a></li>
                            <li><a href="javascript:void(0)" id="typeName" style="display: none"></a></li>
                            {{--                            <li><a href="javascript:void(0)" id="subCategoryName" style="display: none"></a></li>--}}
                            {{--                            @if(isset($subCategory))--}}
                            {{--                                <li class="text-primary"> {{$subCategory->sub_category_name}} </li>--}}
                            {{--                                <li>shop</li>--}}
                            {{--                            @else--}}
                            {{--                                <li>shop</li>--}}
                            {{--                            @endif--}}
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
                        <h3>Shop</h3>
                    </div>
                    @if(isset($products))
                        <div class="shop_toolbar_wrapper mb-20">
                            <div class="shop_toolbar_btn">
                                <div class="dropdown">
                                    <a class="btn btn-secondary dropdown-toggle rounded" data-toggle="dropdown" style="background: #FFFFFF;height: 33px;width: 160px">
                                        Brand By
                                    </a>
                                    <div class="dropdown-menu overflow-auto" id="brandLoop" style="height: 230px">
                                        @foreach($brands as $brand)
                                            <a  href="{{route('brand-wise-product',['id'=>$brand->id,'name'=>preg_replace('/\s+/u', '-', trim($brand->name))])}}" class="dropdown-item p-2">{{$brand->name}}</a>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            <div class="page_amount">
                                <form  action="{{route('price-filter')}}" id="shortByPrice" method="GET">
                                    @csrf
                                    <ul class="list-group list-group-horizontal">
                                        <li class="list-group-item p-0">
                                            <input type="number" class="text-justify"  name="minPrice" placeholder="50 /-" min="50"  style="width: 70px;height: 30px;font-size: 13px"/>
                                        </li>
                                        <span class="px-2"> - </span>
                                        <li class="list-group-item p-0">
                                            <input type="number" class="text-justify" name="maxPrice" placeholder=" 50000 /-" max="50000" style="width: 70px;height: 30px;font-size: 13px"/>
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
                                    <a href="{{route('product-shorting-sub',['value' => 'low-to-high'])}}" class="dropdown-item p-1" >price low to high</a>
                                    <a href="{{route('product-shorting-sub',['value' => 'high-to-low'])}}" class="dropdown-item p-1" >price high to Low</a>
                                </div>
                            </div>

                        </div>
                        <!--shop toolbar end-->
                        <div class="row no-gutters shop_wrapper">
                            @foreach($products as $product)
                                <div class="col-lg-3 col-md-3 col-12">
                                    <div class="single_product">
                                        <div class="product_thumb">
                                            <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                                <img src="{{asset($product->image)}}" class="px-5"  alt="" style="height: 170px;"/>
                                            </a>
                                            @isset($product->discount)
                                                <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                    <span class="label_sale"> - {{$product->discount}} % </span>
                                                </div>
                                            @endisset
                                            <div class="quick_button">
                                                <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}"  title="view"> <i class="zmdi zmdi-eye"></i></a>
                                                {{--  <a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                            </div>
                                        </div>
                                        <div class="product_content grid_content">
                                            <div class="product_name">
                                                <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                            </div>
                                            <div class="price_box">
                                                @isset($product->regular_price)
                                                    <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                                @endisset
                                                <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                            </div>
                                            <div class="action_links">
                                                <ul>
                                                    <li class="add_to_cart font-12"><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}"  class="text-uppercase"> shop now</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        </div>

                        <div class="shop_toolbar t_bottom">
                            <div class="pagination">
                                <ul>
                                    @if(isset($pagination))
                                        <li class="current">{{$pagination->links()}}</li>
                                    @elseif(isset($priceFiltering))
                                        <li class="current">{{$products->appends(Request::all())->links()}}</li>
                                    @elseif(isset($products))
                                        <li class="current">{{$products->links()}}</li>
                                    @endif
                                </ul>
                            </div>
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


@endsection
@section('extra-divs')
    @include('front.includes.product-modal')
@endsection

@section('extra-js')
    {{--    <script src="{{ assert('/') }}front/page-js/categoryProduct/categoryProducts.js"></script>--}}
@endsection
