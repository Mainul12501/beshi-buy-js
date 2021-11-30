<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateManageStocksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('manage_stocks')){
            Schema::create('manage_stocks', function (Blueprint $table) {
                $table->id();
                $table->foreignId('category_id');
                $table->foreignId('sub_category_id');
                $table->foreignId('brand_id')->nullable();
                $table->foreignId('product_id');
                $table->foreignId('supplier_id');
                $table->foreignId('unit_id');
                $table->foreignId('size_id');
                $table->foreignId('color_id');
                $table->string('voucher_no');
                $table->string('model')->nullable();
                $table->string('origin')->nullable();
                $table->string('serial')->nullable();
                $table->integer('quantity');
                $table->integer('damaged_qty')->nullable();
                $table->integer('purchase_price');
                $table->integer('discount')->nullable();
                $table->integer('sell_price');
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
        Schema::dropIfExists('manage_stocks');
    }
}
