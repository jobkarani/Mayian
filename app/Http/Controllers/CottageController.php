<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Cottage;
use App\Models\Language;
use App\Models\CottageTranslation;

class CottageController extends Controller
{
    # constructor
    public function __construct()
    {
        $this->middleware(['permission:show_cottages'])->only('index');
        $this->middleware(['permission:add_cottages'])->only(['create', 'store']);
        $this->middleware(['permission:edit_cottages'])->only(['edit', 'update']);
    }

    # return cottages
    public function index(Request $request)
    {
        $query = null;
        $sort_search = null;
        $cottages = Cottage::orderBy('created_at', 'desc');
        if ($request->search != null) {
            $cottages = $cottages->where('name', 'like', '%' . $request->search . '%');
            $sort_search = $request->search;
        }

        $cottages = $cottages->paginate(15);
        return view('backend.cottages.index', compact('cottages', 'sort_search'));
    }

    # return add form
    public function create()
    {
        return view('backend.cottages.create');
    }

    # add new data
    public function store(Request $request)
    {

        $cottage                    = new Cottage;
        $cottage->name              = $request->name;
        $cottage->price             = $request->price;
        $cottage->timeline          = $request->timeline;
        $cottage->num_of_rooms      = $request->num_of_rooms;
        $cottage->num_of_beds       = $request->num_of_beds;
        $cottage->size              = $request->size;
        $cottage->gallery_images    = $request->photos;
        $cottage->thumbnail_image   = $request->thumbnail_image;
        $cottage->description       = $request->description;
        $cottage->video_link        = $request->video_link;

        if ($request->video_provider) {
            $cottage->video_provider    = $request->video_provider;
        }

        $cottage->rating            = $request->rating;
        $cottage->is_published      = $request->is_published;

        // SEO meta
        $cottage->meta_title        = (!is_null($request->meta_title)) ? $request->meta_title : $cottage->name;
        $cottage->meta_description  = (!is_null($request->meta_description)) ? $request->meta_description : strip_tags($cottage->description);
        $cottage->meta_image          = (!is_null($request->meta_image)) ? $request->meta_image : $cottage->thumbnail_image;

        $cottage->slug              = Str::slug($request->name, '-') . '-' . strtolower(Str::random(5));
        $cottage->save();

        // Cottage Translations
        $cottage_translation = CottageTranslation::firstOrNew(['lang' => env('DEFAULT_LANGUAGE'), 'cottage_id' => $cottage->id]);
        $cottage_translation->name = $request->name;
        $cottage_translation->timeline = $request->timeline;
        $cottage_translation->description = $request->description;
        $cottage_translation->size = $request->size;
        $cottage_translation->save();
        $cottage->save();

        flash(localize('Cottage has been inserted successfully'))->success();
        return redirect()->route('cottages.index');
    }

    # will show details data
    public function show($id)
    {
        // 
    }

    # edit cottage
    public function edit(Request $request, $id)
    {
        $lang = $request->lang;
        $language = Language::where('code', $lang)->first();
        if (!$language) {
            flash(localize('Language you are trying to translate is not available or not active'))->error();
            return redirect()->route('cottages.index');
        }

        $cottage = Cottage::findOrFail($id);
        return view('backend.cottages.edit', compact('cottage', 'lang'));
    }

    # update cottage
    public function update(Request $request, $id)
    {

        $cottage                    = Cottage::findOrFail($id);
        if ($request->lang == env("DEFAULT_LANGUAGE")) {
            $cottage->name              = $request->name;
            $cottage->price             = $request->price;
            $cottage->timeline          = $request->timeline;
            $cottage->num_of_rooms      = $request->num_of_rooms;
            $cottage->num_of_beds       = $request->num_of_beds;
            $cottage->size              = $request->size;
            $cottage->gallery_images    = $request->photos;
            $cottage->thumbnail_image   = $request->thumbnail_image;
            $cottage->description       = $request->description;
            $cottage->video_link        = $request->video_link;

            if ($request->video_provider) {
                $cottage->video_provider    = $request->video_provider;
            }

            $cottage->rating            = $request->rating;
            $cottage->is_published      = $request->is_published;

            $cottage->slug              = (!is_null($request->slug)) ? Str::slug($request->slug, '-') : Str::slug($request->name, '-') . '-' . strtolower(Str::random(5));

            // SEO meta
            $cottage->meta_title        = (!is_null($request->meta_title)) ? $request->meta_title : $cottage->name;
            $cottage->meta_description  = (!is_null($request->meta_description)) ? $request->meta_description : strip_tags($cottage->description);
            $cottage->meta_image          = (!is_null($request->meta_image)) ? $request->meta_image : $cottage->thumbnail_image;
        }

        // Cottage Translations
        $cottage_translation                = CottageTranslation::firstOrNew(['lang' => $request->lang, 'cottage_id' => $cottage->id]);
        $cottage_translation->name = $request->name;
        $cottage_translation->timeline = $request->timeline;
        $cottage_translation->description = $request->description;
        $cottage_translation->size = $request->size;

        $cottage_translation->save();
        $cottage->save();
        flash(localize('Cottage has been updated successfully'))->success();
        return back();
    }


    # change published status 
    public function updatePublished(Request $request)
    {
        $cottage = Cottage::findOrFail($request->id);
        $cottage->is_published = $request->status;
        $cottage->save();
        cacheClear();
        return 1;
    }

    # change best status
    public function updateBest(Request $request)
    {
        $cottage = Cottage::findOrFail($request->id);
        $cottage->is_best = $request->status;
        $cottage->save();
        cacheClear();
        return 1;
    }

    # delete cottage
    public function destroy($id)
    {
        if (Cottage::destroy($id)) {
            flash(localize('Cottage has been deleted successfully'))->success();
            return redirect()->route('cottages.index');
        } else {
            flash(localize('Something went wrong'))->error();
            return back();
        }
    }
}
