<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductDeliveriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasTable('product_deliveries')){
            Schema::create('product_deliveries', function (Blueprint $table) {
                $table->id();
                $table->integer('order_id');
                $table->integer('order_details_id');
                $table->string('customer_name')->nullable();
                $table->string('customer_email')->nullable();
                $table->string('customer_phone')->nullable();
                $table->string('customer_address')->nullable();
                $table->string('product_name')->nullable();
                $table->string('product_size')->nullable();
                $table->string('product_color')->nullable();
                $table->smallInteger('product_quantity')->nullable();
                $table->integer('supplier_id')->nullable();
                $table->integer('delivery_vendor_id')->nullable();
                $table->text('report')->nullable();
                $table->tinyInteger('status')->nullable();
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
        Schema::dropIfExists('product_deliveries');
    }
}
