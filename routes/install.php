<?php

use App\Http\Controllers\InstallController;

/*
|--------------------------------------------------------------------------
| Install Routes
|--------------------------------------------------------------------------
|
| This route is responsible for handling the intallation process
|
|
|
*/


Route::get('/', [InstallController::class, 'step0']);
Route::get('/permissions', [InstallController::class, 'step1'])->name('step1');
Route::get('/db-setup/{error?}', [InstallController::class, 'step3'])->name('step3');
Route::get('/import-db', [InstallController::class, 'step4'])->name('step4');
Route::get('/add-admin', [InstallController::class, 'step5'])->name('step5');

Route::post('/database_installation', [InstallController::class, 'database_installation'])->name('install.db');
Route::get('/import_sql/{db_name}', [InstallController::class, 'import_sql'])->name('import_sql');
Route::post('/congratulations', [InstallController::class, 'system_settings'])->name('system_settings');
