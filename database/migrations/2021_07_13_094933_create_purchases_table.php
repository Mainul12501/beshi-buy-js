<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePurchasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('purchases')){
            Schema::create('purchases', function (Blueprint $table) {
                $table->id();
                $table->string('purchase_date');
                $table->string('voucher_no');
                $table->foreignId('supplier_id')->nullable();
                $table->foreignId('category_id');
                $table->foreignId('sub_category_id');
                $table->foreignId('brand_id')->nullable();
                $table->foreignId('product_id');
                $table->string('pro_code');
                $table->string('vp_code')->nullable();
                $table->foreignId('unit_id');
                $table->foreignId('size_id');
                $table->foreignId('color_id');
                $table->string('model')->nullable();
                $table->string('origin')->nullable();
                $table->string('serial_imei')->nullable();
                $table->string('pro_weight')->nullable();
                $table->integer('unit_price');
                $table->integer('total_qty');
                $table->integer('addt_cost')->nullable();
                $table->integer('profit')->nullable();
                $table->integer('vat')->nullable();
                $table->integer('discount')->nullable();
                $table->integer('commission')->nullable();
                $table->integer('regular_price')->nullable();
                $table->double('sell_price',10,2);
                $table->tinyInteger('store_type');
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
        Schema::dropIfExists('purchases');
    }
}
