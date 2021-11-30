<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('products')){
            Schema::create('products', function (Blueprint $table) {
                $table->id();
                $table->integer('category_id');
                $table->integer('sub_category_id');
                $table->integer('brand_id')->nullable();
                $table->integer('size_id');
                $table->integer('color_id');
                $table->integer('unit_id');
                $table->string('name');
                $table->string('code');
                $table->string('model')->nullable();
                $table->string('origin')->nullable();
                $table->string('weight')->nullable();
                $table->string('slug')->nullable();
                $table->text('short_description');
                $table->text('long_description');
                $table->text('video_url')->nullable();
                $table->text('image');
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
        Schema::dropIfExists('products');
    }
}
