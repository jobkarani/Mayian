<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\CottageResource;
use App\Http\Services\CottageService;
use App\Models\Booking;
use App\Models\Cottage;
use Illuminate\Http\Request;

class CottagesController extends Controller
{
    # get cottages
    public function index()
    {
        $cottages = CottageResource::collection(Cottage::isPublished()->paginate(6, (new CottageService)->getCottageFields()));
        return $cottages;
    }

    # get filter cottages
    public function indexFilter(Request $request)
    {
        $cottages = Cottage::with('bookings');

        $cottages = $request->rooms > 5 ?  $cottages->where('num_of_rooms', '>', 5) : $cottages->where('num_of_rooms', $request->rooms);

        // todo:: filter with request dates v1.5
        $cottages = CottageResource::collection($cottages->isPublished()->latest()->get((new CottageService)->getCottageFields()));

        return $cottages;
    }

    # get best cottages
    public function bestIndex()
    {
        return CottageResource::collection(Cottage::isBest()->latest()->isPublished()->get((new CottageService)->getCottageFields()));
    }

    # get cottage by id
    public function show(Request $request, $slug)
    {
        $cottage = Cottage::where('slug', $slug)->first();
        $booking = Booking::where('cottage_id', $cottage->id);

        $booking =  $booking->where('check_in_date', '<=', strtotime($request->checkOut))
            ->where('check_out_date', '>', strtotime($request->checkIn))
            ->where('status', '!=', 'cancelled')
            ->first();

        $datediff = strtotime($request->checkOut) - strtotime($request->checkIn);

        if (strtotime($request->checkOut) < strtotime($request->checkIn)) {
            return [
                'data'           => new CottageResource($cottage),
                'availability'   => false,
                'stayingNights'    => round(abs($datediff) / 86400)
            ];
        }

        return [
            'data'           => new CottageResource($cottage),
            'availability'   => is_null($booking) ? true : false,
            'stayingNights'    => round(abs($datediff) / 86400)
        ];
    }
}
