<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductQRcodesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('product_q_rcodes')){
            Schema::create('product_q_rcodes', function (Blueprint $table) {
                $table->id();
                $table->integer('category_id');
                $table->integer('sub_category_id');
                $table->integer('product_id');
                $table->string('code');
                $table->string('supplier_code');
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
        Schema::dropIfExists('product_q_rcodes');
    }
}
