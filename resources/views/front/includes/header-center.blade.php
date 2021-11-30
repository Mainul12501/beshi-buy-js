<!--header center area start-->
<div class="header_middle sticky-header"  style="padding:0px;background: #F8F9FA">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-3">
                <div class="logo">
                    <a href="{{route('/')}}">
                        <img src="{{asset('/')}}front/assets/img/logo/logo9.png"  alt="logo"/>
                    </a>
                </div>
            </div>
            <div class="col-lg-9" style="padding-left: 100px">
                <div class="header_middle_inner">
                    <div class="search-container">
                        <form action="{{route('product-search')}}" id="searchForm" method='POST'>
                            @csrf
                            <div class="search_box">
                                <input  type="text" placeholder="search product..."  id="search" name="search"   onkeyup="searchProduct(this.value)">
                                <button type="submit" id="searchButton"><i class="zmdi zmdi-search" ></i></button>
                            </div>
                        </form>
                        <div class="" style="position: absolute;background: white;width: 300px;z-index: 991;left: 115px;">
                          <ul class="navbar-nav " id="res"></ul>
                           <span class="errorMsg"></span>
                        </div>
                    </div>
                    <div class="mini_cart_wrapper" style="padding-left: 100px"  id="miniCart">
                        <a href="javascript:void(0)" class="border-0" id="hoverCart">
                            <i class="zmdi zmdi-shopping-basket" ></i> <span>item</span>
                        </a>
                        <!--mini cart-->

                        <!--mini cart end-->
                    </div>
                    <div class="top_right">
                        <ul>
                            <li class="top_links float-right">
                                @if(isset(Auth::user()->id))
                                    <a href="javascript:void(0)" ><i class="fa fa-user fa-lg mr-2 text-danger"></i>{{Auth::user()->name}}</a>
                                    {{--<a href="" >--}}
                                    {{--<img src="{{ Auth::user()->image }}" style="height: 40px; width: 40px; border-radius: 50%" alt="user-image">--}}
                                    {{--</a>--}}
                                @else
                                    <a href="javascript:void(0)" ><i class="fa fa-user fa-lg mr-2" style="color:#EA000D"></i>account</a>
                                @endif

                                <ul class="dropdown_links">
                                    @if(isset(Auth::user()->id))
                                {{-- @if(Auth::user()->normal_user === 1 )--}}
                                        @if(Auth::user()->id )
                                            <li>
                                                <a href="#" onclick="event.preventDefault(); document.getElementById('logoutForm').submit();"><i class="fa fa-power-off"><span class="ml-1">Logout</span></i></a>
                                                <form id="logoutForm" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                    @csrf
                                                </form>
                                            </li>
                                        @endif
                                    @else
                                        <li>
                                            <a href="{{route('user-login')}}"><i class="fa fa-sign-in"><span class="ml-1">Login</span></i></a>
                                        </li>
                                        <li>
                                            <a href="{{route('user-register')}}"><i class="fa fa-sign-out" ></i><span class="ml-1">Sign Up</span></a>
                                        </li>
                                    @endif
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>
@if($pendingError)
    <!--<div class="bg-danger py-3">-->
    <!--    <div class="container">-->
    <!--        <div class="row">-->
    <!--            <div class="mx-auto">-->
    <!--                <marquee width="100%" direction="left" class="text-light" style="font-size: 19px!important; ">{{ $pendingError->pending_msg }}</marquee>-->
                   <!-- <p class="text-light text-justify " style="font-size: 19px!important;">{{ $pendingError->pending_msg }}</p>-->
    <!--            </div>-->
    <!--        </div>-->
    <!--    </div>-->
    <!--</div>-->
@endif

<!--header center area end-->


