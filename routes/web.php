<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/dashboard', 'App\Http\Controllers\Admin\MonitoringBosCrudController@dashboard');
// Route::get('/admin/dashboard', 'App\Http\Controllers\Admin\DashboardCrudController');
        Route::get('splashboard/', [
            'as'        => 'splashboard.index',
            'uses'      => 'App\Http\Controllers\Admin\SplashboardCrudController@index',
            'operation' => 'list',
        ]);

        Route::post('admin/splashboard/search', [
            'as'        => 'splashboard.search',
            'uses'      => 'App\Http\Controllers\Admin\SplashboardCrudController@search',
            'operation' => 'list',
        ]);
// Route::crud('dashboard', 'App\Http\Controllers\Admin\DashboardCrudController');
// Route::post('/admin/dashboard/search', 'App\Http\Controllers\Admin\DashboardCrudController@search');

// routing for user extension
Route::group([
    'prefix' => 'admin', 
    'middleware' => ['admin'],
    'namespace'  => 'App\Http\Controllers\Admin',
], function() {
    Route::crud('user', 'UserCrudController');
});