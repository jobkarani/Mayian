<?php

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\BlogController;
use App\Http\Controllers\Api\BookingsController;
use App\Http\Controllers\Api\CottagesController;
use App\Http\Controllers\Api\PasswordResetController;
use App\Http\Controllers\Api\ServicesController;
use App\Http\Controllers\Api\SubscribeController;
use App\Http\Controllers\Api\EventsController;

Route::group(['prefix' => 'v1', 'as' => 'api.'], function () {
    # auth routes for frontend users
    Route::group(['prefix' => 'auth'], function () {
        Route::post('login', [AuthController::class, 'login']);
        Route::post('signup', [AuthController::class, 'signup']);
        Route::post('verify', [AuthController::class, 'verify']);
        Route::post('resend-code', [AuthController::class, 'resend_code']);

        Route::post('update-info', [AuthController::class, 'updateInfo']);
        Route::post('update-password', [AuthController::class, 'updatePassword']);
        Route::post('update-avatar', [AuthController::class, 'updateAvatar']);

        Route::post('password/create', [PasswordResetController::class, 'create']);
        Route::post('password/reset', [PasswordResetController::class, 'reset']);

        Route::group(['middleware' => 'auth:api'], function () {
            Route::post('signout', [AuthController::class, 'logout']);
            Route::get('user', [AuthController::class, 'user']);
        });
    });

    # subscribe
    Route::post('subscribe', [SubscribeController::class, 'subscribe']);

    # cottages
    Route::get('all-cottages', [CottagesController::class, 'index']);
    Route::get('filter-cottages', [CottagesController::class, 'indexFilter']);
    Route::get('best-cottages', [CottagesController::class, 'bestIndex']);
    Route::get('cottages/{slug}', [CottagesController::class, 'show']);

    # bookings
    Route::group(['prefix' => 'bookings', 'middleware' => 'auth:api'], function () {
        Route::post('book', [BookingsController::class, 'store']);
        Route::get('all-bookings', [BookingsController::class, 'index']);
        Route::get('recent-bookings', [BookingsController::class, 'recentIndex']);
    });

    # services
    Route::get('all-services', [ServicesController::class, 'index']);
    Route::get('best-services', [ServicesController::class, 'bestIndex']);
    Route::get('services/{slug}', [ServicesController::class, 'show']);

    # Blogs
    Route::get('all-blogs', [BlogController::class, 'index']);
    Route::get('blogs/{slug}', [BlogController::class, 'show']);

    # events
    Route::get('all-events', [EventsController::class, 'index']);
    Route::get('events/{slug}', [EventsController::class, 'show']);
});

Route::fallback(function () {
    return response()->json([
        'data' => [],
        'success' => false,
        'status' => 404,
        'message' => 'Invalid Route'
    ]);
});
