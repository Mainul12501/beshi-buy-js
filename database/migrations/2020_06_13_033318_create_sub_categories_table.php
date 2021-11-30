<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('sub_categories')){
            Schema::create('sub_categories', function (Blueprint $table) {
                $table->id();
                $table->integer('category_id');
                $table->string('sub_category_name');
                $table->text('sub_category_description')->nullable();
                $table->text('sub_category_image')->nullable();
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
        Schema::dropIfExists('sub_categories');
    }
}
