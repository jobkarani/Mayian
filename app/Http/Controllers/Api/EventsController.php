<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\EventResource;
use App\Http\Services\EventService;
use App\Models\Event;
use Illuminate\Http\Request;

class EventsController extends Controller
{
    # get events
    public function index()
    {
        $events = EventResource::collection(Event::latest()->paginate(6, (new EventService)->getServiceFields()));
        return $events;
    }

    # get event by slug
    public function show($slug)
    {
        $event = Event::where('slug', $slug)->first();
        return [
            'data'           => new EventResource($event)
        ];
    }
}
