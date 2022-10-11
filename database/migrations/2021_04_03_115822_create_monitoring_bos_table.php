<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMonitoringBosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('monitoring_bos', function (Blueprint $table) {
            $table->id();
            $table->string('pemda');
            $table->string('jenis_dana_bos');
            $table->string('sekolah');
            $table->string('no_sp2d');
            $table->datetime('tgl_sp2d');
            $table->integer('nilai_sp2d');
            $table->string('batch');
            $table->enum('status',['CONFIRMED','RETURNED'])->default('CONFIRMED');
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
        Schema::dropIfExists('monitoring_bos');
    }
}
