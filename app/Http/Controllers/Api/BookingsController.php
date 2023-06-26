<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\BookingResource;
use App\Models\Booking;
use App\Models\Cottage;
use Illuminate\Http\Request;

class BookingsController extends Controller
{
    # get bookings
    public function index()
    {
        $bookings = BookingResource::collection(Booking::where('user_id', auth('api')->user()->id)->latest()->paginate(10));
        return $bookings;
    }

    # get recent bookings
    public function recentIndex()
    {
        $bookings = Booking::where('user_id', auth('api')->user()->id)->latest()->take(5)->get();
        return BookingResource::collection($bookings);
    }

    # save new bookings
    public function store(Request $request)
    {
        $booking = new Booking;
        $cottage = Cottage::find((int) $request->cottageId);

        $existingBooking = Booking::where('cottage_id', $cottage->id)
            ->where('check_in_date', '<=', strtotime($request->checkOut))
            ->where('check_out_date', '>', strtotime($request->checkIn))
            ->where('status', '!=', 'cancelled')
            ->first();

        if (!is_null($existingBooking)) {
            return [
                'success'   => false,
                'message'   => localize('This cottage is not available in selected dates')
            ];
        }

        $booking->cottage_id        = $cottage->id;
        $booking->check_in_date     = strtotime($request->checkOut);
        $booking->check_out_date    = strtotime($request->checkIn);
        $booking->staying_nights    = $request->stayingNights;
        $booking->cost              = $request->stayingNights * $cottage->price;
        $booking->user_id           = auth('api')->user()->id;
        $booking->address           = $request->address;
        $booking->phone             = $request->phone;
        $booking->additional_info   = $request->additionalInfo;
        $booking->adults            = $request->adults;
        $booking->children          = $request->children;
        $booking->save();

        return [
            'success'   => true,
            'message'   => localize('Your booking has been listed, please wait for confirmation')
        ];
    }
}
