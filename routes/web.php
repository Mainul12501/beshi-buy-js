<?php

use Illuminate\Support\Facades\Route;


Route::group(['namespace'=>'Front'],function(){

    Route::get('/sub', function (){

        return $randomId       =   'BB'.random_int(10000000,99999999);
        $products   = \Illuminate\Support\Facades\DB::table('front_layouts')
            ->join('categories','front_layouts.category_id','=','categories.id')
            ->join('sub_categories','categories.id','=','sub_categories.category_id')
//            ->join('products','sub_categories.id','=','products.sub_category_id')
            ->select('front_layouts.*','categories.id as category_id','categories.name as category_name','categories.slug as category_slug',
                'sub_categories.sub_category_name','sub_categories.id as sub_category_id','sub_categories.slug as sub_category_slug'
            )
            ->get();
        $products   = \App\Models\FrontLayout::with('category','products')->get();
        $sliders = \App\Models\Slider::where('status',1)->with('category')->orderBy('id','desc')->take(4)->get();
        $layouts    = \App\Models\FrontLayout::where('cat_status', 1)->orderBy('serial', 'ASC')->with('category')->get();
        $products   = \App\Models\Product::where('category_id', 4)->where('status', 1)->with('subCategory')->get();

        return $products;

    });

//monu
//    policis
    Route::get('/return-policy',[
        'uses'	=>	'PagesController@return',
        'as'	=>	'return-policy'
    ]);
    Route::get('/contact-us',[
        'uses'	=>	'PagesController@contact',
        'as'	=>	'contact'
    ]);
    Route::get('/delivery-policy',[
        'uses'	=>	'PagesController@delivery',
        'as'	=>	'delivery'
    ]);
    Route::get('/complain',[
        'uses'	=>	'PagesController@complain',
        'as'	=>	'complain-us'
    ]);
//brand page routes 8-8-21
    Route::get('/brands',[
        'uses'  =>  'BrandController@productBrand',
        'as'    =>  'brands'
    ]);
    Route::get('/get-all-brands','BrandController@getBrandNames')->name('get-all-brands');
    Route::get('/brand/{slug}',[
        'uses'	=>	'BrandController@brandProduct',
        'as'	=>	'brand-wise-product'
    ]);
    Route::get('/brand-product/{slug}', 'BrandController@brandWiseProduct')->name('brand-wise-prod');
    Route::get('/brand-product/{slug}/{priceShort}', 'BrandController@brandPriceWiseProduct')->name('brand-price-wise-prod');
    Route::post('/brand-product/sort-by-price', 'BrandController@brandFormPriceWiseProduct')->name('brand-products-sort-by-price');
//    brand page route end 8-8-21
   Route::get('/best-selling',[
        'uses'  =>  'EcommerceController@bestSell',
        'as'    =>  'best-selling'
    ]);
    Route::get('/offers',[
        'uses'  =>  'EcommerceController@offerzProdcut',
        'as'    =>  'offers'
    ]);
//    latest products route 6-8-21
    Route::get('/latest-product',[
        'uses'  =>  'MenuPagesController@latestProduct',
        'as'    =>  'latest-product'
    ]);
    Route::get('/get-latest-products','MenuPagesController@getLatestProducts')->name('get-latest-products');
    //    latest products route 6-8-21


    Route::get('/redirect-login',[
        'uses'	=>	'PagesController@redirect',
        'as'	=>	'redirect'
    ]);

    //    contact-us page
    Route::Post('/customer-contact/new-contact',[
        'uses'  =>  'ContactController@newContact',
        'as'    =>  'new-customer-contact'
    ]);
    Route::get('/customer-contact/manage-contact',[
        'uses'  =>  'ContactController@manageContact',
        'as'    =>  'manage-customer-contact'
    ]);
    Route::get('/customer-contact/delete-contact/{id}',[
        'uses'  =>  'ContactController@deleteContact',
        'as'    =>  'delete-customer-contact'
    ]);
    Route::get('/customer-contact/contact-status-change/{id}',[
        'uses'  =>  'ContactController@statusContact',
        'as'    =>  'status-customer-contact'
    ]);

//    monu ends
    Route::get('/product-add-cart/{id}',[
        'uses'	=>	'EcommerceController@quickView',
        'as'	=>	'product-add-cart'
    ]);

//    home page routes starts 8-8-21
    Route::get('/',[
        'uses'	=>	'EcommerceController@index',
        'as'	=>	'/'
    ]);
    Route::get('/get-home-page-explore-sales','EcommerceController@getExploreSales')->name('get-home-page-explore-sales');
    Route::get('/get-home-page-products-from-controller','EcommerceController@getHomeProductsController')->name('get-home-page-products-from-controller');
    Route::get('/get-home-page-products','EcommerceController@getHomePageProducts')->name('get-home-page-products');
    Route::get('/get-products-by-category/{id}','EcommerceController@getHomeProductsByCategory')->name('get-products-by-category');
    Route::get('/get-home-sub-category/{categoryId}','EcommerceController@getHomeProductsBySubCategory')->name('get-products-by-sub-category');
    Route::get('/get-products-by-sub-category/{subCategoryId}','EcommerceController@getHomePageProductsBySubCategory')->name('get-products-by-subcategory');
    Route::get('/get-ads-data/{type}/{amount}/{categoryId}','EcommerceController@getAdsData')->name('get-ads-data');

    //    home page routes ends 8-8-21

   /* user login & register*/
    Route::get('/user/register',[
        'uses'	=>	'ProfileController@userRegister',
        'as'	=>	'user-register'
    ]);
    Route::post('/new/register',[
        'uses'	=>	'ProfileController@processToRegister',
        'as'	=>	'new-register'
    ]);
    Route::get('/ajax-email-check/{email}',[
        'uses'	=>	'ProfileController@mailCheck',
        'as'	=>	'ajax-email-check'
    ]);
    Route::get('/ajax-phone-check/{phone}',[
        'uses'	=>	'ProfileController@checkPhoneNumber',
        'as'	=>	'ajax-phone-check'
    ]);
    Route::get('/user/login',[
        'uses'	=>	'ProfileController@userLogin',
        'as'	=>	'user-login'
    ]);
    Route::post('/user/user-login',[
        'uses'	=>	'ProfileController@processToLogin',
        'as'	=>	'new-user'
    ]);

    /* user login & register*/

//    category ajax controller codes start --- date: 37-7-21
    Route::get('/category/{slug}',[
        'uses'	=>	'CategoryProductController@categoryProduct',
        'as'	=>	'category-product'
    ]);
//        Menu - get Category page products
    Route::get('/category-product/{slug}', 'CategoryProductController@catWiseProduct')->name('cat-wise-prod');
    Route::get('/category-product/{slug}/brand/{brand}', 'CategoryProductController@catBrandWiseProduct')->name('cat-brand-wise-prod');
    Route::get('/category-product/{slug}/{priceShort}', 'CategoryProductController@catPriceWiseProduct')->name('cat-price-wise-prod');
    Route::post('/category-product/sort-by-price', 'CategoryProductController@catFormPriceWiseProduct')->name('products-sort-by-price');
//    category ajax controller codes end --- date: 37-7-21

//    sub category ajax controller codes start --- date: 3-8-21
    Route::get('/sub-category/{slug}',[
        'uses'	=>	'SubCategoryController@subCategoryProduct',
        'as'	=>	'sub-category-product'
    ]);
    Route::get('/sub-category-product/{slug}', 'SubCategoryController@subCatWiseProduct')->name('sub-cat-wise-prod');
    Route::get('/sub-category-product/{slug}/brand/{brand}', 'SubCategoryController@subCatBrandWiseProduct')->name('sub-cat-brand-wise-prod');
    Route::get('/sub-category-product/{slug}/{priceShort}', 'SubCategoryController@subCatPriceWiseProduct')->name('sub-cat-price-wise-prod');
    Route::post('/sub-category-product/sort-by-price', 'SubCategoryController@subCatFormPriceWiseProduct')->name('sub-products-sort-by-price');
//    sub category ajax controller codes end --- date: 3-8-21

//    product details page Controller Codes Start date: 4-8-21
    Route::get('/product/{slug}',[
        'uses'	=>	'EcommerceController@productDetails',
        'as'	=>	'product-details',
    ]);
    Route::get('/related-products/{slug}', 'ProductController@relatedProducts')->name('related-products');
    //    product details page Controller Codes Start date: 4-8-21


    Route::get('/color/color-wise-product/{id}/{name}',[
        'uses'	=>	'EcommerceController@colorProduct',
        'as'	=>	'color-wise-product'
    ]);
    Route::get('/product/price-filtering',[
        'uses'	=>	'EcommerceController@priceFiltering',
        'as'	=>	'price-filter'
    ]);
    Route::get('/product/price-filtering/{value}',[
        'uses'	=>	'EcommerceController@productShorting',
        'as'	=>	'product-shorting-sub'
    ]);
//from product details page[add to cart-raw laravel]
//    Route::post('/cart/add-to-cart',[
//        'uses'	=>	'CartController@addToCart',
//        'as'	=>	'add-to-cart'
//    ]);
    Route::get('/view-cart',[
        'uses'	=>	'CartController@viewCart',
        'as'	=>	'view-cart'
    ]);
    Route::post('/cart/cart-update',[
        'uses'	=>	'CartController@updateCart',
        'as'	=>	'cart-update'
    ]);
    Route::get('/cart/cart-item-delete/{id}',[
        'uses'	=>	'CartController@itemDelete',
        'as'	=>	'cart-item-delete'
    ]);
//    coupon check
    Route::get('/check-coupon/{code}','CartController@couponCheck')->name('couponCheck');
    Route::get('/cart/view','CartController@viewCartData')->name('cart-view');
//      coupon check ends
//    shipping address new routes
    Route::get('/add-shipping-address',[
        'uses'	=>	'CheckoutController@address',
        'as'	=>	'add-address'
    ]);
    Route::post('/new-address',[
        'uses'	=>	'CheckoutController@newAddress',
        'as'	=>	'new-address'
    ]);
//    shipping address new routes ends
    Route::get('/checkout',[
        'uses'	=>	'CheckoutController@checkoutProcess',
        'as'	=>	'checkout-process'
    ]);
    Route::post('/customer/join-with-us',[
        'uses'	=>	'CheckoutController@create',
        'as'	=>	'new-customer'
    ]);

    Route::post('/customer/customer-login',[
        'uses'	=>	'CheckoutController@loginCustomer',
        'as'	=>	'login-customer'
    ]);
    Route::get('/customer/customer-logout',[
        'uses'	=>	'CheckoutController@logoutCustomer',
        'as'	=>	'logout-customer'
    ]);

    Route::get('/customer/shipping-info',[
        'uses'	=>	'CheckoutController@shippingInfo',
        'as'	=>	'shipping-info'
    ]);
    Route::post('/customer/new-shipping',[
        'uses'	=>	'CheckoutController@newShipping',
        'as'	=>	'new-shipping'
    ]);
    Route::get('/customer/payment-info',[
        'uses'	=>	'CheckoutController@paymentInfo',
        'as'	=>	'payment-info'
    ]);
    Route::post('/order/order-confirm',[
        'uses'	=>	'PaymentController@confirmOrder',
        'as'	=>	'confirm-order'
    ]);
    Route::get('/order/order-complete',[
        'uses'	=>	'PaymentController@completeOrder',
        'as'	=>	'order-complete'
    ]);


    //ajax search route
    Route::get('/search/search-product/{name}',[
        'uses'	=>	'EcommerceController@searchProduct',
        'as'	=>	'search-product'
    ]);
    Route::get('/get-search-product/{id}/{name}',[
        'uses'	=>	'EcommerceController@getProduct',
        'as'	=>	'get-search-product'
    ]);
//    view all search result products
    Route::get('/results/{name}', 'SearchController@allResults')->name('all-search-result-products');
    Route::get('/get-result-products/{name}', 'SearchController@allResultsProducts')->name('get-search-result-products');

    //by form search
    Route::get('/product/product-search',[
        'uses'	=>	'EcommerceController@getSearchProduct',
        'as'	=>	'product-search'
    ]);

    Route::post('/product-search/{name}',[
        'uses'	=>	'EcommerceController@getSearchProduct',
        'as'	=>	'productx-search'
    ]);

    //delivery charge

    Route::get('/delivery/delivery-charge/{districtId}',[
        'uses'	=>	'CheckoutController@getCharge',
        'as'	=>	'delivery-charge'
    ]);

    //    From Mainul
//    Load cart ajax every 1s
    Route::get('/cart/load-cart-ajax',[
        'uses'	=>	'CartController@loadCart',
        'as'	=>	'load-cart-ajax'
    ]);
    Route::get('/cart/load-cart-ajax-hover',[
        'uses'	=>	'CartController@loadCartHover',
        'as'	=>	'load-cart-ajax-hover'
    ]);

//    get mobile cart content
    Route::get('/cart/mobile-cart-ajax',[
        'uses'	=>	'CartController@mobileCart',
        'as'	=>	'mobile-cart-ajax'
    ]);
//    delete product from cart ajax
    Route::get('/cart/cart-item-delete-ajax/{id}',[
        'uses'	=>	'CartController@itemDeleteAjax',
        'as'	=>	'cart-item-delete-ajax'
    ]);
//    add product to cart with ajax
    Route::post('/cart/add-to-cart-ajax',[
        'uses'	=>	'CartController@addToCartHome',
        'as'	=>	'add-to-cart-home'
    ]);

    //    shorting section starts
    Route::get('/category-wise-products/{id}/{name}',[
        'uses'	=>	'GroupPageController@categoryWiseProductView',
        'as'	=>	'group-wise-products'
    ]);


//get products by brand
    Route::get('/products/get-product-by-brand/{id}',[
        'uses'	=>	'GroupPageController@productsByBrand',
        'as'	=>	'get-product-by-brand'
    ]);
    //get products by color
    Route::get('/products/get-product-by-color/{id}',[
        'uses'	=>	'GroupPageController@productsByColor',
        'as'	=>	'get-product-by-color'
    ]);
    //get products by price filtering
    Route::post('/products/products-price-filter',[
        'uses'	=>	'ShortingController@priceFilter',
        'as'	=>	'price-filter-ajax'
    ]);
    //get products by select tag filtering
    Route::get('/products/filtering/{value}/{id}',[
        'uses'	=>	'ShortingController@productFilter',
        'as'	=>	'product-filtering'
    ]);

//    shorting section end

    Route::post('/subscriber/new-subscriber',[
        'uses'	=>	'ProfileController@createSubscriber',
        'as'	=>	'new-subscriber'
    ]);

});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/admin/home', 'HomeController@admin')->name('admin')->middleware('is_admin');
Route::get('/executive/home', 'HomeController@executive')->name('executive')->middleware('executive');

//login with social sites

//provider request
Route::get('/oauth/{driver}',[
    'uses'  =>'Auth\LoginWithSocialSiteController@redirectToProvider',
    'as'    =>'social-oauth'
]);
//requset callback function route
Route::get('/oauth/callback/{driver}',[
    'uses'  =>'Auth\LoginWithSocialSiteController@handleProviderCallback',
    'as'    =>'social-callback'
]);

