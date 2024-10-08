<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('order_details')){
            Schema::create('order_details', function (Blueprint $table) {
                $table->id();
                $table->integer('order_id');
                $table->integer('product_id');
                $table->string('product_name');
                $table->string('product_size');
                $table->integer('product_quantity');
                $table->float('product_price',10,2);
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
        Schema::dropIfExists('order_details');
    }
}
