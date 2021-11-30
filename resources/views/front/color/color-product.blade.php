@extends('front.master')
@section('title')
  Color
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
                                <?php
//                                $subCategory = \App\Models\SubCategory::where('id',$singleProduct->sub_category_id)->first();
                                ?>
                            <li>
{{--                                {{$subCategory->sub_category_name}}--}}
                            </li>

                            <li>shop</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!--shop  area start-->
    <div class="shop_area shop_reverse mt-50 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12 ">
                    <!--sidebar widget start-->
                    <aside class="sidebar_widget mt-3">
                        <?php
//                            $category = \App\Models\Category::where('id',$singleProduct->category_id)->first();
                        ?>
                        <div class="shop_sidebar_banner mb-50">
                            <a href="#">
{{--                                <img src="{{asset($category->image)}}" class="w-100 img-thumbnail" style="height: 320px" alt="">--}}
                            </a>
                        </div>
                        <div class="widget_list widget_categories">
                            <h2>categories</h2>
                            @foreach($categories as $category)
                                <?php

                                $noOfCategoryProducts = \App\Models\Product::where('category_id',$category->id)->orderBy('id','desc')->get()->count();
                                ?>
                                <ul>
                                    <li class="text-primary">
                                        <a href="{{route('category-product',['id'=>$category->id.'-'.time(),'name'=>preg_replace('/\s+/u', '-',trim($category->name))])}}">{{$category->name}} <span class="text-danger">({{$noOfCategoryProducts}})</span></a>
                                    </li>
                                </ul>
                            @endforeach
                        </div>
                        <div class="widget_list widget_filter">
                            <h2>Filter by price</h2>
                            <form action="#">
                                <div id="slider-range"></div>
                                <input type="text" name="text" id="amount" />
                                <button type="submit">Filter</button>
                            </form>
                        </div>
                        <div class="widget_list" style="overflow-y: scroll;height: 150px">
                            <h2>Manufacturer</h2>
                            @foreach($brands as $brand)
                                <?php
                                $noOfBrandProducts  = \App\Models\Product::where('brand_id',$brand->id)->where('status',1)->orderBy('id','desc')->get()->count();
                                ?>
                                <ul>
                                    <li class="text-primary">
                                        <a href="{{route('brand-wise-product',['id'=>$brand->id,'name'=>preg_replace('/\s+/u', '-',trim($brand->name))])}}">{{$brand->name}} <span class="text-danger">({{$noOfBrandProducts}})</span></a>
                                    </li>
                                </ul>
                            @endforeach
                        </div>

                        <div class="widget_list">
                            <h2>Select By Color</h2>
                            <ul>
                                <li>
                                    <a href="#">Black  <span>(6)</span></a>
                                </li>
                                <li>
                                    <a href="#"> Blue <span>(8)</span></a>
                                </li>
                                <li>
                                    <a href="#">Brown <span>(10)</span></a>
                                </li>
                                <li>
                                    <a href="#"> Green <span>(6)</span></a>
                                </li>
                                <li>
                                    <a href="#">Pink <span>(4)</span></a>
                                </li>

                            </ul>
                        </div>
                        <div class="widget_list recent_product">
                            <h2>Top Rated Products</h2>
                            <div class="recent_product_container">
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Natus erro</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product2.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Nemo enim</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product3.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Consequuntur magni</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product4.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Cras neque</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product5.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Endurance2</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product6.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Crown Summit1</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product7.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Compete Hoodie3</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product3.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Crown Summit1</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product4.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Crown Summit1</a></h3>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product5.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Crown Summit1</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product6.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Crown Summit1</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="recent_product_list">
                                    <div class="recent_product_thumb">
                                        <a href="product-details.html"><img src="{{asset('/')}}front/assets/img/s-product/product7.jpg" alt=""></a>
                                    </div>
                                    <div class="recent_product_content">
                                        <h3><a href="product-details.html">Crown Summit1</a></h3>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="current_price">$65.00</span>
                                            <span class="old_price">$70.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </aside>
                    <!--sidebar widget end-->
                </div>
                <div class="col-lg-9 col-md-12">
                    <!--shop wrapper start-->
                    <!--shop toolbar start-->
                    <div class="shop_banner  mt-3 border">
{{--                        <img src="{{asset($subCategory->sub_category_image)}}" class="w-100" style="height: 320px" alt="">--}}
                    </div>
                    <div class="shop_title" style="">
                        <h1>shop</h1>
                    </div>
                    <div class="shop_toolbar_wrapper">
                        <div class="shop_toolbar_btn">
                            <button data-role="grid_3" type="button" class="active btn-grid-3" data-toggle="tooltip" title="3"></button>

                            <button data-role="grid_4" type="button"  class=" btn-grid-4" data-toggle="tooltip" title="4"></button>

                            <button data-role="grid_list" type="button"  class="btn-list" data-toggle="tooltip" title="List"></button>
                        </div>
                        <div class=" niceselect_option">

                            <form class="select_option" action="#">
                                <select name="orderby" id="short">

                                    <option selected value="1">Sort by average rating</option>
                                    <option  value="2">Sort by popularity</option>
                                    <option value="3">Sort by newness</option>
                                    <option value="4">Sort by price: low to high</option>
                                    <option value="5">Sort by price: high to low</option>
                                    <option value="6">Product Name: Z</option>
                                </select>
                            </form>


                        </div>
                        <div class="page_amount">
                            <p>Showing 1–9 of 21 results</p>
                        </div>
                    </div>
                    <!--shop toolbar end-->

                    <div class="row no-gutters shop_wrapper">
                        @foreach($productColors as $productColor)
                            <?php
                                $product = \App\Models\Product::where('id', $productColor->product_id)->first()
                            ?>
                            @if(!empty($product))
                            <div class="col-lg-4 col-md-4 col-12 ">
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a href="{{route('product-details')}}">
                                            <img src="{{asset($product->image)}}" alt="">
                                        </a>
                                        <div class="label_product">
                                            <span class="label_sale">sale</span>
                                        </div>
                                        <div class="quick_button">
                                            <a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="product_content grid_content">
                                        <div class="product_name">
                                            <h3><a href="product-details.html">{{$product->name}}</a></h3>
                                        </div>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="text-primary">Tk. </span><span class="text-danger ml-2"> {{$product->sell_price}}</span>
                                            {{--  <span class="old_price">$70.00</span>--}}
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                                <li class="add_to_cart"><a href="cart.html" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></li>
                                                <li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product_content list_content">
                                        <div class="product_name">
                                            <h3><a href="product-details.html">{{$product->name}}</a></h3>
                                        </div>
                                        <div class="product_rating">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                                <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="price_box">
                                            <span class="text-primary">Tk. </span><span class="text-danger ml-2"> {{$product->sell_price}}</span>
                                            {{--  <span class="old_price">$70.00</span>--}}
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="wishlist"><a href="wishlist.html" title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                                <li class="add_to_cart"><a href="cart.html" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></li>
                                                <li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>
                                            </ul>
                                        </div>

                                        <div class="product_desc">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus. </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                @else
                                    <div class="row">
                                        <div class="col-md-9">
                                            <h3 class="text-danger">Sorry, There is no product with this color</h3>
                                        </div>
                                    </div>
                                @endif
                        @endforeach
                    </div>
                    <div class="shop_toolbar t_bottom">
                        <div class="pagination">
                            <ul>
                                <li class="current">1</li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li class="next"><a href="#">next</a></li>
                                <li><a href="#">>></a></li>
                            </ul>
                        </div>
                    </div>
                    <!--shop toolbar end-->
                    <!--shop wrapper end-->
                </div>
            </div>
        </div>
    </div>
    <!--shop  area end-->
@endsection
