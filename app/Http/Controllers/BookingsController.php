<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use App\Notifications\BookingNotification;
use Illuminate\Http\Request;

class BookingsController extends Controller
{
    # constructor
    public function __construct()
    {
        $this->middleware(['permission:show_bookings'])->only(['index', 'edit', 'update']);
    }

    # return bookings
    public function index(Request $request)
    {
        $query = null;
        $sort_cottage = null;
        $sort_status = null;
        $bookings = Booking::orderBy('check_in_date', 'desc');

        if ($request->sort_cottage != null) {
            $bookings = $bookings->where('cottage_id', $request->sort_cottage);
            $sort_cottage = $request->sort_cottage;
        }

        if ($request->sort_status != null) {
            $bookings = $bookings->where('status', $request->sort_status);
            $sort_status = $request->sort_status;
        }

        $bookings = $bookings->paginate(15);
        return view('backend.bookings.index', compact('bookings', 'sort_cottage', 'sort_status'));
    }

    # edit details
    public function edit($id)
    {
        $booking = Booking::findOrFail($id);
        return view('backend.bookings.edit', compact('booking'));
    }

    # update booking
    public function update(Request $request)
    {
        $booking = Booking::where('id', $request->id)->first();
        if ($request->status != $booking->status) {
            $booking->status = $request->status;
            $booking->save();

            // send emails here
            try {
                $user = $booking->user;
                $user->notify(new BookingNotification($booking));
            } catch (\Throwable $th) {
                //throw $th;
            }
        }

        flash(localize('Booking has been updated successfully'))->success();
        return redirect()->route('bookings.index');
    }
}
