<?php

namespace App\Models;

use App\Models\Category;
use App\Models\Product;
use App\Models\SubCategory;
use App\Models\Supplier;
use Illuminate\Database\Eloquent\Model;

class ProductQRcode extends Model
{
    protected $guarded  = [];
    public function category(){
        return $this->belongsTo(Category::class);

    }
    public function subCategory(){
        return $this->belongsTo(SubCategory::class);
    }
    public function product(){
        return $this->belongsTo(Product::class);
    }
    public function supplier(){
        return $this->belongsTo(Supplier::class);
    }
}
