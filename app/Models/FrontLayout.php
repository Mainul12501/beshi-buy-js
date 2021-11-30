<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FrontLayout extends Model
{
    protected $fillable = ['category_id', 'serial', 'layout_type'];
    public function category()
    {
        return $this->belongsTo(Category::class,'category_id','id');
    }
    public function subCategories()
    {
        return $this->hasMany(SubCategory::class,'category_id','category.id');
    }
    public function products()
    {
        return $this->hasMany(Product::class,'category_id','category.id');
    }
}
