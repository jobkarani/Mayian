<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\MediaController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\CurrencyController;
use App\Http\Controllers\GuestController;
use App\Http\Controllers\DemoController;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\CottageController;
use App\Http\Controllers\ServicesController;
use App\Http\Controllers\EventsController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\StaffController;
use App\Http\Controllers\BlogCategoryController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\BookingsController;
use App\Http\Controllers\PromotionsController;
use App\Http\Controllers\WebsiteSetupController;

/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
|
| Here is where you can register admin routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

# add new translations from translations.txt
Route::get('/insert_translation_keys', [DemoController::class, 'insertTranslationKeys']);

# auth routes
Auth::routes(['register' => false]);
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

# admin routes
Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'admin', 'unbanned', 'xss']], function () {

    # required
    Route::get('/clear-cache', [AdminController::class, 'clearCache'])->name('cache.clear');
    Route::get('/', [AdminController::class, 'admin_dashboard'])->name('admin.dashboard');
    Route::post('/language', [LanguageController::class, 'changeLanguage'])->name('language.change');
    Route::post('/currency', [CurrencyController::class, 'changeCurrency'])->name('currency.change');

    # cottages
    Route::resource('/cottages', CottageController::class);
    Route::group(['prefix' => 'cottages'], function () {
        Route::get('/{id}/edit', [CottageController::class, 'edit'])->name('cottages.edit');
        Route::get('/duplicate/{id}', [CottageController::class, 'duplicate'])->name('cottages.duplicate');
        Route::post('/update/{id}', [CottageController::class, 'update'])->name('cottages.update');
        Route::post('/published', [CottageController::class, 'updatePublished'])->name('cottages.published');
        Route::post('/best', [CottageController::class, 'updateBest'])->name('cottages.best');
        Route::get('/destroy/{id}', [CottageController::class, 'destroy'])->name('cottages.destroy');
    });

    # bookings
    Route::group(['prefix' => 'bookings'], function () {
        Route::get('/', [BookingsController::class, 'index'])->name('bookings.index');
        Route::get('/{id}', [BookingsController::class, 'edit'])->name('bookings.edit');
        Route::post('/update', [BookingsController::class, 'update'])->name('bookings.update');
    });

    # services
    Route::resource('/services', ServicesController::class);
    Route::group(['prefix' => 'services'], function () {
        Route::get('/{id}/edit', [ServicesController::class, 'edit'])->name('services.edit');
        Route::post('/update/{id}', [ServicesController::class, 'update'])->name('services.update');
        Route::get('/destroy/{id}', [ServicesController::class, 'destroy'])->name('services.destroy');
        Route::post('/best', [ServicesController::class, 'updateBest'])->name('services.best');
    });

    # events
    Route::resource('/events', EventsController::class);
    Route::group(['prefix' => 'events'], function () {
        Route::get('/{id}/edit', [EventsController::class, 'edit'])->name('events.edit');
        Route::post('/update/{id}', [EventsController::class, 'update'])->name('events.update');
        Route::get('/destroy/{id}', [EventsController::class, 'destroy'])->name('events.destroy');
    });

    # guests 
    Route::resource('/guests', GuestController::class);
    Route::get('/guest/ban/{id}', [GuestController::class, 'ban'])->name('guests.ban');
    Route::get('/guests/login/{id}', [GuestController::class, 'login'])->name('guests.login');
    Route::get('/guests/destroy/{id}', [GuestController::class, 'destroy'])->name('guests.destroy');

    # profile
    Route::resource('profile', ProfileController::class);

    # newsletter
    Route::get('/promotions/subscribers', [PromotionsController::class, 'index'])->name('newsletter.index');
    Route::get('/promotions/send-emails', [PromotionsController::class, 'create'])->name('newsletter.create');
    Route::post('/promotions/send-emails', [PromotionsController::class, 'send'])->name('newsletter.send');
    Route::get('/promotions/delete-subscribers/{id}', [PromotionsController::class, 'delete'])->name('newsletter.deleteSubscribers');

    # blog categories
    Route::resource('blog-category', BlogCategoryController::class);
    Route::get('/blog-category/edit/{id}', [BlogCategoryController::class, 'edit'])->name('blog-category.edit');
    Route::get('/blog-category/destroy/{id}', [BlogCategoryController::class, 'destroy'])->name('blog-category.destroy');

    # blogs
    Route::resource('blogs', BlogController::class);
    Route::controller(BlogController::class)->group(function () {
        Route::post('/blogs/change-status', 'change_status')->name('blogs.change-status');
        Route::get('/blogs/edit/{id}', 'edit')->name('blogs.edit');
        Route::get('/blogs/destroy/{id}', 'destroy')->name('blogs.destroy');
        Route::post('/blogs/{id}', 'update')->name('blogs.update');
    });

    # settings 
    Route::post('/settings/update', [SettingController::class, 'update'])->name('settings.update');
    Route::post('/settings/update/activation', [SettingController::class, 'updateActivationSettings'])->name('settings.update.activation');
    Route::get('/general-setting', [SettingController::class, 'general_setting'])->name('general_setting.index');
    Route::get('/smtp-settings', [SettingController::class, 'smtp_settings'])->name('smtp_settings.index');
    Route::post('/env_key_update', [SettingController::class, 'env_key_update'])->name('env_key_update.update');

    # Currency
    Route::get('/currency', [CurrencyController::class, 'index'])->name('currency.index');
    Route::post('/currency/update', [CurrencyController::class, 'updateCurrency'])->name('currency.update');
    Route::post('/your-currency/update', [CurrencyController::class, 'updateYourCurrency'])->name('your_currency.update');
    Route::get('/currency/create', [CurrencyController::class, 'create'])->name('currency.create');
    Route::post('/currency/store', [CurrencyController::class, 'store'])->name('currency.store');
    Route::post('/currency/currency_edit', [CurrencyController::class, 'edit'])->name('currency.edit');
    Route::post('/currency/update_status', [CurrencyController::class, 'update_status'])->name('currency.update_status');

    # Language
    Route::resource('/languages', LanguageController::class);
    Route::post('/languages/save_default_language', [LanguageController::class, 'save_default_language'])->name('languages.save_default_language');
    Route::post('/languages/update_status', [LanguageController::class, 'update_status'])->name('languages.update_status');
    Route::post('/languages/update_rtl_status', [LanguageController::class, 'update_rtl_status'])->name('languages.update_rtl_status');
    Route::post('/languages/update_language_status', [LanguageController::class, 'update_language_status'])->name('languages.update_language_status');
    Route::get('/languages/destroy/{id}', [LanguageController::class, 'destroy'])->name('languages.destroy');
    Route::post('/languages/key_value_store', [LanguageController::class, 'key_value_store'])->name('languages.key_value_store');

    // website setting
    Route::group(['prefix' => 'website'], function () {
        # header
        Route::get('/header', [WebsiteSetupController::class, 'header'])->name('website.header');

        # homepage - hero
        Route::get('/homepage/hero', [WebsiteSetupController::class, 'homepage'])->name('website.homepage');
        Route::post('/homepage/hero', [WebsiteSetupController::class, 'heroStore'])->name('website.hero.store');
        Route::get('/homepage/delete-hero/{id}', [WebsiteSetupController::class, 'deleteHero'])->name('website.hero.delete');

        # homepage - top features
        Route::get('/homepage/top-features', [WebsiteSetupController::class, 'topFeatures'])->name('website.topFeatures');
        Route::post('/homepage/top-features', [WebsiteSetupController::class, 'topFeaturesStore'])->name('website.topFeatures.store');
        Route::get('/homepage/delete-top-features/{id}', [WebsiteSetupController::class, 'deleteTopFeature'])->name('website.topFeatures.delete');

        # homepage - testimonials
        Route::get('/homepage/testimonials', [WebsiteSetupController::class, 'testimonials'])->name('website.testimonials');
        Route::post('/homepage/testimonials', [WebsiteSetupController::class, 'testimonialsStore'])->name('website.testimonials.store');
        Route::get('/homepage/delete-testimonial/{id}', [WebsiteSetupController::class, 'deleteTestimonials'])->name('website.testimonials.delete');

        # homepage - testimonials
        Route::get('/homepage/partners', [WebsiteSetupController::class, 'partners'])->name('website.partners');
        Route::post('/homepage/partners', [WebsiteSetupController::class, 'partnersStore'])->name('website.partners.store');
        Route::get('/homepage/delete-partner/{id}', [WebsiteSetupController::class, 'deletePartners'])->name('website.partners.delete');

        # gallery routes
        Route::get('/gallery', [WebsiteSetupController::class, 'gallery'])->name('website.gallery');
        Route::post('/gallery', [WebsiteSetupController::class, 'storeGallery'])->name('website.gallery.store');
        Route::get('/gallery/edit/{id}', [WebsiteSetupController::class, 'editGallery'])->name('website.gallery.edit');
        Route::post('/gallery/update', [WebsiteSetupController::class, 'updateGallery'])->name('website.gallery.update');
        Route::get('/gallery/delete/{id}', [WebsiteSetupController::class, 'deleteGallery'])->name('website.gallery.delete');

        Route::view('/footer', 'backend.website_settings.footer')->name('website.footer');
        Route::view('/banners', 'backend.website_settings.banners')->name('website.banners');
        Route::view('/pages', 'backend.website_settings.pages.index')->name('website.pages');
        Route::view('/appearance', 'backend.website_settings.appearance')->name('website.appearance');

        Route::resource('custom-pages', PageController::class);
        Route::get('/custom-pages/edit/{id}', [PageController::class, 'edit'])->name('custom-pages.edit');
        Route::get('/custom-pages/destroy/{id}', [PageController::class, 'destroy'])->name('custom-pages.destroy');
    });

    # roles and permission
    Route::resource('roles', RoleController::class);
    Route::post('/roles/{id}', [RoleController::class, 'update'])->name('roles.update');
    Route::get('/roles/edit/{id}', [RoleController::class, 'edit'])->name('roles.edit');
    Route::get('/roles/destroy/{id}', [RoleController::class, 'destroy'])->name('roles.destroy');

    # staffs
    Route::resource('staffs', StaffController::class);
    Route::get('/staffs/destroy/{id}', [StaffController::class, 'destroy'])->name('staffs.destroy');

    # uploaded files 
    Route::resource('/uploaded-files', MediaController::class);
    Route::get('/uploaded-files/destroy/{id}', [MediaController::class, 'destroy'])->name('uploaded-files.destroy');
});

# refresh-token
Route::get('/refresh-token', function () {
    return csrf_token();
});

# uppy uploader routes
Route::post('/yest-uploader', [MediaController::class, 'uploaderModal']);
Route::post('/yest-uploader/upload', [MediaController::class, 'upload']);
Route::get('/yest-uploader/get-media-files', [MediaController::class, 'getMediaFiles']);
Route::delete('/yest-uploader/destroy/{id}', [MediaController::class, 'destroy']);
Route::post('/yest-uploader/get-specific-files', [MediaController::class, 'get_preview_files']);
