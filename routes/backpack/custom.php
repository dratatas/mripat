<?php

// --------------------------
// Custom Backpack Routes
// --------------------------
// This route file is loaded automatically by Backpack\Base.
// Routes you generate using Backpack\Generators will be placed here.

Route::group([
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => array_merge(
        (array) config('backpack.base.web_middleware', 'web'),
        (array) config('backpack.base.middleware_key', 'admin')
    ),
    'namespace'  => 'App\Http\Controllers\Admin',
], function () { // custom admin routes
    Route::crud('level', 'LevelCrudController');
    Route::crud('kode_djpb', 'Kode_djpbCrudController');
    Route::crud('struktur', 'StrukturCrudController');
    Route::crud('satker', 'SatkerCrudController');
    Route::crud('jenis_laporan', 'Jenis_laporanCrudController');
    Route::crud('laporan', 'LaporanCrudController');
    Route::crud('kegiatan', 'KegiatanCrudController');
    Route::crud('monitoringbos', 'MonitoringBosCrudController');
    // Route::crud('dashboard', 'DashboardCrudController');
    // Route::get('monitoring_bos', 'Monitoring_bosCrudController@index');
}); // this should be the absolute last line of this file