@extends('front.master')
@section('title')

    {{ $count }}+ {{ $request->search }} - RelaxshopBD
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
                            @if($subCategory)
                                <li> {{$subCategory->sub_category_name}} </li>
                                <li>shop</li>
                            @else
                                <li>shop</li>
                            @endif
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
            <div class="row ">
                <div class="col-lg-3 col-md-12">
                    <!--sidebar widget start-->
                    <aside class="sidebar_widget">
                        <div class="widget_list widget_categories" >
                            <h2>categories</h2>
                            @foreach($categories as $category)
                                <?php
                                $noOfCategoryProducts = \App\Models\Product::where('category_id',$category->id)->orderBy('id','desc')->get()->count();
                                ?>
                                <ul>
                                    <li>
                                        <a href="{{route('category-product',['id'=>$category->id,'name'=>preg_replace('/\s+/u', '-', trim($category->name))])}}"><i class="{{$category->icon}} mr-2"></i>{{$category->name}}<span>({{$noOfCategoryProducts}})</span></a>
                                    </li>
                                </ul>
                            @endforeach
                        </div>
                    </aside>
                    <!--sidebar widget end-->
                </div>

                <div class="col-lg-9 col-md-12 ">
                @if($products->count()>0)
                    <!--shop toolbar start-->
                        <div class="shop_banner border">
                            <img src="{{asset($subCategory->sub_category_image)}}" class=" w-100" style="height: 405px" alt="">
                        </div>
                    @else
                        <div class="border">
                            <img src="{{asset('/')}}front/assets/img/sorry_img.jpg" class="w-100" style="height: 350px"/>
                            <h3 class="text-center text-danger font-italic py-2"> There is No Product Found Here !! Please try Another  .</h3>

                        </div>
                    @endif
                </div>

                <div class="col-lg-12 col-md-12 ">
                    <div class="shop_title">
                        <h1>shop</h1>
                    </div>
                    <div class="shop_toolbar_wrapper">
                        <div class="shop_toolbar_btn">
                            <button data-role="grid_3" type="button" class="active btn-grid-3" data-toggle="tooltip" title="3"></button>
                            <button data-role="grid_4" type="button"  class=" btn-grid-4" data-toggle="tooltip" title="4"></button>
                        </div>

                        <div class="niceselect_option">
                            <form class="select_option" action="#">
                                <select name="orderby" >
                                    <option selected value="1" >Sort by average rating</option>
                                    <option  value="2" >Sort by popularity</option>
                                    <option value="3">Sort by newness</option>
                                    <option value="4">Sort by price: low to high</option>
                                    <option value="5">Sort by price: high to low</option>
                                    <option value="6">Product Name: Z</option>
                                </select>
                            </form>
                        </div>
                        <div class="page_amount">
                            <p>Showing <strong class="text-danger ml-2 mr-2">{{$products->count()}}</strong> results</p>
                        </div>
                    </div>
                    <!--shop toolbar end-->

                    <div class="row no-gutters shop_wrapper">
                        @foreach($products as $product)
                            <div class="col-lg-3 col-md-3 col-12 ">
                                <div class="single_product ">
                                    <div class="product_thumb">
                                        <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                            <img src="{{asset($product->image)}}" alt="">
                                        </a>
                                        <div class="label_product">
                                            <span class="label_sale">sale</span>
                                        </div>
                                        <div class="quick_button">
                                            <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>
                                            {{--                                        <a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                        </div>
                                    </div>
                                    <div class="product_content grid_content">
                                        <div class="product_name">
                                            <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                        </div>
                                        <div class="price_box">
                                            <span class="text-primary">Tk. </span><span class="text-danger ml-2"> {{$product->sell_price}}</span>
                                            {{--  <span class="old_price">$70.00</span>--}}
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart font-12"><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" title="shop now" class="text-uppercase"> shop now</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
{{--                    <div class="shop_toolbar t_bottom">--}}
{{--                        <div class="pagination">--}}
{{--                            <ul>--}}
{{--                                <li class="current">{{$products->links()}}</li>--}}
{{--                            </ul>--}}
{{--                        </div>--}}
{{--                    </div>--}}
                </div>
            </div>
        </div>
    </div>
    <!--shop  area end-->


@endsection
