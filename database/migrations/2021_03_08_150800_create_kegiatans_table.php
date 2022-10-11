<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKegiatansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kegiatans', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('kode_djpb_id');
            $table->unsignedInteger('struktur_id'); // PIC
            $table->string('uraian');
            $table->datetime('tgl_mulai');
            $table->datetime('tgl_selesai');
            $table->enum('status_pelaksanaan',['BELUM DILAKSANAKAN','IN PROGRESS', 'SELESAI', 'RESCHEDULE'])->default('BELUM DILAKSANAKAN');
            $table->boolean('is_perjalanan_dinas',1)->nullable()->default(false)->unsignedTinyInteger();
            $table->boolean('is_sosialisasi',1)->nullable()->default(false)->unsignedTinyInteger();
            $table->string('file_lk')->nullable(); // laporan kegiatan
            $table->string('file_rab')->nullable(); // rab, rencana kegiatan, nota pertimbangan
            $table->string('file_st')->nullable(); // surat tugas
            $table->string('file_spd')->nullable(); // surat perjalanan dinas
            $table->boolean('is_kakanwil',1)->nullable()->default(false)->unsignedTinyInteger();
            $table->boolean('is_gubernur',1)->nullable()->default(false)->unsignedTinyInteger();
            $table->boolean('is_bupati',1)->nullable()->default(false)->unsignedTinyInteger();
            $table->string('file_und')->nullable(); // file undangan
            $table->string('file_presensi')->nullable(); // file presensi
            $table->string('file_notula')->nullable(); // file notula
            $table->string('foto_kegiatan')->nullable(); 
            $table->foreign('kode_djpb_id')
                ->references('id')->on('kode_djpb')
                ->onUpdate('cascade')
                ->onDelete('no action');
            $table->foreign('struktur_id')
                ->references('id')->on('strukturs')
                ->onUpdate('cascade')
                ->onDelete('no action');
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
        Schema::dropIfExists('kegiatans');
    }
}
