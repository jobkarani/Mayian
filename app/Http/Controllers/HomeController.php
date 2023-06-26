<?php

namespace App\Http\Controllers;

use App\Http\Resources\GalleryResource;
use App\Http\Resources\PageResource;
use App\Models\Cottage;
use App\Models\Currency;
use App\Models\Gallery;
use Illuminate\Http\Request;
use App\Models\Language;
use App\Models\Page;

class HomeController extends Controller
{
    # return to home
    public function index(Request $request, $slug = null)
    {
        $meta = [
            'meta_title' => getSetting('meta_title'),
            'meta_description' => getSetting('meta_description'),
            'meta_image' => uploadedAsset(getSetting('meta_image')),
            'meta_keywords' => getSetting('meta_keywords'),
        ];
        $meta['meta_title'] = $meta['meta_title'] ? $meta['meta_title'] : config('app.name');

        $settings = [
            // general settings
            'generalSettings' => [
                'appName'  =>  config('app.name'),
                'basename' => config('app.basename'),
                'demoMode' => config('app.demoMode'),
                'rootUrl'  => \Request::root(),
                'apiPath'  => \Request::root() . '/api/v1',
                'appLogo'  => getSetting('header_logo') ? uploadedAsset(getSetting('header_logo')) : '',
                'appLogoDark'  => getSetting('header_logo_dark') ? uploadedAsset(getSetting('header_logo_dark')) : '',
                'allLanguages' => Language::where('status', 1)->get(['name', 'code', 'flag', 'rtl']),
                'defaultLang'  => env('DEFAULT_LANGUAGE'),
                'allCurrencies' => Currency::where('status', 1)->get(['symbol', 'code', 'exchange_rate', 'alignment']),
                'defaultCurrency'  => Currency::where('code', env('DEFAULT_CURRENCY'))->first(['symbol', 'code', 'exchange_rate', 'alignment']),
                'checkInTime' => getSetting('check_in_time'),
                'checkOutTime' => getSetting('check_out_time'),
                'sliders' => getSliderImages(getSetting('hero_sliders')),
                'topbar_helpline_number' => getSetting('topbar_helpline_number'),
                'topbar_email' => getSetting('topbar_email'),
                'topbar_facebook_link' => getSetting('topbar_facebook_link'),
                'topbar_twitter_link' => getSetting('topbar_twitter_link'),
                'topbar_instagram_link' => getSetting('topbar_instagram_link'),
                'topbar_linked_in_link' => getSetting('topbar_linked_in_link'),
                'topFeatures' => getTopFeatures(getSetting('top_features')),
                'testimonials' => getTestimonials(getSetting('testimonials')),
                'partners' => getPartners(getSetting('partners')),
                'footer_about' => getSetting('footer_about'),
                'footer_address' => getSetting('contact_address'),
                'footer_phone' => getSetting('contact_phone'),
                'footer_email' => getSetting('contact_email'),
                'footer_pages' => PageResource::collection(Page::all()), //todo:: get without details & get details in useEffect
                'copyright_text' => getSetting('frontend_copyright_text'),
                'galleries' => GalleryResource::collection(Gallery::orderBy('order', 'ASC')->get()),
            ],
        ];

        return view('frontend.home', compact('settings', 'meta'));
    }

    # sitemap
    public function sitemap()
    {
        $cottages = Cottage::latest()->get();
        return response()->view('sitemap', compact('cottages'))
            ->header('Content-Type', 'text/xml');
    }
}
