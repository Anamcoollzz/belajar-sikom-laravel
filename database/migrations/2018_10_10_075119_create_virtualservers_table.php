<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVirtualserversTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('virtualservers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('id_server', 8);
            $table->string('vm_on', 8);
            $table->string('name');
            $table->string('hostname');
            $table->string('ip_address');
            $table->string('ram');
            $table->string('hardisk');
            $table->string('os');
            $table->string('password');
            $table->text('remark');
            $table->integer('status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('virtualservers');
    }
}
