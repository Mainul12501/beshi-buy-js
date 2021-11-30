<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductSubReviewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('product_sub_reviews'))
        {
            Schema::create('product_sub_reviews', function (Blueprint $table) {
                $table->id();
                $table->integer('product_id');
                $table->integer('user_id');
                $table->integer('comment_id');
                $table->string('sub_comment');
                $table->text('product_url');
                $table->tinyInteger('status')->default(1);
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
        Schema::dropIfExists('product_sub_reviews');
    }
}
