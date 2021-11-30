<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductReviewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('product_reviews'))
        {
            Schema::create('product_reviews', function (Blueprint $table) {
                $table->id();
                $table->integer('product_id');
                $table->integer('user_id');
                $table->text('product_url');
                $table->text('comment');
                $table->tinyInteger('has_reply')->default(0);
                $table->tinyInteger('status')->default(0);
                $table->timestamps();
            });
        }

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_reviews');
    }
}
