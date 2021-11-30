<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDeliveryItemCodesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('delivery_item_codes')){
            Schema::create('delivery_item_codes', function (Blueprint $table) {
                $table->id();
                $table->integer('order_id');
                $table->integer('order_details_id');
                $table->integer('product_delivery_id');
                $table->string('item_code');
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
        Schema::dropIfExists('delivery_item_codes');
    }
}
