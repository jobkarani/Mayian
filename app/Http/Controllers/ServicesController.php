<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Service;
use App\Models\Language;
use App\Models\ServiceTranslation;

class ServicesController extends Controller
{
    # constructor
    public function __construct()
    {
        $this->middleware(['permission:show_services'])->only('index');
        $this->middleware(['permission:add_services'])->only(['create', 'store']);
        $this->middleware(['permission:edit_services'])->only(['edit', 'update']);
        $this->middleware(['permission:delete_services'])->only('destroy');
    }

    # return services
    public function index(Request $request)
    {
        $query = null;
        $sort_search = null;
        $services = Service::latest();
        if ($request->search != null) {
            $services = $services->where('name', 'like', '%' . $request->search . '%');
            $sort_search = $request->search;
        }

        $services = $services->paginate(15);
        return view('backend.services.index', compact('services', 'sort_search'));
    }

    # return add form
    public function create()
    {
        return view('backend.services.create');
    }

    # add new data
    public function store(Request $request)
    {

        $service                                = new Service;
        $service->name                          = $request->name;
        $service->short_description             = $request->short_description;
        $service->description                   = $request->description;
        $service->gallery_images                = $request->photos;
        $service->thumbnail_image               = $request->thumbnail_image;
        $service->slug                          = Str::slug($request->name, '-') . '-' . strtolower(Str::random(5));


        // SEO meta
        $service->meta_title        = (!is_null($request->meta_title)) ? $request->meta_title : $service->name;
        $service->meta_description  = (!is_null($request->meta_description)) ? $request->meta_description : strip_tags($service->description);
        $service->meta_image          = (!is_null($request->meta_image)) ? $request->meta_image : $service->thumbnail_image;

        $service->save();

        // service Translations
        $service_translation = ServiceTranslation::firstOrNew(['lang' =>  env('DEFAULT_LANGUAGE'), 'service_id' => $service->id]);
        $service_translation->name = $request->name;
        $service_translation->short_description = $request->short_description;
        $service_translation->description = $request->description;

        $service_translation->save();

        flash(localize('Service has been inserted successfully'))->success();
        return redirect()->route('services.index');
    }

    # will show details data
    public function show($id)
    {
        // 
    }

    # edit service
    public function edit(Request $request, $id)
    {
        $lang = $request->lang;
        $language = Language::where('code', $lang)->first();
        if (!$language) {
            flash(localize('Language you are trying to translate is not available or not active'))->error();
            return redirect()->route('services.index');
        }

        $service = Service::findOrFail($id);
        return view('backend.services.edit', compact('service', 'lang'));
    }

    # update service
    public function update(Request $request, $id)
    {

        $service = Service::findOrFail($id);
        if ($request->lang == env("DEFAULT_LANGUAGE")) {
            $service->name                          = $request->name;
            $service->short_description             = $request->short_description;
            $service->description                   = $request->description;
            $service->gallery_images                = $request->photos;
            $service->thumbnail_image               = $request->thumbnail_image;
            $service->slug              = (!is_null($request->slug)) ? Str::slug($request->slug, '-') : Str::slug($request->name, '-') . '-' . strtolower(Str::random(5));

            // SEO meta
            $service->meta_title        = (!is_null($request->meta_title)) ? $request->meta_title : $service->name;
            $service->meta_description  = (!is_null($request->meta_description)) ? $request->meta_description : strip_tags($service->description);
            $service->meta_image          = (!is_null($request->meta_image)) ? $request->meta_image : $service->thumbnail_image;

            $service->save();
        }

        // service Translations
        $service_translation = ServiceTranslation::firstOrNew(['lang' => $request->lang, 'service_id' => $service->id]);
        $service_translation->name = $request->name;
        $service_translation->short_description = $request->short_description;
        $service_translation->description = $request->description;

        $service_translation->save();

        flash(localize('Service has been updated successfully'))->success();
        return back();
    }


    # delete service
    public function destroy($id)
    {
        if (Service::destroy($id)) {
            flash(localize('Service has been deleted successfully'))->success();
            return redirect()->route('services.index');
        } else {
            flash(localize('Something went wrong'))->error();
            return back();
        }
    }


    # change best status
    public function updateBest(Request $request)
    {
        $cottage = Service::findOrFail($request->id);
        $cottage->is_best = $request->status;
        $cottage->save();
        cacheClear();
        return 1;
    }
}
