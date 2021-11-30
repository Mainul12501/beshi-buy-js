<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function addCategory(){
        return view('admin.category.add-category');
    }
   public function newCategory(Request $request){
        Category::checkCategoryValidation($request);
        Category::basicCategoryInfo($request);
        return redirect()->back()->with('message','Category Info Saved successfully !!');
    }
    public function manageCategory(){
        return view('admin.category.manage-category',['categories'=>Category::orderBy('id','desc')->get()]);
    }
    public function inactiveCategory($id){
        $category   =   Category::find($id);
        if($category->status    ==  1){
            $category->status   =   0;
            $category->save();
        }
      return redirect('manage-category')->with('message','Category Info Inactive Successfully !!!');
    }
    public function activeCategory($id){
        $category   =   Category::find($id);
        if($category->status    ==  0){
            $category->status   =   1;
            $category->save();
        }
        return redirect('manage-category')->with('message','Category Info Active Successfully !!!');
    }
    public function editCategory($id){
        return view('admin.category.edit-category',['category'=>Category::find($id)]);
    }
    public function updateCategory(Request $request){
        if($request->hasFile('image')){
            Category::checkCategoryValidation($request);
        }
        Category::updateCategoryInfo($request);
        return redirect('manage-category')->with('message','Category Info Update Successfully !!!');
    }
    public function deleteCategory($id){
        $category   =   Category::find($id);
        if(file_exists($category->image)){
            unlink($category->image);
        }
        $category->delete();
        return redirect()->back()->with('message','Category Info Delete Successfully ???');
    }
}
