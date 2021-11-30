<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav">
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="mdi mdi-av-timer"></i>
                        <span class="hide-menu">Dashboard </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="index.html" class="sidebar-link">
                                <i class="mdi mdi-adjust"></i>
                                <span class="hide-menu"> Classic </span>
                            </a>
                        </li>
                    </ul>
                </li>
                @if(auth()->user()->is_admin == 1)

                {{--user mod--}}
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-users"></i>
                        <span class="hide-menu">User Module </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{route('manage-user')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu">  Manage User</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-users"></i>
                        <span class="hide-menu">Front Layout Module </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{route('front-layout')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu">  Manage Layout</span>
                            </a>
                        </li>
                    </ul>
                </li>
                @endif
{{--                banner module--}}
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark" href="{{route('index')}}" aria-expanded="false">
                        <i class="fas fa-images"></i>
                        <span class="hide-menu">Banner Module </span>
                    </a>
                </li>
            {{--   category admin+ex--}}
                <li class="sidebar-item">
                    <a class="sidebar-link  waves-effect waves-dark" href="{{route('manage-category')}}" aria-expanded="false">
                        <i class="fas fa-list"></i>
                        <span class="hide-menu">Category Module </span>
                    </a>
                 </li>
                <li class="sidebar-item">
                    <a class="sidebar-link  waves-effect waves-dark" href="{{route('manage-subcategory')}}" aria-expanded="false">
                        <i class="icon-layers "></i>
                        <span class="hide-menu">SubCategory Module </span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark" href="{{route('manage-slider')}}" aria-expanded="false">
                        <i class="fas fa-sliders-h"></i>
                        <span class="hide-menu">Slider Module </span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark" href="{{route('manage-brand')}}" aria-expanded="false">
                        <i class="icon-equalizer"></i>
                        <span class="hide-menu">Brand Module </span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark" href="{{route('manage-size')}}" aria-expanded="false">
                        <i class="icon-size-actual "></i>
                        <span class="hide-menu">Size Module</span>
                    </a>

                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark" href="{{route('manage-color')}}" aria-expanded="false">
                        <i class="fas fa-fill-drip"></i>
                        <span class="hide-menu">Color Module </span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark" href="{{route('manage-unit')}}" aria-expanded="false">
                        <i class="icon-share "></i>
                        <span class="hide-menu">Unit Module </span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark" href="{{route('manage-supplier')}}" aria-expanded="false">
                        <i class="icon-list "></i>
                        <span class="hide-menu">Supplier Module </span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link  waves-effect waves-dark" href="{{route('manage-product')}}" aria-expanded="false">
                        <i class="icon-layers "></i>
                        <span class="hide-menu">Product Module </span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link  waves-effect waves-dark" href="{{route('discount')}}" aria-expanded="false">
                        <i class="mdi mdi-cash-multiple"></i>
                        <span class="hide-menu">Discount Module </span>
                    </a>
                </li>

                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark" href="{{route('stock-list')}}" aria-expanded="false">
                        <i class="fas fa-link"></i>
                        <span class="hide-menu">Stock Module</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link  waves-effect waves-dark" href="{{route('purchase-list')}}" aria-expanded="false">
                        <i class="fas fa-shopping-bag"></i>
                        <span class="hide-menu">Purchases Module</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-tasks"></i>
                        <span class="hide-menu">Order Module </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{route('add-order')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu"> Add Order</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="{{route('manage-order')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu"> Manage Order</span>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link waves-effect waves-dark" href="{{route('sales-list')}}" >
                        <i class="fas fa-dollar-sign"></i>
                        <span class="hide-menu">Sales Module </span>
                    </a>

                </li>

                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fa fa-truck" aria-hidden="true"></i>
                        <span class="hide-menu">Delivery Module </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{route('charge-list')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu"> Charge List</span>
                            </a>
                        </li>

                    </ul>
                </li>

                {{--       7.9.20--}}
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-list"></i>
                        <span class="hide-menu">Error Message Module </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{route('add-error-message')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu"> Add Error Message</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="{{route('manage-error-message')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu">  Manage Error Message</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-car"></i>
                        <span class="hide-menu">Product QR code Module </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{route('add-product-QRcode')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu"> Add QR Code of product</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="{{route('manage-product-QRcode')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu">  Manage QR Code of product</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="{{route('manage-code-generate')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu">  Generate QR codes</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-lock-open"></i>
                        <span class="hide-menu">Customer Complain Module </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{route('add-customer-complain')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu"> Add Customer Complain</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="{{route('manage-customer-complain')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu">  Manage Customer Complain</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">
                        <i class="fas fa-train"></i>
                        <span class="hide-menu">Customer Review Module </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{route('manage-product-comments')}}" class="sidebar-link">
                                <i class="far fa-dot-circle"></i>
                                <span class="hide-menu">  Manage Customer Review</span>
                            </a>
                        </li>
                    </ul>
                </li>


{{--                <li class="sidebar-item">--}}
{{--                    <a class="sidebar-link waves-effect waves-dark sidebar-link" href="authentication-login1.html" aria-expanded="false">--}}
{{--                        <i class="mdi mdi-directions"></i>--}}
{{--                        <span class="hide-menu">Log Out</span>--}}
{{--                    </a>--}}
{{--                </li>--}}
            </ul>
        </nav>

    </div>
</aside>
