<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShippingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('shippings')){
            Schema::create('shippings', function (Blueprint $table) {
                $table->id();
                $table->integer('customer-id');
                $table->string('name');
                $table->string('email');
                $table->string('phone');
                $table->string('other_phone')->nullable();
                $table->string('city');
                $table->text('address');
                $table->text('district');
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
        Schema::dropIfExists('shippings');
    }
}
