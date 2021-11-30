<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    public function addSubCategory(){
        return view('admin.subcategory.add-subcategory',['categories'=>Category::orderBy('id','desc')->get()]);
    }
    public function newSubCategory(Request $request){
       SubCategory::checkSubCatValidation($request);
        SubCategory::basicSubCategoryInfo($request);
        return redirect()->back()->with('message','SubCategory Info Save Successfully !!');
    }
    public function manageSubCategory(){
        $subCategories  =   SubCategory::with('category:id,name')->orderBy('id','desc')->get();
        return view('admin.subcategory.manage-subcategory',['subCategories'=>$subCategories]);
    }
    public function inactiveSubcategory($id){
        $subCategory    =   SubCategory::find($id);
        if($subCategory->status ==  1){
          $subCategory->status    =   0;
          $subCategory->save();
        }
        return  redirect()->back()->with('message','SubCategory Info Inactive Successfully !!');
    }
    public function activeSubcategory($id){
        $subCategory    =   SubCategory::find($id);
        if($subCategory->status ==  0){
            $subCategory->status    =   1;
            $subCategory->save();
        }
        return  redirect()->back()->with('message','SubCategory Info Active Successfully !!');
    }
    public function editSubCategory($id){
        return view('admin.subcategory.edit-subcategory',['subCategory'=>SubCategory::find($id),'categories'=>Category::orderBy('id','desc')->get()]);
    }
    public function updateSubCategory(Request $request){
        if($request->hasFile('sub_category_image')){
           SubCategory::checkSubCatValidation($request);
        }
       SubCategory::updateSubcategoryInfo($request);
       return redirect('manage-subcategory')->with('message','SubCategory Info Update Successfully !!!');
    }
    public function deleteSubCategory($id){
        $subCategory    =   SubCategory::find($id);
        if(file_exists($subCategory->sub_category_image)){
            unlink($subCategory->sub_category_image);
        }
        $subCategory->delete();
        return redirect()->back()->with('message','SubCategory Info Delete Successfully ??');
    }
}
