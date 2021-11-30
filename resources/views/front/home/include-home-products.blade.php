@foreach($layouts as $layout)
    @if($layout->layout_type == 3)
        <!--home product area start-->
        <section class="home_product_area mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-12 ">
                        @php
                            $subCategories  =   \App\Models\SubCategory::where('category_id',$layout->category->id)->where('status', 1)->orderBy('id','desc')->take(5)->get();
                        @endphp

                        <div class="product_header">
                            <div class="section_title">
                                <h2 class="text-white p-3 rounded-pill" style="background: rgba(55,179,21,0.83);font-size: 15px" >{{$layout->category->name}}</h2>
                            </div>
                            <div class="product_tab_button">
                                <ul class="nav" role="tablist">
                                    @if(count($subCategories)>0)
                                        @foreach($subCategories as $key=>$subCategory)
                                            <li>
                                                <a class="{{$key==0 ? 'active' : ''}}" data-toggle="tab" href="#{{str_replace(' ','',$subCategory->sub_category_name).$key}}" role="tab" aria-controls="leftop1" aria-selected="true">
                                                    {{$subCategory->sub_category_name}}
                                                </a>
                                            </li>
                                        @endforeach
                                    @endif
                                </ul>
                            </div>
                        </div>
                        <form action=""  enctype="multipart/form-data" id="addCartForm">
                            @csrf
                            <div class="tab-content ">
                                @foreach ($subCategories as $index=>$subCategory)
                                    @php
                                        $products = \App\Models\Product::where('sub_category_id',$subCategory->id)->where('status',1)->orderBy('id','desc')->get();
                                    @endphp
                                    <div class="tab-pane fade show {{$index==0 ?'active':''}}" id="{{str_replace(' ','',$subCategory->sub_category_name).$index}}" role="tabpanel">
                                        <div class="product_carousel product_column4 owl-carousel">
                                            @if(count($products)>0)
                                                @foreach($products as $product)
                                                    @php
                                                        $productPrice = \App\Models\Purchase::where('product_id',$product->id)->first();
                                                    @endphp
                                                    <div class="single_product">
                                                        <div class="product_thumb">
                                                            <a href="{{route('product-details',['slug'=>$product->slug])}}">
                                                                <img src="{{asset($product->image)}}" class="px-5" alt="" style="height:170px" />
                                                            </a>
                                                            @isset($productPrice->discount)
                                                                <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                                    <span class="label_sale"> - {{$productPrice->discount}} % </span>
                                                                </div>
                                                            @endisset

                                                            <div class="quick_button">
                                                                <a href="{{route('product-details',['slug'=>$product->slug])}}" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>

                                                            </div>
                                                        </div>
                                                        <div class="product_content ">
                                                            <div class="product_name">
                                                                <h3><a href="{{route('product-details',['slug'=>$product->slug])}}">{{$product->name}}</a></h3>
                                                            </div>
                                                            <div class="price_box">
                                                                @isset($productPrice->regular_price)
                                                                    <span class="old_price">{{isset($productPrice->regular_price) ? number_format($productPrice->regular_price) : ''}}</span>
                                                                @endisset

                                                                @isset($productPrice->sell_price)
                                                                    <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($productPrice->sell_price)}}</span>
                                                                @endisset
                                                            </div>
                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart"><a  href="{{route('product-details',['slug'=>$product->slug])}}"  class="abc ">add to cart</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            @endif
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </section>
        <!--home product area end-->

    @elseif($layout->layout_type == 2)
        <section class="new_product_area mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_title">
                            <h2 class="text-white p-3 text-center rounded-pill " style="background:#0b2e13;width: 232px;font-size: 15px;">{{$layout->category->name}}</h2>
                        </div>

                    </div>
                </div>
                <div class="new_product_two_container">
                    <div class="row no-gutters">
                        <div class="col-lg-3 col-md-12">
                            <div class="single_banner">
                                <div class="banner_thumb border">
                                    <a href="{{route('category-product',['slug'=>$layout->category->slug])}}">
                                        <img src="{{asset($layout->category->image)}}"   alt="" style="height: 350px" />
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-12">
                            <div class="product_carousel product_column3 owl-carousel">
                                @php
                                    $products       =   \App\Models\Product::where('category_id',$layout->category->id)->where('status',1)->orderBy('id','desc')->get();
                                @endphp
                                @if(count($products)>0)
                                    @foreach($products as $product)
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a href="{{route('product-details',['slug'=>$product->slug])}}">
                                                    <img src="{{asset($product->image)}}" class="px-5" alt="" style="height:170px" />
                                                </a>
                                                @isset($product->discount)
                                                    <div class="label_product position-absolute" style="top:0px;right: 29px;">
                                                        <span class="label_sale"> - {{$product->discount}} % </span>
                                                    </div>
                                                @endisset
                                                <div class="quick_button">
                                                    <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <div class="product_name" >
                                                    <h3><a href="{{route('product-details',['slug'=>$product->slug])}}">{{$product->name}}</a></h3>
                                                </div>
                                                <div class="price_box">
                                                    @isset($product->regular_price)
                                                        <span class="old_price">{{isset($product->regular_price) ? number_format( $product->regular_price) : ''}}</span>
                                                    @endisset
                                                    <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                                                </div>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart"><a href="{{route('product-details',['slug'=>$product->slug])}}" >add to cart</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--banner area end-->
    @elseif($layout->layout_type == 1)
        <section class="new_product_area mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_title">
                            <h2 class="text-white p-3 text-center rounded-pill" style="background: #13b93d;width: 232px;font-size: 15px">{{$layout->category->name}}</h2>
                        </div>
                    </div>
                </div>
                <div class="new_product_two_container">
                    <div class="row no-gutters">
                        <div class="col-lg-3 col-md-12">
                            <div class="single_banner">
                                <div class="banner_thumb border">
                                    <a href="{{route('category-product',['slug'=>$layout->category->slug])}}">
                                        <img src="{{asset($layout->category->image)}}" class="w-100" style="height: 350px" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>

                        @php
                            $products       =   \App\Models\Product::where('category_id',$layout->category->id)->where('status',1)->orderBy('id','desc')->get();
                        @endphp
                        <div class="col-lg-9 col-md-12">
                            <div class="product_carousel product_column4 owl-carousel">
                                @if(count($products)>0)
                                    @foreach($products as $product)
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a href="{{route('product-details',['slug'=>$product->slug])}}">
                                                    <img src="{{asset($product->image)}}" style="height: 240px" alt="">
                                                </a>
                                                <div class="label_product">
                                                    <span class="label_sale">sale</span>
                                                </div>
                                                <div class="quick_button">
                                                    <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$product->id}}"> <i class="zmdi zmdi-eye"></i></a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <div class="product_name">
                                                    <h3><a href="{{route('product-details',['slug'=>$product->slug])}}">{{$product->name}}</a></h3>
                                                </div>
                                                <div class="price_box">
                                                    <span class="text-primary">Tk.</span><span class="current_price ml-2"> {{number_format($product->sell_price,2)}} </span>
                                                    <span class="old_price">{{ isset($product->regular_price) ? $product->regular_price : '' }}</span>
                                                </div>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart"><a href="{{route('product-details',['slug'=>$product->slug])}}" title="add to cart">add to cart</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    @endif
@endforeach

