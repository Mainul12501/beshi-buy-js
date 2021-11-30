<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class BannerController extends Controller
{
    public function index(){
        $banners    =   Banner::orderBy('serial','DESC')->get();
        $categories =   Category::all();
        return view('admin.banner.index',['banners'=>$banners,'categories'=>$categories]);
    }
    public function create(){
        $categories = Category::all();
        $products   = Product::select('id','slug','name')->get();
        return view('admin.banner.create',['categories'=>$categories,'products'=>$products]);
    }
    public function store(Request $request){
        Banner::checkValidation($request);
        Banner::bannerBasicInfo($request);
        return redirect('banners')->with(['message'=>'Banner info save successfully !! ']);
    }
    public function style($id){
        Banner::bannerStyleInfo($id);
        return redirect()->back()->with(['message'=>'Banner Style Update Successfully !!']);
    }
    public function status($id){
        Banner::bannerStatusInfo($id);
        return redirect()->back()->with(['message'=>'Banner Status Update Successfully !!']);
    }
    public function edit($id){
        $banner     =   Banner::findOrFail($id);
        $categories =   Category::all();
        $products   = Product::select('id','slug','name')->get();
        return view('admin.banner.edit-banner',['banner'=>$banner,'categories'=>$categories,'products'=>$products]);
    }
    public function update(Request $request){
        Banner::updateBanner($request);
        return redirect('banners')->with(['message'=>'Banner info update successfully !! ']);
    }
    public function delete($id){
        $banner = Banner::findOrFail($id);
        if($banner->status == 0){
            Banner::deleteBannerInfo($banner);
            return redirect()->back()->with(['message'=>'Banner Info Delete Successfully !!']);
        }else{
            return redirect()->back()->with(['message'=>'Unauthenticated User !!']);
        }


    }
}
