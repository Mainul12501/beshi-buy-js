<!--Offcanvas menu area start-->
<div class="off_canvars_overlay"></div>
<div class="Offcanvas_menu">
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
                                                        <a href="{{route('sub-category-product',['slug'=>$subCategory->slug])}}">
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
