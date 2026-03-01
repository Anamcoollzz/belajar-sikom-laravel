<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateServersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('servers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('id_server', 8);
            $table->string('name');
            $table->string('hostname');
            $table->string('ip_address');
            $table->string('proccessor');
            $table->string('ram');
            $table->string('ram-type');
            $table->string('hardisk');
            $table->string('hardisk-type');
            $table->string('os');
            $table->string('model');
            $table->string('serial');
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
        Schema::dropIfExists('servers');
    }
}
