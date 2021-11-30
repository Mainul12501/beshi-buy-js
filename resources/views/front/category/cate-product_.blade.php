@extends('front.master')
@section('title')
beshibuy.com - {{ $productTypeSlug ?? '' }}-products
@endsection
@section('body')

    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content ">
                        <ul>
                            <li><a href="{{route('/')}}">home</a></li>
                            @isset($subCategory)
                                <li class="text-primary"> {{$subCategory->sub_category_name}} </li>
                                <li>shop</li>
                            @else
                                <li>shop</li>
                            @endisset
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!--shop  area start-->
    <div class="shop_area shop_reverse mt-30 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12">
                    <!--sidebar widget start-->
                    <aside class="sidebar_widget">
                        <div class="widget_list widget_filter">
                            <h2>Filter by price</h2>
                            <form  action="{{route('price-filter')}}" method="GET">
                               @csrf
                                <ul class="list-group list-group-horizontal">
                                    <li class="list-group-item p-0">
                                        <input type="number" class="text-justify"  name="minPrice" placeholder="50 /-" min="50"  style="width: 70px;height: 30px;font-size: 13px"/>
                                    </li>
                                    <span class="px-2"> - </span>
                                    <li class="list-group-item p-0">
                                        <input type="number" class="text-justify" name="maxPrice" placeholder=" 50000 /-" max="50000" style="width: 70px;height: 30px;font-size: 13px"/>
                                    </li>
                                    <button type="submit" class="ml-2 px-3" style=" border-radius: 3px; height: 34px;background: #ff0000 ">
                                        <i class="fa fa-chevron-right "></i>
                                    </button>
                                </ul>
                            </form>
                        </div>

                        <div class="widget_list">
                            <h2>Select By Brand</h2>
                            <?php
                                $brands = \App\Models\Brand::where('status',1)->latest('id')->get();

                            ?>
                            <ul class="overflow-auto" style="height: 250px">
                                @foreach($brands as $brand)

                                    <li>
                                        <a href="{{route('brand-wise-product',['id'=>$brand->id,'name'=>preg_replace('/\s+/u', '-', trim($brand->name))])}}">
                                            <input type="checkbox" class="ml-3"/>
                                             {{$brand->name}}
                                        </a>
                                    </li>
                              @endforeach
                            </ul>
                        </div>
                        <div class="widget_list">
                            <h2>Select By Color</h2>
                            <?php
                               $colors = \App\Models\Color::where('status',1)->latest('id')->get();
                            ?>
                            <ul class="overflow-auto" style="height: 250px">
                                @foreach($colors as $color)
                                    <li>
                                        <a href="{{route('color-wise-product',['id'=>$color->id,'name'=>preg_replace('/\s+/u', '-', trim($color->name))])}}">
                                            <input type="checkbox" class="ml-3"/>
                                            {{$color->name}}
                                        </a>
                                    </li>
                                @endforeach

                            </ul>
                        </div>
                    </aside>
                    <!--sidebar widget end-->
                </div>

                    <div class="col-lg-9 col-md-12">
                    @if(isset($products))
                    <div class="shop_title">
                        <h1>shop</h1>
                    </div>
                    <div class="shop_toolbar_wrapper">
                        <div class="shop_toolbar_btn">
                            <button data-role="grid_3" type="button" class="active btn-grid-3" data-toggle="tooltip" title="3"></button>
                            <button data-role="grid_4" type="button"  class=" btn-grid-4" data-toggle="tooltip" title="4"></button>
                            <button data-role="grid_list" type="button"  class="btn-list" data-toggle="tooltip" title="List"></button>
                        </div>
                        <div class="dropdown">
                            <a class="btn btn-secondary dropdown-toggle rounded" data-toggle="dropdown" style="background: #FFFFFF;height: 33px;width: 168px">
                                Sort By
                            </a>
                            <div class="dropdown-menu">
                                <a href="{{route('product-shorting-sub',['value' => 'low-to-high'])}}" class="dropdown-item" >price low to high</a>
                                <a href="{{route('product-shorting-sub',['value' => 'high-to-low'])}}" class="dropdown-item" >price high to Low</a>
                            </div>
                        </div>
                        <div class="page_amount">
                            <p>Showing <span class="text-danger ml-2 mr-2">( {{count($products) }} )</span> results</p>
                        </div>
                    </div>
                    <!--shop toolbar end-->

                    <div class="row no-gutters shop_wrapper">
                            @foreach($products as $product)
                                <div class="col-lg-4 col-md-3 col-12 ">
                                    <div class="single_product" style="padding: 10px 30px">
                                        <div class="product_thumb">
                                            <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                                <img src="{{asset($product->image)}}" alt="" style="height: 170px;width: 195px"/>
                                            </a>
                                              <div class="quick_button">
                                                <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>
                                                {{--  <a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                            </div>
                                        </div>
                                        <div class="product_content grid_content">
                                            <div class="product_name">
                                                <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                            </div>
                                            <div class="price_box">
                                                <span class="text-primary">Tk. </span><span class="text-danger ml-2"> {{number_format($product->sell_price,2)}}</span>
                                                {{--  <span class="old_price">$70.00</span>--}}
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
                        <!--shop toolbar end-->
                </div>

                </div>
            </div>
        </div>
        <!--shop  area end-->

    @endsection
