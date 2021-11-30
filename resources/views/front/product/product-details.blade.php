@extends('front.master')
@section('title')
beshibuy.com
@endsection

<!-- facebook share -->
@section('meta')
    <meta property="fb:app_id"          content="721169328514907" />
    <meta property="og:url"             content="https://beshibuy.com/product/product-details/{{ $product->id }}/{{ preg_replace('/\s+/u', '-', trim($product->name)) }}"/>
    <meta property="og:type"            content="Ecommerce - Website">
    <meta property="og:title"           content="{{$product->name}} " />
    <meta property="og:description"     content="{{Str::limit($product->short_description,20)}}" />
    <meta property="og:image"           content="http://beshibuy.com/{{$product->image}}"/>
    <meta property="og:image:width"     content="1200">
    <meta property="og:image:height"    content="630">

@endsection
<!-- facebook share -->

@section('body')



    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="{{route('/')}}">home</a></li>
                            <li>product details</li>
                            <li>
                                {{ $productSlug ?? '' }}
                                <input type="hidden" value="{{ $productSlug ?? '' }}" id="productSlug">
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->
    <!--product details start-->
    <div class="product_details mt-60  mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">

                    <div class="product-details-tab " >
                        <div id="img-1" class="zoomWrapper single-zoom" >
                            <a href="javascript:void(0)">
                                <img id="zoom1"  src="{{asset($product->big_image !=null ? $product->big_image : $product->image )}}" data-zoom-image="{{asset($product->big_image !=null?$product->big_image:$product->image )}}"/>
                            </a>
                        </div>

                        <div class="single-zoom-thumb" >
                            <ul class="s-tab-zoom owl-carousel single-product-active" id="gallery_01">
                                @foreach($subImages as $key=>$subImage)
                                <li>
                                    <a href="javascript:void(0)" class="elevatezoom-gallery  {{$key==0 ?'active':''}}" data-update="" data-image="{{asset($subImage->sub_image)}}" data-zoom-image="{{asset($subImage->sub_image)}}">
                                        <img src="{{asset($subImage->sub_image)}}" alt="zo-th-1" style="height: 90px"/>
                                    </a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product_d_right">
                            <h1>{{$product->name}}</h1>
                            <div class="price_box">
                               @isset($product->regular_price)
                                    <span class="old_price">{{number_format( $product->regular_price,2)}}</span>
                                @endisset
                                <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($product->sell_price,2)}}</span>
                            </div>
                            <div class="product_desc">
                                <p>{{$product->short_description}}</p>
                            </div>
                            <form action="" method="POST">
                             @csrf
                            <div class="product_variant color mt-3">
                                <label>size :</label>
                                <?php
                                    $productSizes =\App\Models\ProductSize::where('product_id',$product->id)->orderBy('id','desc')->get();
                                ?>
                                <ul class="size{{ $product->id }}">
                                    @foreach($productSizes as $productSize)
                                        <?php
                                        $productSizeName = \App\Models\Size::find($productSize->size_id)->name;
                                        ?>
                                        <li class="border-0 mt-2">
                                            <input type="radio" name="size_name" id="size" value="{{$productSizeName}}" class="mx-2" required>{{$productSizeName}}
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="product_variant color mt-3">
                                <label>Color :</label>
                                <?php
                                    $productColors  = \App\Models\ProductColor::where('product_id', $product->id)->get();
                                ?>
                                <ul class="color{{ $product->id }}">
                                    @foreach($productColors as $col=>$productColor)
                                        <?php
                                            $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();
                                        ?>
                                        <li class="border-0">
                                            <input type="radio" name="color" id="color" class="m-1" value="{{ $color->name }}" required> {{ $color->name }}
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="product_variant quantity">
                                <label>quantity</label>
                                <input type="number" id="qty" name="qty" style=" background-color: #fff;" value="1" min="1"/>
                                <input type="hidden" id="product_id" name="id" value="{{$product->id}}"/>
                            </div>
                            <ul style="margin-top: 40px">
                                <li class="add_to_cart">
                                    <button type="submit" value="1" name="btn" onclick="productId({{$product->id}})" class="btn btn-outline-success rounded-pill border-success float-left" style="border: 2px solid" >
                                        <i class="zmdi zmdi-shopping-cart-plus"></i>
                                        add to cart
                                    </button>
                                </li>
                                <li class="add_to_cart">
                                    <button type="submit" name="btn" value="0" onclick="goToCheckOut({{$product->id}})" class="btn btn-outline-danger rounded-pill border-danger  ml-4" style="border: 2px solid" >
                                        <i class="zmdi zmdi-shopping-cart-plus"></i>
                                        order now
                                    </button>
                                </li>
                            </ul>
                        </form>
                        {{--<div class="priduct_social" style="margin-top: 70px">--}}
                        <div class="modal_social mt-60">
                            <h2>Share this product</h2>
                            <ul>
                                <!--fb sharing button -->
                                    <div class="addthis_inline_share_toolbox_mscd"></div>

                                <!--fb sharing button -->

                                <!--<?php
                                    $name   =   preg_replace('/\s+/u', '-', trim($product->name));
                                    $url    =   url('/product/product-details/'.$product->id.'/'.$name);

                                ?>-->

                                <li class="facebook">
                                    <a href="javascript:void(0)" onclick="fbShare('{{ $url }}', '{{ $product->name }}')" id="shareBtn"><i class="fa fa-facebook"></i></a>
                                    {{--<a href="#"><i class="fa fa-facebook"></i></a>--}}
                                </li>

                                <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--product details end-->

    <!--product info start-->
    <div class="product_d_info">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product_d_inner">
                        <div class="product_info_button">
                            <ul class="nav" role="tablist">
                                <li >
                                    <a class="active" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="false">Description</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#sheet" role="tab" aria-controls="sheet" aria-selected="false">Specification</a>
                                </li>
                            {{-- <li>--}}
                            {{-- <a data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">Reviews (1)</a>--}}
                            {{--  </li>--}}
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="info" role="tabpanel" >
                                <div class="product_info_content">
                                    <p>{{$product->short_description}}</p>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="sheet" role="tabpanel" >
                                <div class="product_info_content">
                                    <p>{!! $product->long_description !!}</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--product info end-->

    <!--video & conditions start-->
    <div class="container pb-4">
        <div class="row">
            <div class="{{ $product->video_url != null ? 'col-md-7' : 'col-md-12' }}">
                <div class="w-100" style="background-color: #e9eaeb; height: 50px;">
                    <h5 class="f-s-24 p-t-17 p-l-10">দ্রষ্টব্য : </h5>
                    <p class="text-justify m-t-25">১। প্রোডাক্টের অর্ডার স্টক থাকা সাপেক্ষে ডেলিভারি করা হবে। অনিবার্য কারনে পন্যের ডেলিভারিতে বিক্রেতা প্রতিশ্রুত ডেলিভারি সময়ের বেশী সময় লাগতে পারে।</p>
                    <p class="text-justify">২। অর্ডার কনফার্মেশনের পরেও অনিবার্য কারনবশত যেকোনো সময়ে BeshiBuy আপনার অর্ডার বাতিল করার ক্ষমতা রাখে। এক্ষেত্রে অগ্রিম মুল্য প্রদান করা হলে রিফান্ডের প্রয়োজনীয় তথ্য (বিকাশ নং/রকেট নং/কার্ড নং ও অন্যান্য) এবং প্রোডাক্ট ডেলিভারির জন্য কুরিয়ার দেয়ার পর আপনি গ্রহণ না করলে উক্ত কুরিয়ার থেকে প্রোডাক্টটি আজকেরডিলে ফেরত আসার পর সর্বোচ্চ ১০ কার্যদিবসের মধ্যে টাকা ফেরত দেয়া হবে।</p>
                    <p class="text-justify">৩। যে সকল প্রোডাক্টের গায়ে মূল্য লেখা থাকে এবং কোনো কারণে BeshiBuy মূল্য তার থেকে যদি বেশি থাকে, সেক্ষেত্রে অতিরিক্ত মূল্যের ক্ষেত্রে আপনাকে অতিসত্তর ৪৮ ঘন্টার মধ্যে complain@beshibuy.com এ মেইল করে কমপ্লেইন রেজিস্টার করতে হবে। আপনার কমপ্লেইনটি ঠিক হলে আপনার প্রদানকৃত অতিরিক্ত মূল্য ১০ কার্যদিবসের মধ্যে বিকাশের মাধ্যমে ফেরত দেয়া হবে।</p>
                    <div class="float-right">
                        <a href="{{ route('return-policy') }}" class="" target="_blank">Replacement policy</a>
                        <a href=""  class="">Refund policy</a>
                    </div>
                </div>
            </div>
            <div class="{{ $product->video_url != null ? 'col-md-5' : 'hide-me' }}">
                @if(isset($product->video_url))
                    <div id="productVideo">
                        {!! $product->video_url !!}
                    </div>
                @endif
            </div>
        </div>
    </div>
    <!--video & conditions end-->

    <!--product area start-->
    <section class="product_area related_products mb-47">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2>Related Products</h2>
                    </div>
                    <div  class="product-details-related-products" id="product-details-related-products">
{{--                        <div class="product_carousel product_column4 owl-carousel" >--}}
{{--                            @foreach($relatedProducts as $relatedProduct)--}}
{{--                                <div class="single_product">--}}
{{--                                    <div class="product_thumb">--}}
{{--                                        <a href="{{route('product-details',['slug'=>$relatedProduct->slug])}}" data-slug="" class="">--}}
{{--                                            <img src="{{asset($relatedProduct->image)}}" class="px-5" alt="" style="height: 170px">--}}
{{--                                        </a>--}}
{{--                                        @isset($relatedProduct->discount)--}}
{{--                                            <div class="label_product position-absolute" style="top:0px;right: 29px;">--}}
{{--                                                <span class="label_sale"> - {{$relatedProduct->discount}} % </span>--}}
{{--                                            </div>--}}
{{--                                        @endisset--}}
{{--                                        <div class="quick_button">--}}
{{--                                            --}}{{--                                    <a href="{{route('product-details',['slug'=>$relatedProduct->slug])}}" title="quick view"> <i class="zmdi zmdi-eye"></i></a>--}}
{{--                                            <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_box"  title="quick view" class="quickView" data-id="{{$relatedProduct->id}}"> <i class="zmdi zmdi-eye"></i></a>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                    <div class="product_content">--}}
{{--                                        <div class="product_name">--}}
{{--                                            <h3><a href="{{route('product-details',['slug'=>$relatedProduct->slug])}}">{{$relatedProduct->name}}</a></h3>--}}
{{--                                        </div>--}}
{{--                                        <div class="price_box">--}}
{{--                                            @isset($relatedProduct->regular_price)--}}
{{--                                                <span class="old_price">{{number_format( $relatedProduct->regular_price,2)}}</span>--}}
{{--                                            @endisset--}}
{{--                                            <span class="text-danger ml-2"><span class="text-primary">Tk. </span> {{number_format($relatedProduct->sell_price,2)}}</span>--}}
{{--                                        </div>--}}
{{--                                        <div class="product_variant color">--}}
{{--                                            <a  onclick="showMe({{$relatedProduct->id}})" class="text-primary sc-hide{{ $relatedProduct->id }} ">view size and color</a>--}}
{{--                                            <div class="hide-me sico-div{{ $relatedProduct->id }}">--}}
{{--                                                <a  onclick="hideMe({{ $relatedProduct->id }})" class="text-danger float-right mr-2">X</a>--}}
{{--                                                <?php--}}
{{--                                                $productSizes =\App\Models\ProductSize::where('product_id',$relatedProduct->id)->orderBy('id','desc')->get();--}}
{{--                                                ?>--}}
{{--                                                <ul class="size{{ $relatedProduct->id }}" >--}}
{{--                                                    @foreach($productSizes as $productSize)--}}
{{--                                                        <?php--}}
{{--                                                        $productSizeName = \App\Models\Size::find($productSize->size_id)->name;--}}
{{--                                                        ?>--}}

{{--                                                        <li class="border-0 " style="font-size: 10px" >--}}
{{--                                                            <input  type="radio" name="size_name" value="{{$productSizeName}}" class="m-1" >{{$productSizeName}}--}}
{{--                                                        </li>--}}
{{--                                                    @endforeach--}}
{{--                                                </ul>--}}
{{--                                                <ul class="color{{ $relatedProduct->id }}">--}}
{{--                                                    <?php--}}
{{--                                                    $productColors  = \App\Models\ProductColor::where('product_id', $relatedProduct->id)->get();--}}
{{--                                                    ?>--}}
{{--                                                    @foreach($productColors as $col=>$productColor)--}}
{{--                                                        <?php--}}
{{--                                                        $color      = \App\Models\Color::where('id', $productColor->color_id)->select('name')->first();--}}
{{--                                                        ?>--}}
{{--                                                        <li class="border-0" style="font-size: 10px">--}}
{{--                                                            <input type="radio" name="color" {{ $col === 0 ? 'checked' : '' }} class="m-1" value="{{ $color->name }}"> {{ $color->name }}--}}
{{--                                                        </li>--}}
{{--                                                    @endforeach--}}

{{--                                                </ul>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                        <div class="action_links">--}}
{{--                                            <ul>--}}
{{--                                                <li class="add_to_cart"><a href="javascript:void(0)" onclick="productId({{ $relatedProduct->id }})" title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> shop now</a></li>--}}
{{--                                            </ul>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            @endforeach--}}
{{--                        </div>--}}
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--product area end-->

    <!-- product comment section start -->
    <section class="product-comment-section py-3 mb-40">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <h6 class="py-2 f-s-22">Add a comment.</h6>
                    @if(Auth::user())

                        {{--default comment input--}}
                        <div class="d-flex flex-row">
                            <div class="d-flex flex-column">
                                <div class="com-img-box">
                                    @if(isset(Auth::user()->image))
                                        <img src="{{ asset(Auth::user()->image) }}" alt="user-image" class="comment-user-image">
                                    @else
                                        <img src="{{asset('/')}}front/assets/img/avatar-user-comment.webp" alt="user-image" class="comment-user-image">
                                    @endif

                                </div>
                            </div>
                            <div class="d-flex flex-column w-100">
                                <form action="{{ route('main-comment') }}" method="POST">
                                    @csrf
                                    <input type="hidden" name="product_id" value="{{ $product->id }}">
                                    <input type="hidden" name="user_id" value="{{ Auth::user()->id }}">
                                    <input type="hidden" name="product_url" value="{{ url()->current() }}">

                                    <input type="text" name="comment" class="form-control border-left-0 border-right-0 border-top-0 bb-1px" id="comment" placeholder="product comment . . ." value="" required />

                                    <div class="float-right mt-2 hide-me" id="commentButton">
                                        <input type="button" class="btn" value="Cancel" id="comCancel">
                                        <input type="submit" class="btn btn-success" disabled value="Comment" id="comSub">
                                    </div>
                                </form>
                            </div>
                        </div>
                        {{--default comment input end--}}

                        {{--dynamic data--}}
                        @foreach($comments as $comment)
                            <div class="py-2">
                                <div class="d-flex flex-row w-100">
                                    <div class="d-flex flex-column">
                                        <div class="com-img-box">
                                            @if(isset($comment->user->image))
                                                <img src="{{ asset( $comment->user->image ) }}" alt="user-image" class="comment-user-image">
                                            @else
                                                <img src="{{asset('/')}}front/assets/img/avatar-user-comment.webp" alt="user-image" class="comment-user-image">
                                            @endif
                                        </div>
                                    </div>

                                    <div class="d-flex flex-column ml-2 no-pad w-100">
                                        <p class="text-justify">{{ $comment->comment }}</p>
                                        <span><a href="javascript:void(0)" id="mainComId{{ $comment->id }}" onclick="replayForm({{ $comment->id }})" class="text-primary nav-link">Reply</a></span>

                                        <div style="display: none!important;" id="mainComRepForm{{ $comment->id }}">
                                            <div class="d-flex flex-row w-100">
                                                <div class="d-flex flex-column">
                                                    @if(isset(Auth::user()->image))
                                                        <img src="{{ asset(Auth::user()->image) }}" alt="user-image" class="comment-user-image">
                                                    @else
                                                        <img src="{{asset('/')}}front/assets/img/avatar-user-comment.webp" alt="user-image" class="comment-user-image">
                                                    @endif
                                                </div>
                                                <div class="d-flex flex-column w-100">
                                                    {{--<input type="text" class="form-control">--}}
                                                    <form action="{{ route('sub-comment') }}" method="POST">
                                                        @csrf
                                                        <input type="hidden" name="comment_id" value="{{ $comment->id }}">
                                                        <input type="hidden" name="product_id" value="{{ $comment->product_id }}">
                                                        <input type="hidden" name="user_id" value="{{ Auth::user()->id }}">
                                                        <input type="hidden" name="product_url" value="{{ url()->current() }}">
                                                        <input type="text" name="sub_comment" class="form-control border-left-0 border-right-0 border-top-0 bb-1px repcomment" placeholder="repcomment" id="repcomment{{ $comment->id }}" onkeyup="secKey({{ $comment->id }})" onclick="secInput({{ $comment->id }})" value="" required />
                                                        <div class="float-right mt-2 hide-me" id="repcommentButton{{ $comment->id }}">
                                                            <input type="button" class="btn repcomCancel" value="Cancel" id="repcomCancel">
                                                            <input type="submit" class="btn btn-success repcomSub" disabled value="Comment" id="repcomSub{{ $comment->id }}">
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>

                                        {{--main comment replies--}}
                                        @if($comment->has_reply === 1)
                                            <a href="javascript:void(0)" id="viewReplies{{ $comment->id }}" onclick="viewReplies({{ $comment->id }})" class="pb-2 ">view replies</a>
                                        @endif
                                        <div id="subReplay{{ $comment->id }}" style="display: none;" class="py-1">
                                            @if(isset($subComments))
                                                @foreach($subComments as $subComment)
                                                    @if($subComment->comment_id == $comment->id)
                                                        {{--<div>--}}
                                                        <div class="d-flex flex-row w-100 py-1" >
                                                            <div class="d-flex flex-column">
                                                                <div class="com-img-box">
                                                                    @if(isset($subComment->user->image))
                                                                        <img src="{{ asset($subComment->user->image) }}" alt="user-image" class="comment-user-image">
                                                                    @else
                                                                        <img src="{{asset('/')}}front/assets/img/avatar-user-comment.webp" alt="user-image" class="comment-user-image">
                                                                    @endif
                                                                </div>
                                                            </div>
                                                            <div class="d-flex flex-column w-100 ml-2">
                                                                <p class="text-justify">{{ $subComment->sub_comment }}</p>
                                                                <span>
                                                            <a href="javascript:void(0)" id="replayOnReplay{{ $subComment->id }}" onclick="reply({{ $subComment->id }})">Reply</a>
                                                        </span>
                                                                {{--<a href="#">view replies</a>--}}
                                                                <div style="display: none;" id="reprepform{{ $subComment->id }}" class="py-1">
                                                                    <div class="d-flex flex-row w-100 ">
                                                                        <div class="d-flex flex-column">
                                                                            @if(isset(Auth::user()->image))
                                                                                <img src="{{ asset(Auth::user()->image) }}" alt="user-image" class="comment-user-image">
                                                                            @else
                                                                                <img src="{{asset('/')}}front/assets/img/avatar-user-comment.webp" alt="user-image" class="comment-user-image">
                                                                            @endif
                                                                        </div>
                                                                        <div class="d-flex flex-column w-100">
                                                                            {{--<input type="text" class="form-control">--}}
                                                                            <form action="{{ route('sub-comment') }}" method="POST">
                                                                                @csrf
                                                                                <input type="hidden" name="comment_id" value="{{ $comment->id }}">
                                                                                <input type="hidden" name="product_id" value="{{ $comment->product_id }}">
                                                                                <input type="hidden" name="user_id" value="{{ Auth::user()->id }}">
                                                                                <input type="hidden" name="product_url" value="{{ url()->current() }}">
                                                                                <input type="text" name="sub_comment" class="w-100 form-control border-left-0 border-right-0 border-top-0 bb-1px reprepcomment" placeholder="reprepcomment" id="reprepcomment{{ $subComment->id }}" onkeyup="reprepkey({{ $subComment->id }})" onclick="reprepComment({{ $subComment->id }})">
                                                                                <div class="float-right mt-2 hide-me" id="reprepcommentButton{{ $subComment->id }}">
                                                                                    <input type="button" class="btn reprepcomCancel" value="Cancel" id="reprepcomCancel">
                                                                                    <input type="submit" class="btn btn-success reprepcomSub" disabled value="Comment" id="reprepcomSub{{ $subComment->id }}">
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        {{--</div>--}}
                                                    @endif
                                                @endforeach
                                            @endif
                                        </div>

                                    </div>
                                </div>
                            </div>
                        @endforeach

                    @else
                        <span class="text-danger f-s-20 mr-2">You must log in to add a comment.</span>
                        <a href="{{ route('user-login') }}" class="btn btn-secondary">Login</a>
                        <a href="{{ url('/user/register') }} " class="btn btn-primary">Register</a>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <!-- product comment section end -->

    @include('front.product.easy-order.easy-order-section')

    <script>

        {{--document.getElementById('shareBtn').onclick = function() {--}}
        {{--     FB.ui({--}}
        {{--    display: 'popup',--}}
        {{--    method: 'share',--}}
        {{--    href: 'https://beshibuy.com/product/product-details/{{ $product->id }}/{{ preg_replace('/\s+/u', '-', trim($product->name)) }}',--}}
        {{--  }, function(response){});--}}
        {{-- }--}}

    </script>

@endsection
@section('extra-divs')
    @include('front.includes.product-modal')
@endsection
@section('extra-js')
    <script src="{{asset('/')}}front/assets/js/purposeJsCodes/modal-cart.js"></script>
    <script src="{{ asset('/') }}front/page-js/product-details/product-comments.js"></script>
    <script src="{{ asset('/') }}front/page-js/product-details/product-details-page.js"></script>
@endsection
