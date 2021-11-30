<!--header middel start-->
    <div class="header_bottom ">
        <div class="container">
            <div class="row align-items-center mx-auto">
                <div class="col-12">
                    <div class="main_menu menu_two header_position">
                        <nav>
                            <ul class="font-12">
                                <li>
                                    <a href="{{route('/')}}" class="active">Home</a>
                                </li>
                                <li >
                                    <a href="" class="menu-item-has-children">Categories  </a>

                                    <ul class="sub_menu">
                                        <li>
                                            @foreach($categories as $category)
                                                <?php
                                                $noOfCategoryProducts = \App\Models\Product::where('category_id',$category->id)->orderBy('id','desc')->get()->count();
                                                ?>
                                                <a  href="{{route('category-product',['id'=>$category->id,'name'=>preg_replace('/\s+/u', '-', trim($category->name))])}}"> {{$category->name}} <span class="text-primary ml-1"> ({{$noOfCategoryProducts}}) </span></a>
                                            @endforeach

                                        </li>
                                    </ul>

                                </li>
                                <li class="active"> <a  href="{{route('latest-product')}}">New Explore</a></li>
                                <li><a href="{{route('offers')}}"> Offers</a></li>
                                <li><a href="{{route('best-selling')}}">Best Selling</a></li>
                                <li><a href="{{route('brands')}}">Brands</a></li>
                                <li><a href="{{route('contact')}}"> Request product</a></li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--header middel end-->
