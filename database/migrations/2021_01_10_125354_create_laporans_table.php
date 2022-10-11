<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLaporansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('laporans', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('kode_djpb_id');
            $table->unsignedInteger('struktur_id');
            $table->unsignedInteger('jenis_laporan_id');
            $table->string('bulan');
            $table->enum('frekuensi', ['INSIDENTAL','BULANAN','TRIWULANAN', 'SEMESTERAN', 'TAHUNAN']);
            $table->date('deadline');
            $table->enum('progress', ['BELUM SELESAI','IN PROGRESS', 'SELESAI']);
            $table->string('tujuan');
            $table->string('dasar_hukum')->nullable();
            $table->string('file')->nullable();
            $table->foreign('kode_djpb_id')
                ->references('id')->on('kode_djpb')
                ->onUpdate('cascade')
                ->onDelete('no action');
            $table->foreign('struktur_id')
                ->references('id')->on('strukturs')
                ->onUpdate('cascade')
                ->onDelete('no action');
            $table->foreign('jenis_laporan_id')
                ->references('id')->on('jenis_laporan')
                ->onUpdate('cascade')
                ->onDelete('restrict');
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
        Schema::dropIfExists('laporans');
    }
}
