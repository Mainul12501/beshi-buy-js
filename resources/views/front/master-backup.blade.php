<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="facebook-domain-verification" content="8at7xvh2hvb254jxojfe5y2eba48rj" />
    {{--prevent search engin from indexing--}}
    <meta name="robots" content="noindex, nofollow">
    {{--prevent search engin from indexing--}}
    <title>@yield('title')</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('/')}}front/assets/img/favicon.png"/>

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="{{asset('/')}}front/assets/css/plugins.css"/>
    {{--    links from plugins.css starts--}}{{--
    --}}{{--    BOOTSTrap 4.3.1css--}}{{--
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    --}}{{--    slick slider v1.8.1--}}{{--
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    --}}{{--    magnific-popup css--}}{{--
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" integrity="sha512-+EoPw+Fiwh6eSeRK7zwIKG2MA8i3rV/DGa3tdttQGgWyatG/SkncT53KHQaS5Jh9MNOT3dmFL0FjTY08And/Cw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js" integrity="sha512-IsNh5E3eYy3tr/JiX2Yx4vsCujtkhwl7SLqgnwLNgf04Hrt9BT9SXlLlZlWx+OK4ndzAoALhsMNcCmkggjZB1w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    --}}{{--    nice select--}}{{--
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" integrity="sha512-NqYds8su6jivy1/WLoW8x1tZMRD7/1ZfhWG/jcRQLOzV1k1rIODCpMgoBnar5QXshKJGV7vi0LXLNXPoFsM5Zg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    --}}{{--    font awesome 4.7.0--}}{{--
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    --}}{{--    owl carousal 2.3.4--}}{{--
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    --}}{{--    meanmenu template css--}}{{--
    <link rel="stylesheet" href="{{asset('/')}}front/assets/meanmenu-template.css">
    --}}{{--    animate css v3.7.2--}}{{--
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" integrity="sha512-doJrC/ocU8VGVRx3O9981+2aYUn3fuWVWvqLi1U+tA2MWVzsw+NVKq1PrENF03M+TYBP92PnYUlXFH1ZW0FpLw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    --}}{{--    jquery ui 1.11.4--}}{{--
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.css" integrity="sha512-lvdq1fIyCp6HMWx1SVzXvGC4jqlX3e7Xm7aCBrhj5F1WdWoLe0dBzU0Sy10sheZYSkJpJcboMNO/4Qz1nJNxfA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js" integrity="sha512-BHDCWLtdp0XpAFccP2NifCbJfYoYhsRSZOUM3KnAxy2b/Ay3Bn91frud+3A95brA4wDWV3yEOZrJqgV8aZRXUQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    --}}{{--    ionicons v2.0.0--}}{{--
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.0/css/ionicons.min.css" integrity="sha512-JApjWRnfonFeGBY7t4yq8SWr1A6xVYEJgO/UMIYONxaR3C9GETKUg0LharbJncEzJF5Nmiv+Pr5QNulr81LjGQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    --}}{{--    Material Design Iconic Font css--}}{{--
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" integrity="sha512-rRQtF4V2wtAvXsou4iUAs2kXHi3Lj9NE7xJR77DE7GHsxgY9RTWy93dzMXgDIG8ToiRTD45VsDNdTiUagOFeZA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    --}}{{--    links from plugins.css ends--}}

<!-- Main Style CSS -->
    <link rel="stylesheet" href="{{asset('/')}}front/assets/css/style.css"/>
    {{--    font-awasome css--}}
    <link herf="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"/>
    {{--    jquery ui css--}}
    {{--    <link rel="stylesheet" href="{{asset('/')}}front/assets/css/jquery-ui.min.css"/>--}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    {{--    toaster css--}}
    {{--    <link rel="stylesheet" href="{{asset('/')}}front/assets/css/toastr.min.css"/>--}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    {{--    helper css--}}
    <link rel="stylesheet" href="{{asset('/')}}front/assets/css/helper.css"/>

    {{--    custom css--}}
    <link rel="stylesheet" href="{{asset('/')}}front/assets/css/customCSS.css">


    <style>
        @media only screen and (max-width: 991px)
        {
            .mini_cart_wrapper > a i {
                margin-right: 1px!important;
            }
        }
    </style>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-180186696-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-180186696-1');
    </script>

    {{-- fb sharing script--}}
<!--<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v9.0&appId=721169328514907&autoLogAppEvents=1"></script>-->
    {{-- fb sharing script--}}

    @yield('meta')

    @yield('extra-css')

    <script>
        let baseurl     = {!! json_encode(url('/')) !!}+'/';
    </script>

</head>

<body  style="background: #F8F9FA">



<!--header area start-->
<header class="header_area">
    <!--header top start-->
    @include('front.includes.header-top')
    @include('front.includes.header-center')


</header>

<!--Offcanvas menu area start-->
<div class="off_canvars_overlay"></div>
<div class="Offcanvas_menu ">
    <div class="container">
        <div class="row">
            <div class="col-2">
                <div class="canvas_open">
                    {{--<span>MENU</span>--}}
                    <a href="javascript:void(0)"><i class="ion-navicon"></i></a>
                </div>
                <div class="Offcanvas_menu_wrapper">
                    <div class="canvas_close">
                        <a href="javascript:void(0)"><i class="ion-android-close"></i></a>
                    </div>
                    <div class="welcome_text">
                        {{--<p>Welcome to <span>Electronics Store</span> </p>--}}
                    </div>

                    <div id="menu" class="text-left" style="margin-top: 40px">
                        <ul class="offcanvas_main_menu ">
                            <li class="menu-item-has-children">
                                <a href="#" class="text-uppercase text-danger">All Categories</a>
                                @foreach($categories as $category)
                                    <ul class="sub-menu">
                                        <li class="menu-item-has-children">
                                            <a href="#" >{{$category->name}}</a>
                                            <ul class="sub-menu">
                                                <?php
                                                $subCategories  = \App\Models\SubCategory::where('category_id',$category->id)->where('status',1)->orderBy('id','desc')->get();
                                                ?>
                                                @foreach($subCategories as $subCategory)
                                                    <li>
                                                        <a href="{{route('sub-category-product',['id'=>$subCategory->id,'name'=>preg_replace('/\s+/u', '-', trim($subCategory->sub_category_name))])}}">
                                                            <img src="{{asset($subCategory->sub_category_image)}}" class="mr-2" style="height: 30px;width: 30px"/>
                                                            <span class="text-primary">{{$subCategory->sub_category_name}}</span>
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </li>
                                    </ul>
                                @endforeach
                            </li>
                            <li class="active"> <a  href="{{route('latest-product')}}">New Explore</a></li>
                            <li><a href="{{route('offers')}}"> Offers</a></li>
                            <li><a href="{{route('best-selling')}}">Best Selling</a></li>
                            <li><a href="{{route('brands')}}">Brands</a></li>
                            <li><a href="javascript:void(0)">How to Buy</a></li>
                        </ul>
                    </div>

                    <div class="Offcanvas_footer">
                        <span><a href="#"><i class="fa fa-envelope-o"></i> info@yourdomain.com</a></span>
                        <ul>
                            <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li class="pinterest"><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                            <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-6">
                {{--<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTtvFNEsTKTNDpgBuLXRd5DxWuxZBQSv5vD6w&usqp=CAU" class="" style="height: 70px; width: 130px;" alt="">--}}
                <a href="{{route('/')}}">
                    <h6 class="text-center mob-logo-text" style="padding-top: 7px;"><span style="color:#EA000D">BESHI</span><span style="color:#1B3161">BUY</span></h6>
                </a>
            </div>
            <div class="col-4">
                <div class="float-right mob-right-icons">
                    {{--<a href="javascript:void(0)" class="float-right mob-search-icon">--}}
                    {{--<i class="fa fa-2x fa-search"></i>--}}
                    {{--</a>--}}
                    {{--<a href="#" class=""><i class="zmdi zmdi-account text-danger" ></i></a> <span style="font-size: 24px;" class="mx-1">|</span>--}}
                    {{--<a href="javascript:void(0)" class="mob-search-icon"><i class="zmdi  zmdi-search text-danger" style="font-size: 24px;"></i></a> <span style="font-size: 24px;" class="mx-1">|</span>--}}

                    <div class="top_right float-right">
                        <ul>
                            <li class="top_links">
                                <a href="javascript:void(0)" class=""><i class="zmdi zmdi-account text-danger"></i></a>
                                <ul class="dropdown_links">
                                    @if(isset(Auth::user()->id))
                                        @if(Auth::user()->id )
                                            <li>
                                                <a href="#" onclick="event.preventDefault(); document.getElementById('logoutForm').submit();"><i class="fa fa-power-off"><span class="ml-1">Logout</span></i></a>
                                                <form id="logoutForm" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                    @csrf
                                                </form>
                                            </li>
                                        @endif
                                    @else
                                        <li><a href="{{route('user-login')}}"><i class="fa fa-sign-in"><span class="ml-1">Login</span></i></a></li>
                                        <li><a href="{{route('user-register')}}"><i class="fa fa-sign-out" ></i><span class="ml-1">Sign Up</span></a></li>
                                        {{--<li><a href="cart.html">Shopping Cart</a></li>--}}
                                        {{--<li><a href="wishlist.html">Wishlist</a></li>--}}
                                    @endif
                                </ul>
                            </li>
                        </ul>
                        {{--<span style="font-size: 24px;" class="mx-1">|</span>--}}
                    </div>

                    <div class="float-right search-mob-icon">
                        <a href="javascript:void(0)" class="mob-search-icon"><i class="zmdi  zmdi-search text-danger"></i></a>
                    </div>

                    <div class="mini_cart_wrapper float-right" id="tests">
                        <a href="javascript:void(0)" class="mobCart" onclick="mobileCartSow()"><i class="zmdi zmdi-shopping-basket text-danger"></i><sup style="font-size: 12px" class="mr-1 total_item text-danger"></sup></a>
                        <div class="mini_cart xx" id="view"></div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!--Offcanvas menu area end-->

{{--mobile search--}}
<section class="search-mobile" id="mobSearch">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-12">
                <form action="{{route('product-search')}}" method="GET">
                    {{--@csrf--}}
                    <div class="input-group mb-3">
                        <input type="text" name="search" onkeyup="searchProduct(this.value)" class="form-control py-3" placeholder="Search Product ...">
                        <div class="input-group-append">
                            <button class="btn btn-secondary" type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>

                    </div>
                </form>
                <div style="position: absolute;background: white;/*width: 300px;*/z-index: 991;left: 30px;">
                    <ul class="navbar-nav res" id="res" ></ul>
                </div>
            </div>
        </div>
    </div>
</section>



@yield('body')

@include('front.includes.footer')

<!-- modal area start-->
<div class="modal fade" id="modal_box" tabindex="-1" role="dialog"  aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal_body">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-sm-12">
                            <div class="modal_tab">
                                <div class="tab-content product-details-large" id="big">
                                    <div class="tab-pane fade show  active" id="tab1" role="tabpanel" >
                                        <div class="modal_tab_img">
                                            <a href="">
                                                <img src="" alt="" id="proImg">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <style>
                                    #small>li>a>img {
                                        height: 70px;
                                        /*width: 25%;*/
                                        width: 85px;
                                    }
                                </style>
                                <div class="modal_tab_button" >
                                    <ul class="nav " role="tablist"  id="small" >
                                        <li>
                                            <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false">
                                                <img src="assets/img/product/productbig1.jpg" alt="">
                                            </a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7 col-sm-12">
                            <div class="modal_right">
                                <div class="modal_title mb-10">
                                    <h2 id="modalName"  class="my-1">Handbag feugiat</h2>
                                </div>
                                <div class="modal_price mb-10">
                                    <span class="new_price" id="modalPrice">$64.99</span>
                                    {{--<span class="old_price" >$78.99</span>--}}
                                </div>
                                <div class="modal_description mb-15">
                                    <p id="modalDes" class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam, reiciendis maiores quidem aperiam, rerum vel recusandae </p>
                                </div>
                                <div class="variants_selects">

                                    <form action="" method="post" id="modalForm">
                                        <div class="variants_size">
                                            <h2>size</h2>
                                            <select class="form-control my-2" id="modalSizex">
                                                <option selected value="1">s</option>
                                                <option value="1">m</option>
                                                <option value="1">l</option>
                                                <option value="1">xl</option>
                                                <option value="1">xxl</option>
                                            </select>
                                        </div>
                                        <div class="variants_color">
                                            <h2>color</h2>
                                            <select class="form-control my-2" id="modalColorx">
                                                <option selected value="1">purple</option>
                                                <option value="1">violet</option>
                                                <option value="1">black</option>
                                                <option value="1">pink</option>
                                                <option value="1">orange</option>
                                            </select>
                                        </div>
                                        <div class="modal_add_to_cart">
                                            <input type="hidden" id="productId" value="">
                                            <input min="1" max="100000" {{--step="2"--}} id="qty" value="1" name="qty" type="number">
                                            <button type="submit" id="modalButton" >add to cart</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- modal area end-->

<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<div class="fb-customerchat"
     attribution=setup_tool
     page_id="113337117204778"
     theme_color="#0A7CFF"
     logged_in_greeting="Hi! Welcome to Beshi Buy. How can we help you?"
     logged_out_greeting="Hi! Welcome to Beshi Buy. How can we help you?">
</div>
<!-- Your Chat Plugin code -->


<!-- Plugins JS -->
<script src="{{asset('/')}}front/assets/js/plugins.js"></script>

{{--scripts from plugins js start--}}{{--

--}}{{--Modernizr 2.8.3 js--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" integrity="sha512-3n19xznO0ubPpSwYCRRBgHh63DrV+bdZfHK52b1esvId4GsfwStQNPJFjeQos2h3JwCmZl0/LgLxSKMAI55hgw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--jQuery v3.4.1 js--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--jQuery Migrate v3.1.0 js--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.1.0/jquery-migrate.min.js" integrity="sha512-gM3q7HxI7TJHyqhj9m8cRB8ihdPGu7F74+710tRISUSyJOxjbzyDu1POVVlPydilyWttPVEGa3rQA+qyBlsXZg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--Bootstrap v4.3.1 js--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
--}}{{--meanMenu js--}}{{--
<script src="{{asset('/')}}front/assets/js/template-meanmenu-2.0.8.js"></script>
--}}{{--Slick Slider 1.8.1--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--Magnific Popup - v1.1.0--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js" integrity="sha512-IsNh5E3eYy3tr/JiX2Yx4vsCujtkhwl7SLqgnwLNgf04Hrt9BT9SXlLlZlWx+OK4ndzAoALhsMNcCmkggjZB1w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--wow js v1.3.0--}}{{--
<script src="https://cdn.boomcdn.com/libs/wow-js/1.3.0/wow.min.js"></script>
--}}{{--jquery.counterup.js 1.0--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js" integrity="sha512-d8F1J2kyiRowBB/8/pAWsqUl0wSEOkG5KATkVV4slfblq9VRQ6MyDZVxWl2tWd+mPhuCbpTB4M7uU/x9FlgQ9Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--CoffeeScript 1.6.2--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/coffee-script/1.6.2/coffee-script.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js" integrity="sha512-kIRDPWIBoKpF79HJv3xBPQgZKjhxzqMGG2N68svvId45w9vp/hTXoR7cDERYhVEhLJTuSGb/c3+ZHgeQfLm0Hg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--nice select v1.1--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" integrity="sha512-NqYds8su6jivy1/WLoW8x1tZMRD7/1ZfhWG/jcRQLOzV1k1rIODCpMgoBnar5QXshKJGV7vi0LXLNXPoFsM5Zg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--jquery.collapes.js--}}{{--
<script src="{{ asset('/') }}front/assets/js/jquery.collapes.js"></script>
--}}{{--scrollup v2.4.1--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/scrollup/2.4.1/jquery.scrollUp.min.js" integrity="sha512-gAHP1RIzRzolApS3+PI5UkCtoeBpdxBAtxEPsyqvsPN950Q7oD+UT2hafrcFoF04oshCGLqcSgR5dhUthCcjdA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--Owl Carousel v2.3.4--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--The Final Countdown for jQuery v2.2.0--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.countdown/2.2.0/jquery.countdown.min.js" integrity="sha512-lteuRD+aUENrZPTXWFRPTBcDDxIGWe5uu0apPEn+3ZKYDwDaEErIK9rvR0QzUGmUQ55KFE2RqGTVoZsKctGMVw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--    jquery ui 1.11.4--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js" integrity="sha512-BHDCWLtdp0XpAFccP2NifCbJfYoYhsRSZOUM3KnAxy2b/Ay3Bn91frud+3A95brA4wDWV3yEOZrJqgV8aZRXUQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--jQuery elevateZoom 3.0.8--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/elevatezoom/3.0.8/jquery.elevatezoom.min.js" integrity="sha512-egjn0g4nyX3074dTJbuzFHdPDu17RP8ElcYpQuQbl9VUu6RKQaqlX4dJJ/l7Z5fFniqLSOJgytwP0FiKf4MEfA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--imagesLoaded PACKAGED v4.1.4--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/4.1.4/imagesloaded.pkgd.min.js" integrity="sha512-S5PZ9GxJZO16tT9r3WJp/Safn31eu8uWrzglMahDT4dsmgqWonRY9grk3j+3tfuPr9WJNsfooOR7Gi7HL5W2jw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--Isotope PACKAGED v3.0.6--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js" integrity="sha512-Zq2BOxyhvnRFXu0+WE6ojpZLOU2jdnqbrM1hmVdGzyeCa1DgM3X5Q4A/Is9xA1IkbUeDd7755dNNI/PzSf2Pew==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--jQuery Cookie Plugin v1.4.1--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js" integrity="sha512-3j3VU6WC5rPQB4Ld1jnLV7Kd5xr+cq9avvhwqzbH/taCRNURoeEpoPBK9pDyeukwSxwRPJ8fDgvYXd6SkaZ2TA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--bPopup v-0.11.0--}}{{--
<script src="https://cdnjs.cloudflare.com/ajax/libs/bPopup/0.11.0/jquery.bpopup.min.js" integrity="sha512-kmrY+BFhi6ywgfK8hW1ySM/KYU3xPd4elbMhORq3DhacwqmitFrf3GB2HpLj3srV1zFsqxvAcZ4qU+y+ym1Eeg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
--}}{{--/*ajax-mail.js*/--}}{{--
<script src="{{asset('/')}}front/assets/js/ajax-mail-template.js"></script>
--}}{{--scripts from plugins js ends--}}





<!-- Main JS -->
<script src="{{asset('/')}}front/assets/js/main.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/igorlino/elevatezoom-plus/1.1.6/src/jquery.ez-plus.js"></script>
{{--<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>--}}
{{--jquery ui js--}}
<script src="{{asset('/')}}front/assets/js/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
{{--sweet alert v2--}}
{{--<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>--}}
<script src="{{asset('/')}}front/assets/js/sweetalert2@9.js"></script>
<script src="{{asset('/')}}front/assets/js/promise-polyfill.js"></script>
{{--<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>--}}
{{--toaster js--}}
{{--<script src="{{asset('/')}}front/assets/js/toastr.min.js"></script>--}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>



{{-- fb sharing script--}}
{{--    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-60072e508ee75dcc"></script>--}}
{{-- fb sharing script--}}




{{--custom js--}}
<script src="{{asset('/')}}front/assets/js/customJs.js"></script>

<script>
    var route               =   "{{ url('get-search-product') }}";
    var view_cart           =   "{{ url('/cart/view-cart') }}";
    var checkoutPageUrl     =   "{{ url('/checkout/process-to-checkout') }}";
    var productDetailsUrl   =   "{{ url('/product/product-details/') }}";
    window.asset            =   "{{ asset('/') }}";

    // $("#zoom_01").ezPlus({
    //     scrollZoom: true,
    //     zoomWindowWidth:650,
    //     zoomWindowHeight:500,
    // });

</script>

@if(Session::has('msg'))
    <script>
        var type = "{{ Session::get('alert-type', 'info') }}";
        switch(type){
            case 'info':
                toastr.info("{{ Session::get('msg') }}");
                break;
            case 'warning':
                toastr.warning("{{ Session::get('msg') }}");
                break;

            case 'success':
                toastr.success("{{ Session::get('msg') }}");
                break;

            case 'error':
                toastr.error("{{ Session::get('msg') }}");
                break;
        }
    </script>
@endif
<script>
    // remove hash from login reditrct
    var hash = window.location.hash;
    if((hash == '#') || (hash == '#_=_'))
    {
        history.replaceState({}, document.title, ".");
    }

    // test start
    $('#searchButton').on('click', function (e) {
        e.preventDefault();
        var searchKW    = $('#search').val();
        var result      = searchKW.replace(/\s+/g,"-");
        var pathK       = window.location.origin;

        $('#searchForm').attr('action', pathK+'/product-search/'+result).submit();
    });

</script>
@if(Session::has('barta'))
    <script>
        toastr.success("{{ Session::get('barta') }}");
    </script>
@endif

@if(session()->has('districtName'))
    <script>
        var district = "{{ Session::get('districtName') }}";
        $('#zero').click(function () {
            var total   = $('#grandtotal').val();
            if (district != 'Dhaka')
            {
                $('#payCharge').html('cash on delivery supports only in dhaka.');
            } else {
                $('#payCharge').html('No charge applicable');
            }

            $('#showTotal').html(total);
        });

    </script>
@endif

{{--fb-chat-script--}}
<script src="{{ asset('/') }}front/assets/js/fb-messenger-script-by-Fb.js"></script>


</body>

</html>
