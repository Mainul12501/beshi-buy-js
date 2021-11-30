<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductReview extends Model
{
    protected function user ()
    {
        return $this->belongsTo(User::class);
    }

    protected function product ()
    {
        return $this->belongsTo(Product::class);
    }
}
