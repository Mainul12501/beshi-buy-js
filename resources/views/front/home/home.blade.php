@extends('front.master')
@section('title')
    besibuy.com
@endsection
@section('body')
    <!--header middel start-->
    <div class="header_bottom ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3">
                    <div class="categories_menu categori_two fixed-top">
                        <div class="categories_title" style="background:#EA000D">
                            <h2 class="categori_toggle">All Categories</h2>
                        </div>
                        <div class="categories_menu_toggle" >
                            <ul>
                                @foreach($categories as $category)
                                    <li class="menu_item_children categorie_list">
                                        <a href="javascript:void(0)">
                                            <span><i class="{{$category->icon}}"></i></span> {{$category->name}}
                                        </a>
                                        <?php
                                            $subCategories  = \App\Models\SubCategory::where('category_id',$category->id)->where('status',1)->orderBy('id','desc')->get();
                                        ?>
                                        @if(count($subCategories) > 0)
                                        <ul class="categories_mega_menu">
                                            @foreach($subCategories as $subCategory)
                                                <li class="menu_item_children">
                                                    <a href="{{route('sub-category-product',['id'=>$subCategory->id,'name'=>preg_replace('/\s+/u', '-', trim($subCategory->sub_category_name))])}}" class="text-danger">{{$subCategory->sub_category_name}}</a>
                                                    <?php
                                                    $products   = \App\Models\Product::where('category_id',$subCategory->category_id)->where('sub_category_id',$subCategory->id)->orderBy('id','desc')->get();
                                                    ?>
                                                    <ul class="categorie_sub_menu">
                                                        <li>
                                                            @foreach($products as $product)
                                                                <a href="{{route('sub-category-product',['id'=>$product->sub_category_id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" class="text-primary">
                                                                    <img src="{{asset($product->image)}}" style="width: 20px;height: 20px"/>
                                                                    <span class="ml-2"> {{Str::limit($product->name,20)}}</span>
                                                                </a>
                                                            @endforeach
                                                        </li>

                                                    </ul>
                                                </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                    </li>
                                @endforeach
                                <li><a href="javascript:void(0)" id="more-btn"><i class="fa fa-plus" aria-hidden="true"></i> More Categories</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="main_menu menu_two header_position">
                        <nav>
                            <ul class="ml-lg-5">
                                <li class="active"> <a  href="{{route('latest-product')}}">New Explore</a></li>
                                <li><a href="{{route('offers')}}"> Offers</a></li>
                                <li><a href="{{route('best-selling')}}">Best Selling</a></li>
                                <li><a href="{{route('brands')}}">Brands</a></li>
                                <li><a href="javascript:void(0)">How to Buy</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--header middel end-->

    <!--slider area start-->
    <section class="slider_section shadow mb-50">
        <div class="container-fluid">
            <div class="row">
                <?php
                    $sliders = \App\Models\Slider::where('status',1)->orderBy('id','desc')->take(4)->get();
                ?>
                <div class="col-lg-9 offset-lg-3 p-0">
                    <div class="slider_area slider_two owl-carousel" >
                        @foreach($sliders as $slider)

                        <div class="single_slider d-flex align-items-center" data-bgimg="{{asset($slider->image)}}" style="height:403px">
                            <div class="slider_content slider_content_two content_position_center">
                                <h1 class="text-info" style="position:absolute;right: 20px;top: 100px;font-size: 20px; ">{{Str::limit($slider->title,20)}} </h1>
                               {{-- <span>High-Fidelity Sound that takes <br> your breath away </span>
                                <h2><span>form</span> $99  <span>00</span></h2>--}}
                                <?php
                                    $category = \App\Models\Category::where('id',$slider->category_id)->first();
                                ?>
                                <a href="{{route('category-product',['id'=>$category->id,'name'=>preg_replace('/\s+/u', '-', trim($category->name))])}}">shop now</a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <!--slider area end-->

      <!--today deals start-->
    <section class="new_product_area mb-50 mt-80">
        <div class="container">
            <div class="row">
            <div class="col-12">
                <div class="section_title">
                    <h2>Explore <span>Sales</span></h2>
                </div>
            </div>
        </div>
            <?php
                $products = \App\Models\Product::where('status',1)->latest('id')->get();
            ?>
            <div class="new_product_two_container">
                <div class="row no-gutters">
                    <div class="col-lg-12 col-md-12">
                        <div class="product_carousel product_column4 owl-carousel">
                            @foreach($products as $product)
                                @if($product->sell_count !=null)
                                    <div class="single_product">
                                    <div class="product_thumb">
                                        <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                            <img src="{{asset( $product->image )}}" alt="" class="px-5" style="height: 170px;" />
                                        </a>
                                        @isset($product->discount)
                                        <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                            <span class="label_sale"> - {{$product->discount}} % </span>
                                        </div>
                                        @endisset
                                        <div class="quick_button">
                                            {{-- <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                            <a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                        </div>
                                        <div class="price_box">
                                            @isset($product->regular_price)
                                                <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                            @endisset
                                            <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                        </div>
                                        <div class="product_variant color">
                                            <a  onclick="showMe({{$product->id}})" class="text-primary sc-hide{{ $product->id }}">view size and color</a>
                                            <div class="hide-me sico-div{{ $product->id }}">
                                                <a  onclick="hideMe({{ $product->id }})" class="text-danger float-right mr-2">X</a>
                                                <?php
                                                    $productSizes =\App\Models\ProductSize::where('product_id',$product->id)->orderBy('id','desc')->get();
                                                ?>

                                                <ul class="size{{ $product->id }}" >
                                                    @foreach($productSizes as $productSize)
                                                        <?php
                                                        $productSizeName = \App\Models\Size::find($productSize->size_id)->name;
                                                        ?>

                                                        <li class="border-0 " style="font-size: 10px" >
                                                            <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" />{{$productSizeName}}
                                                        </li>
                                                    @endforeach
                                                </ul>
                                                <ul class="color{{ $product->id }}">
                                                    <?php
                                                    $productColors  = \App\Models\ProductColor::where('product_id', $product->id)->get();
                                                    ?>
                                                    @foreach($productColors as $col=>$productColor)
                                                        <?php
                                                        $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();
                                                        ?>
                                                        <li class="border-0" style="font-size: 10px">
                                                            <input type="radio" name="color" {{ $col === 0 ? 'checked' : '' }} class="m-1" value="{{ $color->name }}"/> {{ $color->name }}
                                                        </li>
                                                    @endforeach

                                                </ul>
                                            </div>
                                            {{-- <br/><span class="sc-msg{{ $product->id }} text-danger"></span>--}}
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" onclick="productId({{ $product->id }})">add to cart</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                               @endif
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--today deals start-->

    {{-- mens fashion--}}
    <section class="home_product_area mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product_header">
                        <div class="section_title">
                            <h2 class="text-white p-3 rounded-pill " style="background: rgba(55,179,21,0.83);font-size: 15px" >{{$data['men_section']['category']->name}}</h2>
                        </div>
                        <div class="product_tab_button">
                            <ul class="nav" role="tablist">
                                @foreach($data['men_section']['subCategories'] as $key=>$subCategory)
                                    <li>
                                        <a class="{{$key==0 ? 'active' : ''}}" data-toggle="tab" href="#leftop2{{$key}}" role="tab" aria-controls="leftop1" aria-selected="true">
                                            {{$subCategory->sub_category_name}}
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <form action=""  enctype="multipart/form-data" id="addCartForm">
                        @csrf
                    <div class="tab-content">
                        @foreach ($data['men_section']['subCategories'] as $index=>$subCategory)
                            <?php
                            $products = \App\Models\Product::where('sub_category_id',$subCategory->id)->where('status',1)->orderBy('id','desc')->get()
                         ?>
                            <div class="tab-pane fade show {{$index==0 ?'active':''}}" id="leftop2{{$index}}" role="tabpanel">
                                    <div class="product_carousel product_column4 owl-carousel">
                                    @foreach($products as $product)
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                                    <img src="{{asset($product->image)}}" class="px-5" alt="" style="height: 170px" />
                                                </a>
                                                @isset($product->discount)
                                                    <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                        <span class="label_sale"> - {{$product->discount}} % </span>
                                                    </div>
                                                @endisset
                                                  <div class="quick_button">
                                                    {{--<a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                                <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>

                                              </div>
                                            </div>
                                            <div class="product_content ">
                                                <div class="product_name">
                                                    <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                                </div>
                                                <div class="price_box">
                                                    @isset($product->regular_price)
                                                        <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                                    @endisset
                                                    <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                                </div>
                                                <div class="product_variant color">
                                                    <a  onclick="showMe({{$product->id}})" class="text-primary sc-hide{{ $product->id }}">view size and color</a>
                                                    <div class="hide-me sico-div{{ $product->id }}">
                                                        <a  onclick="hideMe({{ $product->id }})" class="text-danger float-right mr-2">X</a>
                                                        <?php
                                                        $productSizes =\App\Models\ProductSize::where('product_id',$product->id)->orderBy('id','desc')->get();
                                                        ?>

                                                        <ul class="size{{ $product->id }}" >
                                                            @foreach($productSizes as $productSize)
                                                                <?php
                                                                $productSizeName = \App\Models\Size::find($productSize->size_id)->name;
                                                                ?>

                                                                <li class="border-0 " style="font-size: 10px" >
                                                                    <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" />{{$productSizeName}}
                                                                </li>
                                                            @endforeach
                                                        </ul>
                                                        <ul class="color{{ $product->id }}">
                                                            <?php
                                                            $productColors  = \App\Models\ProductColor::where('product_id', $product->id)->get();
                                                            ?>
                                                            @foreach($productColors as $col=>$productColor)
                                                                <?php
                                                                $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();
                                                                ?>
                                                                <li class="border-0" style="font-size: 10px">
                                                                    <input type="radio" name="color" {{ $col === 0 ? 'checked' : '' }} class="m-1" value="{{ $color->name }}"/> {{ $color->name }}
                                                                </li>
                                                            @endforeach

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart"><a  href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" onclick="productId({{ $product->id }})"  class="abc ">add to cart</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endforeach
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    {{-- mens fashion--}}

    <!--banner area start-->
    <div class="banner_area banner_column2 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner2.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner3.jpg" alt=""></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner area end-->

    {{-- women fashion--}}

    <section class="home_product_area mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product_header">
                        <div class="section_title">
                            <h2 class="text-white p-3 rounded-pill " style="background: hotpink;font-size: 15px">{{$data['women_section']['category']->name}}</h2>
                        </div>
                        <div class="product_tab_button">
                            <ul class="nav" role="tablist">
                                @foreach($data['women_section']['subCategories'] as $key=>$subCategory)
                                    <li>
                                        <a class="{{$key==0 ? 'active' : ''}}" data-toggle="tab" href="#women{{$key}}" role="tab" aria-controls="leftop1" aria-selected="true">
                                            {{$subCategory->sub_category_name}}
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>

                    <div class="tab-content">
                        @foreach ($data['women_section']['subCategories'] as $index=>$subCategory)
                            <div class="tab-pane fade show {{$index==0 ?'active':''}}" id="women{{$index}}" role="tabpanel">
                                <div class="product_carousel product_column4 owl-carousel">
                                    <?php
                                    $products = \App\Models\Product::where('sub_category_id',$subCategory->id)->where('status',1)->orderBy('id','desc')->get();
                                    ?>
                                    @foreach($products as $product)
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                                    <img src="{{asset($product->image)}}" class="px-5" alt="" style="height:170px;" />
                                                </a>
                                                @isset($product->discount)
                                                    <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                        <span class="label_sale"> - {{$product->discount}} % </span>
                                                    </div>
                                                @endisset
                                                <div class="quick_button">
                                                   {{-- <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}"   title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                                       <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <div class="product_name">
                                                    <h5><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h5>
                                                </div>

                                                <div class="price_box">
                                                    @isset($product->regular_price)
                                                        <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                                    @endisset
                                                    <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                                </div>
                                                <div class="product_variant color">
                                                    <a  onclick="showMe({{$product->id}})" class="text-primary sc-hide{{ $product->id }}">view size and color</a>
                                                    <div class="hide-me sico-div{{ $product->id }}">
                                                        <a  onclick="hideMe({{ $product->id }})" class="text-danger float-right mr-2">X</a>
                                                        <?php
                                                        $productSizes =\App\Models\ProductSize::where('product_id',$product->id)->orderBy('id','desc')->get();
                                                        ?>

                                                        <ul class="size{{ $product->id }}" >
                                                            @foreach($productSizes as $productSize)
                                                                <?php
                                                                $productSizeName = \App\Models\Size::find($productSize->size_id)->name;
                                                                ?>

                                                                <li class="border-0 " style="font-size: 10px" >
                                                                    <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" />{{$productSizeName}}
                                                                </li>
                                                            @endforeach
                                                        </ul>
                                                        <ul class="color{{ $product->id }}">
                                                            <?php
                                                            $productColors  = \App\Models\ProductColor::where('product_id', $product->id)->get();
                                                            ?>
                                                            @foreach($productColors as $col=>$productColor)
                                                                <?php
                                                                $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();
                                                                ?>
                                                                <li class="border-0" style="font-size: 10px">
                                                                    <input type="radio" name="color" {{ $col === 0 ? 'checked' : '' }} class="m-1" value="{{ $color->name }}" /> {{ $color->name }}
                                                                </li>
                                                            @endforeach

                                                        </ul>
                                                    </div>
                                                    {{--                                                    <br/><span class="sc-msg{{ $product->id }} text-danger"></span>--}}
                                                </div>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart"><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" onclick="productId({{ $product->id }})" >add to cart</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>

    {{-- women fashion--}}

    <!--banner area start-->
    <div class="banner_area banner_column2 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner2.jpg" alt=""></a>
                        </div>

                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner3.jpg" alt=""></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner area end-->

    {{-- Electronics--}}

    <section class="home_product_area mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product_header">
                        <div class="section_title">
                            <h2 class="text-white p-3 rounded-pill" style="background: rgba(255,20,32,0.83);font-size: 15px">{{$data['electronics_section']['category']->name}}</h2>
                        </div>
                        <div class="product_tab_button">
                            <ul class="nav" role="tablist">
                                @foreach($data['electronics_section']['subCategories'] as $key=>$subCategory)
                                    <li>
                                        <a class="{{$key==0 ? 'active' : ''}}" data-toggle="tab" href="#electro{{$key}}" role="tab" aria-controls="leftop1" aria-selected="true">
                                            {{$subCategory->sub_category_name}}
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>

                    <div class="tab-content">
                        @foreach ($data['electronics_section']['subCategories'] as $index=>$subCategory)
                            <div class="tab-pane fade show {{$index==0 ?'active':''}}" id="electro{{$index}}" role="tabpanel">
                                <div class="product_carousel product_column4 owl-carousel">
                                    <?php
                                    $products = \App\Models\Product::where('sub_category_id',$subCategory->id)->where('status',1)->orderBy('id','desc')->get();
                                    ?>
                                    @foreach($products as $product)
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                                    <img src="{{asset($product->image)}}" class="px-5" alt="" style="height: 170px"/>
                                                </a>
                                                @isset($product->discount)
                                                    <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                        <span class="label_sale"> - {{$product->discount}} % </span>
                                                    </div>
                                                @endisset
                                                <div class="quick_button">
                                                    {{--<a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                                    <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <div class="product_name">
                                                    <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                                </div>
                                                <div class="price_box">
                                                    @isset($product->regular_price)
                                                        <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                                    @endisset
                                                    <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                                </div>
                                                <div class="product_variant color">
                                                    <a  onclick="showMe({{$product->id}})" class="text-primary sc-hide{{ $product->id }}">view size and color</a>
                                                    <div class="hide-me sico-div{{ $product->id }}">
                                                        <a  onclick="hideMe({{ $product->id }})" class="text-danger float-right mr-2">X</a>
                                                        <?php
                                                        $productSizes =\App\Models\ProductSize::where('product_id',$product->id)->orderBy('id','desc')->get();
                                                        ?>
                                                        <ul class="size{{ $product->id }}" >
                                                            @foreach($productSizes as $productSize)
                                                                <?php
                                                                $productSizeName = \App\Models\Size::find($productSize->size_id)->name;
                                                                ?>

                                                                <li class="border-0 " style="font-size: 10px" >
                                                                    <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" />{{$productSizeName}}
                                                                </li>
                                                            @endforeach
                                                        </ul>
                                                        <ul class="color{{ $product->id }}">
                                                            <?php
                                                            $productColors  = \App\Models\ProductColor::where('product_id', $product->id)->get();
                                                            ?>
                                                            @foreach($productColors as $col=>$productColor)
                                                                <?php
                                                                $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();
                                                                ?>
                                                                <li class="border-0" style="font-size: 10px">
                                                                    <input type="radio" name="color" {{ $col === 0 ? 'checked' : '' }} class="m-1" value="{{ $color->name }}" /> {{ $color->name }}
                                                                </li>
                                                            @endforeach

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart"><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" onclick="productId({{ $product->id }})" >add to cart</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endforeach
                    </div>

                </div>
            </div>
        </div>

    </section>

    {{-- Electronics--}}

    <!--banner area start-->
    <div class="banner_area banner_column2 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner2.jpg" alt=""></a>
                        </div>

                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner3.jpg" alt=""></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner area end-->

    {{-- Mobile Accessories--}}
    <!--new product area start-->
    <section class="new_product_area mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2 class="text-white p-3 text-center rounded-pill " style="background:#0b2e13;width: 210px;font-size: 15px;">{{$data['mobile_section']['category']->name}}</h2>
                        {{--  <p class="text-white py-3 p-2 text-uppercase font-22" style="background:#0b2e13;width: 200px;">{{$data['mobile_section']['category']->name}}</p>--}}
                    </div>

                </div>
            </div>
            <div class="new_product_two_container">
                <div class="row no-gutters">
                    <div class="col-lg-3 col-md-12">
                        <div class="single_banner">
                            <div class="banner_thumb border">
                                <a href="{{route('category-product',['id'=>$data['mobile_section']['category']->id,'name'=>preg_replace('/\s+/u', '-', trim($data['mobile_section']['category']->name))])}}">
                                    <img src="{{asset($data['mobile_section']['category']->image)}}"  style="height: 363px;" alt="" />
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-9 col-md-12">
                        <div class="product_carousel product_column3 owl-carousel">

                            @foreach($data['mobile_section']['products'] as $product)
                                <div class="single_product" >
                                    <div class="product_thumb">
                                        <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                            <img src="{{asset($product->image)}}" class="px-5"  alt="" style="height: 170px" />
                                        </a>
                                        @isset($product->discount)
                                            <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                <span class="label_sale"> - {{$product->discount}} % </span>
                                            </div>
                                        @endisset
                                        <div class="quick_button">
                                            {{--  <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                               <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                        </div>
                                        <div class="price_box">
                                            @isset($product->regular_price)
                                                <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                            @endisset
                                            <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                        </div>
                                        <div class="product_variant color">
                                            <a  onclick="showMe({{$product->id}})" class="text-primary sc-hide{{ $product->id }}">view size and color</a>
                                            <div class="hide-me sico-div{{ $product->id }}">
                                                <a  onclick="hideMe({{ $product->id }})" class="text-danger float-right mr-2">X</a>
                                                <?php
                                                $productSizes =\App\Models\ProductSize::where('product_id',$product->id)->orderBy('id','desc')->get();
                                                ?>

                                                <ul class="size{{ $product->id }}" >
                                                    @foreach($productSizes as $productSize)
                                                        <?php
                                                        $productSizeName = \App\Models\Size::find($productSize->size_id)->name;
                                                        ?>

                                                        <li class="border-0 " style="font-size: 10px" >
                                                            <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" />{{$productSizeName}}
                                                        </li>
                                                    @endforeach
                                                </ul>
                                                <ul class="color{{ $product->id }}">
                                                    <?php
                                                    $productColors  = \App\Models\ProductColor::where('product_id', $product->id)->get();
                                                    ?>
                                                    @foreach($productColors as $col=>$productColor)
                                                        <?php
                                                        $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();
                                                        ?>
                                                        <li class="border-0" style="font-size: 10px">
                                                            <input type="radio" name="color" {{ $col === 0 ? 'checked' : '' }} class="m-1" value="{{ $color->name }}" /> {{ $color->name }}
                                                        </li>
                                                    @endforeach

                                                </ul>
                                            </div>
                                            {{--                                                    <br/><span class="sc-msg{{ $product->id }} text-danger"></span>--}}
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" onclick="productId({{ $product->id }})" >add to cart</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--new product area end-->

    {{-- Mobile Accessories--}}

    <!--banner area start-->
    <div class="banner_area banner_column2 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner2.jpg" alt=""></a>
                        </div>

                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner3.jpg" alt=""></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner area end-->

    {{-- Kids Item--}}
    <!--new product area start-->
    <section class="new_product_area mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2 class="text-white p-3 text-center rounded-pill " style="background: #13b93d;width: 150px;font-size: 15px">{{$data['kids_section']['category']->name}}</h2>
                    </div>
                </div>
            </div>
            <div class="new_product_two_container">
                <div class="row no-gutters">
                    <div class="col-lg-3 col-md-12">
                        <div class="single_banner">
                            <div class="banner_thumb border">
                                <a href="{{route('category-product',['id'=>$data['kids_section']['category']->id,'name'=>preg_replace('/\s+/u', '-', trim($data['kids_section']['category']->name))])}}">
                                    <img src="{{asset($data['kids_section']['category']->image)}}"   alt="" style="height: 363px" />
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-9 col-md-12">
                        <div class="product_carousel product_column3 owl-carousel">
                            @foreach($data['kids_section']['products'] as $product)
                                <div class="single_product" >
                                    <div class="product_thumb">
                                        <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                            <img src="{{asset($product->image)}}" class="px-5" alt="" style="height:170px" />
                                        </a>
                                        @isset($product->discount)
                                            <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                <span class="label_sale"> - {{$product->discount}} % </span>
                                            </div>
                                        @endisset
                                        <div class="quick_button">
                                        {{--<a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                            <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                        </div>
                                        <div class="price_box">
                                            @isset($product->regular_price)
                                                <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                            @endisset
                                            <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                        </div>
                                        <div class="product_variant color">
                                            <a  onclick="showMe({{$product->id}})" class="text-primary sc-hide{{ $product->id }}">view size and color</a>
                                            <div class="hide-me sico-div{{ $product->id }}">
                                                <a  onclick="hideMe({{ $product->id }})" class="text-danger float-right mr-2">X</a>
                                                <?php
                                                $productSizes =\App\Models\ProductSize::where('product_id',$product->id)->orderBy('id','desc')->get();
                                                ?>

                                                <ul class="size{{ $product->id }}" >
                                                    @foreach($productSizes as $productSize)
                                                        <?php
                                                        $productSizeName = \App\Models\Size::find($productSize->size_id)->name;
                                                        ?>

                                                        <li class="border-0 " style="font-size: 10px" >
                                                            <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" />{{$productSizeName}}
                                                        </li>
                                                    @endforeach
                                                </ul>
                                                <ul class="color{{ $product->id }}">
                                                    <?php
                                                    $productColors  = \App\Models\ProductColor::where('product_id', $product->id)->get();
                                                    ?>
                                                    @foreach($productColors as $col=>$productColor)
                                                        <?php
                                                        $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();
                                                        ?>
                                                        <li class="border-0" style="font-size: 10px">
                                                            <input type="radio" name="color" {{ $col === 0 ? 'checked' : '' }} class="m-1" value="{{ $color->name }}" /> {{ $color->name }}
                                                        </li>
                                                    @endforeach

                                                </ul>
                                            </div>
                                            {{--                                                    <br/><span class="sc-msg{{ $product->id }} text-danger"></span>--}}
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" onclick="productId({{ $product->id }})" onclick="productId({{ $product->id }})" >add to cart</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--new product area end-->

    {{-- Kids Item--}}

    <!--banner area start-->
    <div class="banner_area banner_column2 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner2.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner3.jpg" alt=""></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner area end-->

    {{-- Household--}}
    <!--new product area start-->
    <section class="new_product_area mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2 class="text-white p-3 text-center rounded-pill " style="background: #ff9900;width: 150px;font-size: 15px">{{$data['household_section']['category']->name}}</h2>
                    </div>
                </div>
            </div>
            <div class="new_product_two_container">
                <div class="row no-gutters">
                    <div class="col-lg-3 col-md-12">
                        <div class="single_banner">
                            <div class="banner_thumb border">
                                <a href="{{route('category-product',['id'=>$data['household_section']['category']->id,'name'=>preg_replace('/\s+/u', '-', trim($data['household_section']['category']->name))])}}">
                                    <img src="{{asset($data['household_section']['category']->image)}}" style="height:363px" alt="" />
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-9 col-md-12">
                        <div class="product_carousel product_column3 owl-carousel">

                            @foreach($data['household_section']['products'] as $product)
                                <div class="single_product" >
                                    <div class="product_thumb">
                                        <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                            <img src="{{asset($product->image)}}" class="px-5" alt="" style="height: 170px">
                                        </a>
                                        @isset($product->discount)
                                            <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                <span class="label_sale"> - {{$product->discount}} % </span>
                                            </div>
                                        @endisset
                                        <div class="quick_button">
                                            {{--<a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                              <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                        </div>
                                        <div class="price_box">
                                            @isset($product->regular_price)
                                                <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                            @endisset
                                            <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                        </div>
                                        <div class="product_variant color">
                                            <a  onclick="showMe({{$product->id}})" class="text-primary sc-hide{{ $product->id }}">view size and color</a>
                                            <div class="hide-me sico-div{{ $product->id }}">
                                                <a  onclick="hideMe({{ $product->id }})" class="text-danger float-right mr-2">X</a>
                                                <?php
                                                $productSizes =\App\Models\ProductSize::where('product_id',$product->id)->orderBy('id','desc')->get();
                                                ?>

                                                <ul class="size{{ $product->id }}" >
                                                    @foreach($productSizes as $productSize)
                                                        <?php
                                                        $productSizeName = \App\Models\Size::find($productSize->size_id)->name;
                                                        ?>

                                                        <li class="border-0 " style="font-size: 10px" >
                                                            <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" />{{$productSizeName}}
                                                        </li>
                                                    @endforeach
                                                </ul>
                                                <ul class="color{{ $product->id }}">
                                                    <?php
                                                    $productColors  = \App\Models\ProductColor::where('product_id', $product->id)->get();
                                                    ?>
                                                    @foreach($productColors as $col=>$productColor)
                                                        <?php
                                                        $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();
                                                        ?>
                                                        <li class="border-0" style="font-size: 10px">
                                                            <input type="radio" name="color" {{ $col === 0 ? 'checked' : '' }} class="m-1" value="{{ $color->name }}"/> {{ $color->name }}
                                                        </li>
                                                    @endforeach

                                                </ul>
                                            </div>
                                            {{--                                                    <br/><span class="sc-msg{{ $product->id }} text-danger"></span>--}}
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" onclick="productId({{ $product->id }})" >add to cart</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--new product area end-->

    {{--Household--}}

    <!--banner area start-->
    <div class="banner_area banner_column2 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner2.jpg" alt=""/></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner3.jpg" alt=""/></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner area end-->

    {{-- computer--}}
    <!--new product area start-->
    <section class="new_product_area mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h3 class="text-white p-3 rounded-pill text-center" style="background:darkmagenta;width: 231px;font-size: 14px">{{$data['computer_section']['category']->name}}</h3>
                    </div>
                </div>
            </div>
            <div class="new_product_two_container">
                <div class="row no-gutters">
                    <div class="col-lg-3 col-md-12">
                        <div class="single_banner">
                            <div class="banner_thumb border">
                                <a href="{{route('category-product',['id'=>$data['computer_section']['category']->id,'name'=>preg_replace('/\s+/u', '-', trim($data['computer_section']['category']->name))])}}">
                                    <img src="{{asset($data['computer_section']['category']->image)}}"  alt="" style="height:363px"/>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-9 col-md-12">
                        <div class="product_carousel product_column3 owl-carousel">
                            @foreach($data['computer_section']['products'] as $product)
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                            <img src="{{asset($product->image)}}" class="px-5" alt="" style="height:170px"/>
                                        </a>
                                        @isset($product->discount)
                                            <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                <span class="label_sale"> - {{$product->discount}} % </span>
                                            </div>
                                        @endisset
                                        <div class="quick_button">
                                            {{--    <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                            <a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                        </div>
                                        <div class="price_box">
                                            @isset($product->regular_price)
                                                <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                            @endisset
                                            <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                        </div>
                                        <div class="product_variant color">
                                            <a  onclick="showMe({{$product->id}})" class="text-primary sc-hide{{ $product->id }}">view size and color</a>
                                            <div class="hide-me sico-div{{ $product->id }}">
                                                <a  onclick="hideMe({{ $product->id }})" class="text-danger float-right mr-2">X</a>
                                                <?php
                                                $productSizes =\App\Models\ProductSize::where('product_id',$product->id)->orderBy('id','desc')->get();
                                                ?>

                                                <ul class="size{{ $product->id }}" >
                                                    @foreach($productSizes as $productSize)
                                                        <?php
                                                        $productSizeName = \App\Models\Size::find($productSize->size_id)->name;
                                                        ?>

                                                        <li class="border-0 " style="font-size: 10px" >
                                                            <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" />{{$productSizeName}}
                                                        </li>
                                                    @endforeach
                                                </ul>
                                                <ul class="color{{ $product->id }}">
                                                    <?php
                                                    $productColors  = \App\Models\ProductColor::where('product_id', $product->id)->get();
                                                    ?>
                                                    @foreach($productColors as $col=>$productColor)
                                                        <?php
                                                        $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();
                                                        ?>
                                                        <li class="border-0" style="font-size: 10px">
                                                            <input type="radio" name="color" {{ $col === 0 ? 'checked' : '' }} class="m-1" value="{{ $color->name }}" /> {{ $color->name }}
                                                        </li>
                                                    @endforeach

                                                </ul>
                                            </div>

                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" onclick="productId({{ $product->id }})" >add to cart</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--new product area end-->

    {{-- computer--}}
    <!--banner area start-->
    <div class="banner_area mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="single_banner">
                        <div class="banner_thumb">
                            <a href="shop.html"><img src="{{asset('/')}}front/assets/img/bg/banner4.jpg" alt=""/></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner area end-->
    {{-- kitchen--}}
    <!--new product area start-->
    <section class="new_product_area mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h3 class="text-white p-3 rounded-pill" style="background:#00bfff; width: 230px;font-size: 15px">{{$data['kitchen_section']['category']->name}}</h3>
                    </div>
                </div>
            </div>
            <div class="new_product_two_container" style="border-top: 2px solid #00bfff; border-bottom: 2px solid #00bfff">
                <div class="row no-gutters">
                    <div class="col-lg-3 col-md-12">
                        <div class="single_banner">
                            <div class="banner_thumb border">
                                <a href="{{route('category-product',['id'=>$data['kitchen_section']['category']->id,'name'=>preg_replace('/\s+/u', '-', trim($data['kitchen_section']['category']->name))])}}">
                                    <img src="{{asset($data['kitchen_section']['category']->image)}}" style="height: 363px"  alt="" />
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-12">
                        <div class="product_carousel product_column3 owl-carousel">
                            @foreach($data['kitchen_section']['products'] as $product)
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">
                                            <img src="{{asset($product->image)}}" class="px-5" style="height: 170px;"  alt=""/>
                                        </a>
                                        @isset($product->discount)
                                            <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                <span class="label_sale"> - {{$product->discount}} % </span>
                                            </div>
                                        @endisset
                                        <div class="quick_button">
                                            {{--  <a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
                                            <a href="#" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h3><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}">{{$product->name}}</a></h3>
                                        </div>
                                        <div class="price_box">
                                            @isset($product->regular_price)
                                                <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                            @endisset
                                            <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                        </div>
                                        <div class="product_variant color">
                                            <a  onclick="showMe({{$product->id}})" class="text-primary sc-hide{{ $product->id }}">view size and color</a>
                                            <div class="hide-me sico-div{{ $product->id }}">
                                                <a  onclick="hideMe({{ $product->id }})" class="text-danger float-right mr-2">X</a>
                                                <?php
                                                $productSizes =\App\Models\ProductSize::where('product_id',$product->id)->orderBy('id','desc')->get();
                                                ?>

                                                <ul class="size{{ $product->id }}" >
                                                    @foreach($productSizes as $productSize)
                                                        <?php
                                                        $productSizeName = \App\Models\Size::find($productSize->size_id)->name;
                                                        ?>

                                                        <li class="border-0 " style="font-size: 10px" >
                                                            <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" />{{$productSizeName}}
                                                        </li>
                                                    @endforeach
                                                </ul>
                                                <ul class="color{{ $product->id }}">
                                                    <?php
                                                    $productColors  = \App\Models\ProductColor::where('product_id', $product->id)->get();
                                                    ?>
                                                    @foreach($productColors as $col=>$productColor)
                                                        <?php
                                                        $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();
                                                        ?>
                                                        <li class="border-0" style="font-size: 10px">
                                                            <input type="radio" name="color" {{ $col === 0 ? 'checked' : '' }} class="m-1" value="{{ $color->name }}" /> {{ $color->name }}
                                                        </li>
                                                    @endforeach

                                                </ul>
                                            </div>
                                            {{--                                                    <br/><span class="sc-msg{{ $product->id }} text-danger"></span>--}}
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="add_to_cart"><a href="{{route('product-details',['id'=>$product->id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" onclick="productId({{ $product->id }})" >add to cart</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--new product area end-->
@endsection
