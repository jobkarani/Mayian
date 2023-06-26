<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Event;
use App\Models\Language;
use App\Models\EventTranslation;

class EventsController extends Controller
{
    # constructor
    public function __construct()
    {
        $this->middleware(['permission:show_events'])->only('index');
        $this->middleware(['permission:add_events'])->only(['create', 'store']);
        $this->middleware(['permission:edit_events'])->only(['edit', 'update']);
        $this->middleware(['permission:delete_events'])->only('destroy');
    }

    # return events
    public function index(Request $request)
    {
        $query = null;
        $sort_search = null;
        $events = Event::latest();
        if ($request->search != null) {
            $events = $events->where('title', 'like', '%' . $request->search . '%');
            $sort_search = $request->search;
        }

        $events = $events->paginate(15);
        return view('backend.events.index', compact('events', 'sort_search'));
    }

    # return add form
    public function create()
    {
        return view('backend.events.create');
    }

    # add new data
    public function store(Request $request)
    {
        $event                                = new Event;
        $event->title                         = $request->title;
        if ($request->date_range != null) {
            $date_var               = explode(" to ", $request->date_range);
            $event->start_date = strtotime($date_var[0]);
            $event->end_date   = strtotime($date_var[1]);
        }
        $event->time                          = $request->time;
        $event->fee                           = $request->fee;
        $event->location                      = $request->location;

        $event->short_description             = $request->short_description;
        $event->description                   = $request->description;
        $event->gallery_images                = $request->photos;
        $event->thumbnail_image               = $request->thumbnail_image;
        $event->slug                          = Str::slug($request->title, '-') . '-' . strtolower(Str::random(5));


        // SEO meta
        $event->meta_title        = (!is_null($request->meta_title)) ? $request->meta_title : $event->title;
        $event->meta_description  = (!is_null($request->meta_description)) ? $request->meta_description : strip_tags($event->description);
        $event->meta_image          = (!is_null($request->meta_image)) ? $request->meta_image : $event->thumbnail_image;

        $event->save();

        // event Translations
        $event_translation = EventTranslation::firstOrNew(['lang' => env('DEFAULT_LANGUAGE'), 'event_id' => $event->id]);
        $event_translation->title = $request->title;
        $event_translation->short_description = $request->short_description;
        $event_translation->description = $request->description;

        $event_translation->save();

        flash(localize('Event has been inserted successfully'))->success();
        return redirect()->route('events.index');
    }

    # will show details data
    public function show($id)
    {
        // 
    }

    # edit events
    public function edit(Request $request, $id)
    {
        $lang = $request->lang;
        $language = Language::where('code', $lang)->first();
        if (!$language) {
            flash(localize('Language you are trying to translate is not available or not active'))->error();
            return redirect()->route('events.index');
        }

        $event = Event::findOrFail($id);
        return view('backend.events.edit', compact('event', 'lang'));
    }

    # update Event
    public function update(Request $request, $id)
    {

        $event = Event::findOrFail($id);
        if ($request->lang == env("DEFAULT_LANGUAGE")) {

            $event->title                         = $request->title;
            if ($request->date_range != null) {
                $date_var               = explode(" to ", $request->date_range);
                $event->start_date = strtotime($date_var[0]);
                $event->end_date   = strtotime($date_var[1]);
            }
            $event->time                          = $request->time;
            $event->fee                           = $request->fee;
            $event->location                      = $request->location;

            $event->short_description             = $request->short_description;
            $event->description                   = $request->description;
            $event->gallery_images                = $request->photos;
            $event->thumbnail_image               = $request->thumbnail_image;
            $event->slug              = (!is_null($request->slug)) ? Str::slug($request->slug, '-') : Str::slug($request->title, '-') . '-' . strtolower(Str::random(5));

            // SEO meta
            $event->meta_title        = (!is_null($request->meta_title)) ? $request->meta_title : $event->title;
            $event->meta_description  = (!is_null($request->meta_description)) ? $request->meta_description : strip_tags($event->description);
            $event->meta_image          = (!is_null($request->meta_image)) ? $request->meta_image : $event->thumbnail_image;

            $event->save();
        }

        // service Translations
        $event_translation = EventTranslation::firstOrNew(['lang' => $request->lang, 'event_id' => $event->id]);
        $event_translation->title = $request->title;
        $event_translation->short_description = $request->short_description;
        $event_translation->description = $request->description;

        $event_translation->save();

        flash(localize('Event has been updated successfully'))->success();
        return back();
    }

    # delete event
    public function destroy($id)
    {
        if (Event::destroy($id)) {
            flash(localize('Event has been deleted successfully'))->success();
            return redirect()->route('events.index');
        } else {
            flash(localize('Something went wrong'))->error();
            return back();
        }
    }
}
