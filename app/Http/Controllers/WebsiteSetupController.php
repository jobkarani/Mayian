<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use App\Models\Setting;
use App\Models\Upload;
use Illuminate\Http\Request;

class WebsiteSetupController extends Controller
{
    # constructor
    public function __construct()
    {
        $this->middleware(['permission:manage_header'])->only('header');
        $this->middleware(['permission:manage_homepage'])->only(['homepage', 'topFeatures', 'testimonials', 'partners']);
        $this->middleware(['permission:manage_gallery'])->only('gallery');
    }

    # header configuration
    public function header()
    {
        return view('backend.website_settings.header');
    }

    # hero configuration
    public function homepage()
    {
        $sliders = getSetting('hero_sliders');
        return view('backend.website_settings.homepage.hero', compact('sliders'));
    }

    # hero configuration store
    public function heroStore(Request $request)
    {
        $sliderSetting = Setting::where('type', 'hero_sliders')->first();
        if (!is_null($sliderSetting)) {
            if (!is_null($sliderSetting->value) && $sliderSetting->value != '') {
                $sliders = json_decode($sliderSetting->value);
                $newSlider = new Upload; //temp obj
                $newSlider->id      = rand(100000, 999999);
                $newSlider->title   = $request->title ? $request->title : '';
                $newSlider->link    = $request->link ? $request->link : '';
                $newSlider->image   = $request->image ? $request->image : '';
                array_push($sliders, $newSlider);
                $sliderSetting->value = json_encode($sliders);
                $sliderSetting->save();
            } else {
                $value = [];
                $newSlider = new Upload; //temp obj
                $newSlider->id      = rand(100000, 999999);
                $newSlider->title   = $request->title ? $request->title : '';
                $newSlider->link    = $request->link ? $request->link : '';
                $newSlider->image   = $request->image ? $request->image : '';
                array_push($value, $newSlider);
                $sliderSetting->value = json_encode($value);
                $sliderSetting->save();
            }
        } else {
            $sliderSetting = new Setting;
            $sliderSetting->type = 'hero_sliders';

            $value = [];
            $newSlider = new Upload; //temp obj
            $newSlider->id      = rand(100000, 999999);
            $newSlider->title   = $request->title ? $request->title : '';
            $newSlider->link    = $request->link ? $request->link : '';
            $newSlider->image   = $request->image ? $request->image : '';
            array_push($value, $newSlider);
            $sliderSetting->value = json_encode($value);
            $sliderSetting->save();
        }
        cacheClear();
        flash(localize('Slider image added successfully'))->success();
        return back();
    }

    # delete hero slider
    public function deleteHero($id)
    {
        $sliderSetting = Setting::where('type', 'hero_sliders')->first();
        if (!is_null($sliderSetting)) {
            if (!is_null($sliderSetting->value) && $sliderSetting->value != '') {
                $sliders = json_decode($sliderSetting->value);
                $value = [];
                foreach ($sliders as $slider) {
                    if ($slider->id != $id) {
                        array_push($value, $slider);
                    }
                }
                $sliderSetting->value = json_encode($value);
                $sliderSetting->save();

                cacheClear();
                flash(localize('Slider image deleted successfully'))->success();
                return back();
            }
        }
    }

    # topFeatures
    public function topFeatures()
    {
        $top_features = getSetting('top_features');
        return view('backend.website_settings.homepage.topFeatures', compact('top_features'));
    }

    # top features store
    public function topFeaturesStore(Request $request)
    {
        $sliderSetting = Setting::where('type', 'top_features')->first();
        if (!is_null($sliderSetting)) {
            if (!is_null($sliderSetting->value) && $sliderSetting->value != '') {
                $sliders = json_decode($sliderSetting->value);
                $newSlider = new Upload; //temp obj
                $newSlider->id      = rand(100000, 999999);
                $newSlider->title   = $request->title ? $request->title : '';
                $newSlider->image   = $request->image ? $request->image : '';
                array_push($sliders, $newSlider);
                $sliderSetting->value = json_encode($sliders);
                $sliderSetting->save();
            } else {
                $value = [];
                $newSlider = new Upload; //temp obj
                $newSlider->id      = rand(100000, 999999);
                $newSlider->title   = $request->title ? $request->title : '';
                $newSlider->image   = $request->image ? $request->image : '';
                array_push($value, $newSlider);
                $sliderSetting->value = json_encode($value);
                $sliderSetting->save();
            }
        } else {
            $sliderSetting = new Setting;
            $sliderSetting->type = 'top_features';

            $value = [];
            $newSlider = new Upload; //temp obj
            $newSlider->id      = rand(100000, 999999);
            $newSlider->title   = $request->title ? $request->title : '';
            $newSlider->image   = $request->image ? $request->image : '';
            array_push($value, $newSlider);
            $sliderSetting->value = json_encode($value);
            $sliderSetting->save();
        }
        cacheClear();
        flash(localize('Feature added successfully'))->success();
        return back();
    }

    # delete top feature
    public function deleteTopFeature($id)
    {
        $sliderSetting = Setting::where('type', 'top_features')->first();
        if (!is_null($sliderSetting)) {
            if (!is_null($sliderSetting->value) && $sliderSetting->value != '') {
                $sliders = json_decode($sliderSetting->value);
                $value = [];
                foreach ($sliders as $slider) {
                    if ($slider->id != $id) {
                        array_push($value, $slider);
                    }
                }
                $sliderSetting->value = json_encode($value);
                $sliderSetting->save();

                cacheClear();
                flash(localize('Feature deleted successfully'))->success();
                return back();
            }
        }
    }

    # testimonials
    public function testimonials()
    {
        $testimonials = getSetting('testimonials');
        return view('backend.website_settings.homepage.testimonials', compact('testimonials'));
    }

    # testimonials store
    public function testimonialsStore(Request $request)
    {
        $sliderSetting = Setting::where('type', 'testimonials')->first();
        if (!is_null($sliderSetting)) {
            if (!is_null($sliderSetting->value) && $sliderSetting->value != '') {
                $sliders = json_decode($sliderSetting->value);
                $newSlider = new Upload; //temp obj
                $newSlider->id      = rand(100000, 999999);
                $newSlider->name   = $request->name;
                $newSlider->image   = $request->image ? $request->image : '';
                $newSlider->rating   = $request->rating;
                $newSlider->remark   = $request->remark;
                array_push($sliders, $newSlider);
                $sliderSetting->value = json_encode($sliders);
                $sliderSetting->save();
            } else {
                $value = [];
                $newSlider = new Upload; //temp obj
                $newSlider->id      = rand(100000, 999999);
                $newSlider->name   = $request->name;
                $newSlider->image   = $request->image ? $request->image : '';
                $newSlider->rating   = $request->rating;
                $newSlider->remark   = $request->remark;
                array_push($value, $newSlider);
                $sliderSetting->value = json_encode($value);
                $sliderSetting->save();
            }
        } else {
            $sliderSetting = new Setting;
            $sliderSetting->type = 'testimonials';

            $value = [];
            $newSlider = new Upload; //temp obj
            $newSlider->id      = rand(100000, 999999);
            $newSlider->name   = $request->name;
            $newSlider->image   = $request->image ? $request->image : '';
            $newSlider->rating   = $request->rating;
            $newSlider->remark   = $request->remark;
            array_push($value, $newSlider);
            $sliderSetting->value = json_encode($value);
            $sliderSetting->save();
        }
        cacheClear();
        flash(localize('Feedback added successfully'))->success();
        return back();
    }

    # delete testimonials
    public function deleteTestimonials($id)
    {
        $sliderSetting = Setting::where('type', 'testimonials')->first();
        if (!is_null($sliderSetting)) {
            if (!is_null($sliderSetting->value) && $sliderSetting->value != '') {
                $sliders = json_decode($sliderSetting->value);
                $value = [];
                foreach ($sliders as $slider) {
                    if ($slider->id != $id) {
                        array_push($value, $slider);
                    }
                }
                $sliderSetting->value = json_encode($value);
                $sliderSetting->save();

                cacheClear();
                flash(localize('Feedback deleted successfully'))->success();
                return back();
            }
        }
    }

    # gallery index
    public function gallery()
    {
        $galleries = Gallery::orderBy('order', 'ASC')->get();
        return view('backend.website_settings.gallery', compact('galleries'));
    }

    # gallery store
    public function storeGallery(Request $request)
    {
        $gallery = new Gallery;
        $gallery->order = $request->order;
        $gallery->image = $request->image;
        $gallery->save();
        flash(localize('Image added successfully'))->success();
        return back();
    }

    # gallery edit
    public function editGallery($id)
    {
        $gallery = Gallery::find($id);
        return view('backend.website_settings.editGallery', compact('gallery'));
    }

    # gallery store
    public function updateGallery(Request $request)
    {
        $gallery = Gallery::find((int) $request->id);
        $gallery->order = $request->order;
        $gallery->image = $request->image;
        $gallery->save();
        flash(localize('Image updated successfully'))->success();
        return redirect()->route('website.gallery');
    }

    # delete gallery
    public function deleteGallery($id)
    {
        try {
            Gallery::where('id', $id)->delete();
            flash(localize('Image deleted successfully'))->success();
            return back();
        } catch (\Exception $e) {
            // 
            return back();
        }
    }

    # partners
    public function partners()
    {
        $partners = getSetting('partners');
        return view('backend.website_settings.homepage.partners', compact('partners'));
    }

    # partners store
    public function partnersStore(Request $request)
    {
        $sliderSetting = Setting::where('type', 'partners')->first();
        if (!is_null($sliderSetting)) {
            if (!is_null($sliderSetting->value) && $sliderSetting->value != '') {
                $sliders = json_decode($sliderSetting->value);
                $newSlider = new Upload; //temp obj
                $newSlider->id      = rand(100000, 999999);
                $newSlider->image   = $request->image ? $request->image : '';
                array_push($sliders, $newSlider);
                $sliderSetting->value = json_encode($sliders);
                $sliderSetting->save();
            } else {
                $value = [];
                $newSlider = new Upload; //temp obj
                $newSlider->id      = rand(100000, 999999);
                $newSlider->image   = $request->image ? $request->image : '';
                array_push($value, $newSlider);
                $sliderSetting->value = json_encode($value);
                $sliderSetting->save();
            }
        } else {
            $sliderSetting = new Setting;
            $sliderSetting->type = 'partners';

            $value = [];
            $newSlider = new Upload; //temp obj
            $newSlider->id      = rand(100000, 999999);
            $newSlider->image   = $request->image ? $request->image : '';
            array_push($value, $newSlider);
            $sliderSetting->value = json_encode($value);
            $sliderSetting->save();
        }
        cacheClear();
        flash(localize('Partner added successfully'))->success();
        return back();
    }

    # delete testimonials
    public function deletePartners($id)
    {
        $sliderSetting = Setting::where('type', 'partners')->first();
        if (!is_null($sliderSetting)) {
            if (!is_null($sliderSetting->value) && $sliderSetting->value != '') {
                $sliders = json_decode($sliderSetting->value);
                $value = [];
                foreach ($sliders as $slider) {
                    if ($slider->id != $id) {
                        array_push($value, $slider);
                    }
                }
                $sliderSetting->value = json_encode($value);
                $sliderSetting->save();

                cacheClear();
                flash(localize('Partner deleted successfully'))->success();
                return back();
            }
        }
    }
}
