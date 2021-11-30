<?php

Route::group(['middleware'=>['auth']],function (){
    //   Front Layout routes
    Route::get('/front-layout/mng', 'FrontLayoutController@mng')->name('front-layout');
    // user route

    Route::get('/user/manage-user',[
        'uses'  =>'UserController@manageUser',
        'as'    =>'manage-user'
    ]);
    Route::get('/user/role-permission/{id}',[
        'uses'  =>'UserController@changeRole',
        'as'    =>'role-permission'
    ]);
    Route::get('/user/delete-user/{id}',[
        'uses'  =>'UserController@deleteUser',
        'as'    =>'delete-user'
    ]);

    //   category
    Route::get('/add-category',[
        'uses'  =>  'CategoryController@addCategory',
        'as'    =>  'add-category'
    ]);
    Route::Post('/new-category',[
        'uses'  =>  'CategoryController@newCategory',
        'as'    =>  'new-category'
    ]);
    Route::get('/manage-category',[
        'uses'  =>  'CategoryController@manageCategory',
        'as'    =>  'manage-category'
    ]);
    Route::get('/inactive-category/{id}',[
        'uses'  =>  'CategoryController@inactiveCategory',
        'as'    =>  'inactive-category'
    ]);
    Route::get('/active-category/{id}',[
        'uses'  =>  'CategoryController@activeCategory',
        'as'    =>  'active-category'
    ]);
    Route::get('/edit-category/{id}',[
        'uses'  =>  'CategoryController@editCategory',
        'as'    =>  'edit-category'
    ]);
    Route::post('/update-category',[
        'uses'  =>  'CategoryController@updateCategory',
        'as'    =>  'update-category'
    ]);
    Route::get('/delete-category/{id}',[
        'uses'  =>  'CategoryController@deleteCategory',
        'as'    =>  'delete-category'
    ]);

    //   subcategory

    Route::get('/add-subcategory',[
        'uses'  =>  'SubCategoryController@addSubCategory',
        'as'    =>  'add-subcategory'
    ]);
    Route::Post('/new-subcategory',[
        'uses'  =>  'SubCategoryController@newSubCategory',
        'as'    =>  'new-subcategory'
    ]);
    Route::get('/manage-subcategory',[
        'uses'  =>  'SubCategoryController@manageSubCategory',
        'as'    =>  'manage-subcategory'
    ]);
    Route::get('/inactive-subcategory/{id}',[
        'uses'  =>  'SubCategoryController@inactiveSubcategory',
        'as'    =>  'inactive-subcategory'
    ]);
    Route::get('/active-subcategory/{id}',[
        'uses'  =>  'SubCategoryController@activeSubcategory',
        'as'    =>  'active-subcategory'
    ]);
    Route::get('/edit-subcategory/{id}',[
        'uses'  =>  'SubCategoryController@editSubCategory',
        'as'    =>  'edit-subcategory'
    ]);
    Route::post('/update-subcategory',[
        'uses'  =>  'SubCategoryController@updateSubCategory',
        'as'    =>  'update-subcategory'
    ]);
    Route::get('/delete-subcategory/{id}',[
        'uses'  =>  'SubCategoryController@deleteSubCategory',
        'as'    =>  'delete-subcategory'
    ]);

    //   slider

    Route::get('/add-slider',[
        'uses'  =>  'SliderController@addSlider',
        'as'    =>  'add-slider'
    ]);
    Route::Post('/new-slider',[
        'uses'  =>  'SliderController@newSlider',
        'as'    =>  'new-slider'
    ]);
    Route::get('/manage-slider',[
        'uses'  =>  'SliderController@manageSlider',
        'as'    =>  'manage-slider'
    ]);
    Route::get('/inactive-slider/{id}',[
        'uses'  =>  'SliderController@inactiveSlider',
        'as'    =>  'inactive-slider'
    ]);
    Route::get('/active-slider/{id}',[
        'uses'  =>  'SliderController@activeSlider',
        'as'    =>  'active-slider'
    ]);
    Route::get('/edit-slider/{id}',[
        'uses'  =>  'SliderController@editSlider',
        'as'    =>  'edit-slider'
    ]);
    Route::post('/update-slider',[
        'uses'  =>  'SliderController@updateSlider',
        'as'    =>  'update-slider'
    ]);
    Route::get('/delete-slider/{id}',[
        'uses'  =>  'SliderController@deleteSlider',
        'as'    =>  'delete-slider'
    ]);

    //   brand

    Route::get('/add-brand',[
        'uses'  =>  'BrandController@addBrand',
        'as'    =>  'add-brand'
    ]);
    Route::Post('/new-brand',[
        'uses'  =>  'BrandController@newBrand',
        'as'    =>  'new-brand'
    ]);
    Route::get('/manage-brand',[
        'uses'  =>  'BrandController@manageBrand',
        'as'    =>  'manage-brand'
    ]);
    Route::get('/inactive-brand/{id}',[
        'uses'  =>  'BrandController@inactiveBrand',
        'as'    =>  'inactive-brand'
    ]);
    Route::get('/active-brand/{id}',[
        'uses'  =>  'BrandController@activeBrand',
        'as'    =>  'active-brand'
    ]);
    Route::get('/edit-brand/{id}',[
        'uses'  =>  'BrandController@editBrand',
        'as'    =>  'edit-brand'
    ]);
    Route::post('/update-brand',[
        'uses'  =>  'BrandController@updateBrand',
        'as'    =>  'update-brand'
    ]);
    Route::get('/delete-brand/{id}',[
        'uses'  =>  'BrandController@deleteBrand',
        'as'    =>  'delete-brand'
    ]);

    //  size

    Route::get('/add-size',[
        'uses'  =>  'SizeController@addSize',
        'as'    =>  'add-size'
    ]);
    Route::Post('/new-size',[
        'uses'  =>  'SizeController@newSize',
        'as'    =>  'new-size'
    ]);
    Route::get('/manage-size',[
        'uses'  =>  'SizeController@manageSize',
        'as'    =>  'manage-size'
    ]);
    Route::get('/inactive-size/{id}',[
        'uses'  =>  'SizeController@inactiveSize',
        'as'    =>  'inactive-size'
    ]);
    Route::get('/active-size/{id}',[
        'uses'  =>  'SizeController@activeSize',
        'as'    =>  'active-size'
    ]);
    Route::get('/edit-size/{id}',[
        'uses'  =>  'SizeController@editSize',
        'as'    =>  'edit-size'
    ]);
    Route::post('/update-size',[
        'uses'  =>  'SizeController@updateSize',
        'as'    =>  'update-size'
    ]);
    Route::get('/delete-size/{id}',[
        'uses'  =>  'SizeController@deleteSize',
        'as'    =>  'delete-size'
    ]);

    // color
    Route::get('/add-color',[
        'uses'  =>  'ColorController@addColor',
        'as'    =>  'add-color'
    ]);
    Route::Post('/new-color',[
        'uses'  =>  'ColorController@newColor',
        'as'    =>  'new-color'
    ]);
    Route::get('/manage-color',[
        'uses'  =>  'ColorController@manageColor',
        'as'    =>  'manage-color'
    ]);
    Route::get('/inactive-color/{id}',[
        'uses'  =>  'ColorController@inactiveColor',
        'as'    =>  'inactive-color'
    ]);
    Route::get('/active-color/{id}',[
        'uses'  =>  'ColorController@activeColor',
        'as'    =>  'active-color'
    ]);
    Route::get('/edit-color/{id}',[
        'uses'  =>  'ColorController@editColor',
        'as'    =>  'edit-color'
    ]);
    Route::post('/update-color',[
        'uses'  =>  'ColorController@updateColor',
        'as'    =>  'update-color'
    ]);
    Route::get('/delete-color/{id}',[
        'uses'  =>  'ColorController@deleteColor',
        'as'    =>  'delete-color'
    ]);

    //unit

    Route::get('/add-unit',[
        'uses'  =>  'UnitController@addUnit',
        'as'    =>  'add-unit'
    ]);
    Route::Post('/new-unit',[
        'uses'  =>  'UnitController@newUnit',
        'as'    =>  'new-unit'
    ]);
    Route::get('/manage-unit',[
        'uses'  =>  'UnitController@manageUnit',
        'as'    =>  'manage-unit'
    ]);
    Route::get('/inactive-unit/{id}',[
        'uses'  =>  'UnitController@inactiveUnit',
        'as'    =>  'inactive-unit'
    ]);
    Route::get('/active-unit/{id}',[
        'uses'  =>  'UnitController@activeUnit',
        'as'    =>  'active-unit'
    ]);
    Route::get('/edit-unit/{id}',[
        'uses'  =>  'UnitController@editUnit',
        'as'    =>  'edit-unit'
    ]);
    Route::post('/update-unit',[
        'uses'  =>  'UnitController@updateUnit',
        'as'    =>  'update-unit'
    ]);
    Route::get('/delete-unit/{id}',[
        'uses'  =>  'UnitController@deleteUnit',
        'as'    =>  'delete-unit'
    ]);

    //    Supplier

    Route::get('/add-supplier',[
        'uses'  =>  'SupplierController@addSupplier',
        'as'    =>  'add-supplier'
    ]);
    Route::Post('/new-supplier',[
        'uses'  =>  'SupplierController@newSupplier',
        'as'    =>  'new-supplier'
    ]);
    Route::get('/manage-supplier',[
        'uses'  =>  'SupplierController@manageSupplier',
        'as'    =>  'manage-supplier'
    ]);
    Route::get('/inactive-supplier/{id}',[
        'uses'  =>  'SupplierController@inactiveSupplier',
        'as'    =>  'inactive-supplier'
    ]);
    Route::get('/active-supplier/{id}',[
        'uses'  =>  'SupplierController@activeSupplier',
        'as'    =>  'active-supplier'
    ]);
    Route::get('/edit-supplier/{id}',[
        'uses'  =>  'SupplierController@editSupplier',
        'as'    =>  'edit-supplier'
    ]);
    Route::post('/update-supplier',[
        'uses'  =>  'SupplierController@updateSupplier',
        'as'    =>  'update-supplier'
    ]);
    Route::get('/delete-supplier/{id}',[
        'uses'  =>  'SupplierController@deleteSupplier',
        'as'    =>  'delete-supplier'
    ]);

    Route::get('/get-supplier-code',[
        'uses'  =>  'SupplierController@getSupplierCode',
        'as'    =>  'get-supplier-code'
    ]);

    // product

    Route::get('/add-product',[
        'uses'  =>  'ProductController@addProduct',
        'as'    =>  'add-product'
    ]);
    Route::Post('/new-product',[
        'uses'  =>  'ProductController@newProduct',
        'as'    =>  'new-product'
    ]);
    Route::get('/manage-product',[
        'uses'  =>  'ProductController@manageProduct',
        'as'    =>  'manage-product'
    ]);
    Route::get('/inactive-product/{id}',[
        'uses'  =>  'ProductController@inactiveProduct',
        'as'    =>  'inactive-product'
    ]);
    Route::get('/active-product/{id}',[
        'uses'  =>  'ProductController@activeProduct',
        'as'    =>  'active-product'
    ]);
    Route::get('/edit-product/{id}',[
        'uses'  =>  'ProductController@editProduct',
        'as'    =>  'edit-product'
    ]);
    Route::post('/update-product',[
        'uses'  =>  'ProductController@updateProduct',
        'as'    =>  'update-product'
    ]);
    Route::get('/delete-product/{id}',[
        'uses'  =>  'ProductController@deleteProduct',
        'as'    =>  'delete-product'
    ]);

    Route::get('/get-filter-product-category/{catId}',[
        'uses'  =>  'ProductController@getCatSub',
        'as'    =>  'product-category-filter',
    ]);
    Route::get('/get-subCat-brand-filter/{subId}',[
        'uses'  =>  'ProductController@getSubBrand',
        'as'    =>  'brand-filter',
    ]);

    Route::get('/get-product-code/{subId}',[
        'uses'  =>  'ProductController@getProductCode',
        'as'    =>  'product-code'
    ]);

    // product


    // purchase

    Route::get('/purchase',[
        'uses'  =>  'PurchaseController@addPurchase',
        'as'    =>  'add-purchase'
    ]);
    Route::post('/new-purchase',[
        'uses'  =>  'PurchaseController@storePurchase',
        'as'    =>  'new-purchase'
    ]);
    Route::get('/purchase-list',[
        'uses'  =>  'PurchaseController@mngPurchase',
        'as'    =>  'purchase-list'
    ]);
    Route::get('/edit-purchase/{id}/{name}',[
        'uses'  =>  'PurchaseController@editPurchase',
        'as'    =>  'edit-purchase'
    ]);
    Route::post('/purchase-update',[
        'uses'  =>  'PurchaseController@updatePurchase',
        'as'    =>  'update-purchase'
    ]);
    Route::post('/date-wise-search',[
        'uses'  =>  'PurchaseController@search',
        'as'    =>  'date-wise-search'
    ]);
    Route::get('/view-purchase/{id}/{name}',[
        'uses'  =>  'PurchaseController@view',
        'as'    =>  'view-purchase'
    ]);
    Route::get('/delete-purchase/{id}/{name}',[
        'uses'  =>  'PurchaseController@delete',
        'as'    =>  'delete-purchase'
    ]);
    /*Route::get('/get-purchase-category-filter/{catId}',[
        'uses'  =>  'PurchaseController@getPurCat',
        'as'    =>  'purchase-category-filter',
    ]);
    Route::get('/get-purchase-subcategory-filter/{subId}',[
        'uses'  =>  'PurchaseController@getPurSubCat',
        'as'    =>  'purchase-subcategory-filter',
    ]);*/
    Route::get('/get-purchase-size-color-filter/{proId}',[
        'uses'  =>  'PurchaseController@getSizeColor',
        'as'    =>  'purchase-size-color',
    ]);

    Route::get('/check-voucher-no/{vn}',[
        'uses'  =>  'PurchaseController@checkVn',
        'as'    =>  'check-voucher',
    ]);

    //purchase

    // product discount

    Route::get('/mng-discount', 'DiscountController@index')->name('discount');
    Route::post('/new-discount', 'DiscountController@newDiscount')->name('add-discount');
    Route::get('/get-all-discounts', 'DiscountController@getData')->name('get-all-discounts');
    Route::get('/del/{id}', 'DiscountController@del')->name('del-discounts');
    Route::get('/edit/{id}', 'DiscountController@edit')->name('edit-discounts');
    Route::get('/change-status/{id}', 'DiscountController@change')->name('change-status');

    // product discount

    // stock

    Route::get('/stock-list',[
        'uses'  =>  'StockController@stockList',
        'as'    =>  'stock-list'
    ]);
    /* Route::post('/date-wise-search',[
         'uses'  =>  'StockController@dataSearch',
         'as'    =>  'date-wise-search'
     ]);*/

    // stock


    //manage order route

    Route::get('/order/manage-order',[
        'uses'  =>  'OrderController@manageOrder',
        'as'    =>  'manage-order'
    ]);
    Route::get('/order/add-order',[
        'uses'  =>  'OrderController@addOrder',
        'as'    =>  'add-order'
    ]);
    Route::post('/order/new-order',[
        'uses'  =>  'OrderController@newOrder',
        'as'    =>  'new-order'
    ]);
    Route::get('/get-product-retail-price-ajax/{id}',[
        'uses'  =>  'OrderController@getPrice',
        'as'    =>  'get-price'
    ]);
    Route::get('/order/order-detail/{id}/{name}',[
        'uses'  =>  'OrderController@orderDetail',
        'as'    =>  'order-detail'
    ]);
    Route::get('/order/order-invoice/{id}/{name}',[
        'uses'  =>  'OrderController@downloadInvoice',
        'as'    =>  'order-invoice'
    ]);
    Route::get('/order/order-edit/{id}/{name}',[
        'uses'  =>  'OrderController@editOrder',
        'as'    =>  'order-edit'
    ]);
    Route::post('/order/complete',[
        'uses'  =>  'OrderController@complete',
        'as'    =>  'complete'
    ]);

    // sales route

    Route::get('/sales','SalesController@salesList')->name('sales-list');
    Route::post('/date-wise-search','SalesController@Search')->name('date-wise-search');



    //delivery route
    Route::get('/charge-list',[
        'uses'  =>  'DeliveryController@manageDelivery',
        'as'    =>  'charge-list'
    ]);
    Route::get('/edit-charge/{id}',[
        'uses'  =>  'DeliveryController@editDelivery',
        'as'    =>  'edit-charge'
    ]);
    Route::post('/update-charge',[
        'uses'  =>  'DeliveryController@updateDelivery',
        'as'    =>  'update-charge'
    ]);
    Route::get('/delete-charge/{id}',[
        'uses'  =>  'DeliveryController@deleteDelivery',
        'as'    =>  'delete-charge'
    ]);

    //delivery route

//    product delivery route
    Route::get('/product-delivery/manage',[
        'uses'  =>  'ProductDeliveryController@manage',
        'as'    =>  'manage-product-delivery'
    ]);
    Route::get('/product-delivery/add/{id}',[
        'uses'  =>  'ProductDeliveryController@add',
        'as'    =>  'add-product-delivery'
    ]);
    Route::post('/product-delivery/new',[
        'uses'  =>  'ProductDeliveryController@new',
        'as'    =>  'new-product-delivery'
    ]);
    Route::post('/product-delivery/get-order-data',[
        'uses'  =>  'ProductDeliveryController@getOrderData',
        'as'    =>  'get-order-data'
    ]);
//    product delivery route



//    7.9.20
//    error message
    Route::get('/error-message/add-error-message',[
        'uses'  =>  'SiteErrorMassageController@addMsg',
        'as'    =>  'add-error-message'
    ]);
    Route::Post('/error-message/new-error-message',[
        'uses'  =>  'SiteErrorMassageController@newMsg',
        'as'    =>  'new-error-message'
    ]);
    Route::get('/error-message/manage-error-message',[
        'uses'  =>  'SiteErrorMassageController@manageMsg',
        'as'    =>  'manage-error-message'
    ]);
    Route::get('/error-message/delete-error-message/{id}',[
        'uses'  =>  'SiteErrorMassageController@deleteMsg',
        'as'    =>  'delete-error-message'
    ]);
    Route::get('/error-message/error-message-status-change/{id}',[
        'uses'  =>  'SiteErrorMassageController@statusMsg',
        'as'    =>  'status-error-message'
    ]);

//    product qr code
    Route::get('/product-qr-code/add-code',[
        'uses'  =>  'ProductQRcodeController@addCode',
        'as'    =>  'add-product-QRcode'
    ]);
    Route::Post('/product-qr-code/new-code',[
        'uses'  =>  'ProductQRcodeController@newCode',
        'as'    =>  'new-product-QRcode'
    ]);
    Route::Post('/qr-code/get-qr-data-for-print',[
        'uses'  =>  'ProductQRcodeController@getDataPrint',
        'as'    =>  'get-qr-data-for-print'
    ]);
    Route::get('/product-qr-code/manage-code',[
        'uses'  =>  'ProductQRcodeController@manageCode',
        'as'    =>  'manage-product-QRcode'
    ]);
    Route::get('/product-qr-code/delete-code/{id}',[
        'uses'  =>  'ProductQRcodeController@deleteCode',
        'as'    =>  'delete-product-QRcode'
    ]);
    Route::get('/get-sub-category/{id}',[
        'uses'  =>  'ProductQRcodeController@getSubCategory',
        'as'    =>  'sub-cat'
    ]);
    Route::get('/get-products-sub/{id}',[
        'uses'  =>  'ProductQRcodeController@getproducts',
        'as'    =>  'get-products'
    ]);
    Route::get('/product-qr-code/get-color-test/{id}',[
        'uses'  =>  'ProductQRcodeController@getColorSize',
        'as'    =>  'get'
    ]);
//    Route::get('/product-qr-code/code-status-change/{id}',[
//        'uses'  =>  'ProductQRcodeController@statusCode',
//        'as'    =>  'status-product-QRcode'
//    ]);
//    generate qr codes
    Route::get('/qr-code/manage-code',[
        'uses'  =>  'ProductQRcodeController@manageQRCode',
        'as'    =>  'manage-code-generate'
    ]);
    Route::get('/qr-code/new-code',[
        'uses'  =>  'ProductQRcodeController@newQRCode',
        'as'    =>  'generate-code'
    ]);
//    cutomer complain
    Route::get('/customer-complain/add-complain',[
        'uses'  =>  'CustomerComplainController@addcomplain',
        'as'    =>  'add-customer-complain'
    ]);
    Route::Post('/customer-complain/new-complain',[
        'uses'  =>  'CustomerComplainController@newcomplain',
        'as'    =>  'new-customer-complain'
    ]);
    Route::get('/customer-complain/manage-complain',[
        'uses'  =>  'CustomerComplainController@managecomplain',
        'as'    =>  'manage-customer-complain'
    ]);
    Route::get('/customer-complain/delete-complain/{id}',[
        'uses'  =>  'CustomerComplainController@deletecomplain',
        'as'    =>  'delete-customer-complain'
    ]);
    Route::get('/customer-complain/complain-status-change/{id}',[
        'uses'  =>  'CustomerComplainController@statuscomplain',
        'as'    =>  'status-customer-complain'
    ]);

    //    product comment section
    Route::get('/comment/manage-product-comments',[
        'uses'  =>  'CommentsController@manage',
        'as'    =>  'manage-product-comments'
    ]);
    Route::get('/comment/change-product-comment-status/{id}',[
        'uses'  =>  'CommentsController@changeStatus',
        'as'    =>  'comment-change-status'
    ]);
    Route::get('/comment/delete-product-comment/{id}',[
        'uses'  =>  'CommentsController@deleteMainComment',
        'as'    =>  'delete-main-comment'
    ]);
    Route::get('/comment/delete-product-sub-comment/{id}',[
        'uses'  =>  'CommentsController@deleteSubComment',
        'as'    =>  'delete-sub-comment'
    ]);
    Route::post('/comment/new-product-comments',[
        'uses'  =>  'CommentsController@newMainComment',
        'as'    =>  'main-comment'
    ]);
    Route::post('/comment/new-product-sub-comments',[
        'uses'  =>  'CommentsController@newSubComment',
        'as'    =>  'sub-comment'
    ]);
    Route::post('/comment/get-product-sub-comments-ajax',[
        'uses'  =>  'CommentsController@ajaxSubComment',
        'as'    =>  'get-sub-comment-ajax'
    ]);

    // banner

    Route::get('/banners','BannerController@index')->name('index');
    Route::get('/banners/create','BannerController@create')->name('create');
    Route::post('/banners/store','BannerController@store')->name('store');
    Route::get('/banners/{id}/style','BannerController@style')->name('banner-style');
    Route::get('/banners/{id}/status','BannerController@status')->name('banner-status');
    Route::get('/banners/{id}/edit','BannerController@edit')->name('edit-banner');
    Route::post('/banners/update','BannerController@update')->name('update');
    Route::delete('/banners/{id}/delete','BannerController@delete')->name('delete-banner');

    // banner

});
