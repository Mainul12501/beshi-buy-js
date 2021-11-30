<div class="header_bottom">
    <div class="container">
        <div class="row align-items-center ">
            <div class="col-lg-3">
                <div class="categories_menu categori_two fixed-top">
                    <div class="categories_title" id="menuCategoryTitle" style="background:#EA000D;font-size:12px">
                        <h2 class="categori_toggle">Categories</h2>
                    </div>
                    <div class="categories_menu_toggle" id="menuAllCats" style="display: none">
                        <ul>
                            @foreach($layouts as $layout)
                                @if($categories)
                                    <?php
                                        foreach ($categories as $cat)
                                            {
                                                $category = \App\Models\Category::where('id',$layout->category_id)->where('status',1)->first();
                                            }
                                    ?>
                                @endif
                                <?php

//                                $category = \App\Models\Category::where('id',$layout->category_id)->where('status',1)->select('id', 'name', 'icon')->first();
                                ?>
                                @if(isset($category))
                                    <li class="menu_item_children categorie_list">
{{--                                        <a href="{{ route('category-product', ['id' => $category->id, 'name' => str_replace(' ','-',$category->name)]) }}">--}}
                                        <a href="{{ route('category-product', ['slug' => $category->slug]) }}">
                                            <span><i class="{{$category->icon}}"></i></span> {{$category->name}}
                                        </a>

                                        <?php
                                        $subCategories  = \App\Models\SubCategory::where('category_id',$category->id)->where('status',1)->orderBy('id','desc')->get();
                                        ?>
                                        @if(count($subCategories) > 0)
                                            <ul class="categories_mega_menu">
                                                @foreach($subCategories as $subCategory)
                                                    <li class="menu_item_children">
                                                        <a href="{{route('sub-category-product',['slug'=>$subCategory->slug])}}" class="text-dark menu-sub-menu p-r-10"><span class="text-capitalize sub-hover"><i class="{{$subCategory->icon}}"></i> {{$subCategory->sub_category_name}}</a>
{{--                                                        <?php--}}
{{--                                                        $products   = \App\Models\Product::where('category_id',$subCategory->category_id)->where('sub_category_id',$subCategory->id)->orderBy('id','desc')->get();--}}
{{--                                                        ?>--}}
{{--                                                        <ul class="categorie_sub_menu">--}}
{{--                                                            <li>--}}
{{--                                                                @foreach($products as $product)--}}
{{--                                                                    <a href="{{route('sub-category-product',['id'=>$product->sub_category_id,'name'=>preg_replace('/\s+/u', '-', trim($product->name))])}}" class="text-primary">--}}
{{--                                                                        <img src="{{asset($product->image)}}" style="width: 20px;height: 20px"/>--}}
{{--                                                                        <span class="ml-2"> {{Str::limit($product->name,20)}}</span>--}}
{{--                                                                    </a>--}}
{{--                                                                @endforeach--}}
{{--                                                            </li>--}}

{{--                                                        </ul>--}}
                                                    </li>
                                                @endforeach

                                            </ul>
                                        @endif
                                    </li>
                                @endif

                            @endforeach
                                <li><a href="javascript:void(0)" id="more-btn"><i class="fa fa-plus" aria-hidden="true"></i> More Categories</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-9">
                <div class="main_menu menu_two header_position " >
                    <nav>
                        <ul class="ml-lg-5">
                            <li class="active"> <a  href="{{route('latest-product')}}">Latest Products</a></li>
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
