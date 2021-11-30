<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDiscountsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
       if(Schema::hasTable('discounts')){
           Schema::create('discounts', function (Blueprint $table) {
               $table->id();
               $table->bigInteger('product_id');
               $table->string('coupon_name')->nullable();
               $table->string('coupon_code')->nullable();
               $table->mediumInteger('discount_percentage')->nullable();
               $table->mediumInteger('discount_cash')->nullable();
               $table->dateTime('start_date')->nullable();
               $table->dateTime('end_date')->nullable();
               $table->text('description')->nullable();
               $table->string('validity')->default('live');
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
        Schema::dropIfExists('discounts');
    }
}
