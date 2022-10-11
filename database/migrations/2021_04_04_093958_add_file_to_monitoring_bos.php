<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFileToMonitoringBos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('monitoring_bos', function (Blueprint $table) {
            //
            $table->string('file_monitoring_bos')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('monitoring_bos', function (Blueprint $table) {
            //
            $table->dropColumn('file_monitoring_bos');
        });
    }
}
