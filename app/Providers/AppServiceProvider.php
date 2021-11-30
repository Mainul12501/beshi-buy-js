<?php

namespace App\Providers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Color;
use App\Models\FrontLayout;
use App\Models\SiteErrorMassage;
use App\Models\SubCategory;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        View::composer(['front.includes.menu.common-menu','front.includes.menu.mobile-offcanves-menu'],function ($view){
            $view->with('layouts',FrontLayout::orderBy('serial', 'ASC')->get());
        });
        View::composer(['front.includes.menu.common-menu','front.includes.menu.mobile-offcanves-menu'],function ($view){
            $view->with('categories',Category::where('status',1)->orderBy('id','desc')->with('subCategory')->get());
        });
        View::composer(['front.includes.common-menu','front.includes.mobile-offcanves-menu'],function ($view){
            $view->with('subCategories',SubCategory::where('status',1)->orderBy('id','desc')->get());
        });
        View::composer(['front.includes.footer','front.category.category-product'], function ($view){
            $view->with('brands', Brand::where('status',1)->orderBy('id','desc')->take(300)->get());
        });
        View::composer(['front.category.category-product','front.brand.brand-product'], function ($view){
            $view->with('colors', Color::where('status',1)->orderBy('id','desc')->get());
        });
        View::composer('front.includes.header-center', function ($view){
            $view->with('pendingError', SiteErrorMassage::where('status', 1)->first());
        });
    }
}
