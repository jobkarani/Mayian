<?php

namespace App\Http\Controllers\Api;

use App\Models\Subscriber;
use Illuminate\Http\Request;

class SubscribeController extends Controller
{
    # subscribe to newsletter
    public function subscribe(Request $request)
    {
        Subscriber::updateOrCreate([
            'email' => $request->email,
        ]);
        return response()->json([
            'success' => true,
            'message' => localize('You have subscribed successfully.'),
        ]);
    }
}
