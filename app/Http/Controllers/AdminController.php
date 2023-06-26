<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Order;
use App\Models\Setting;
use Artisan;
use Cache;
use Illuminate\Http\Request;
use Str;

class AdminController extends Controller
{
    /**
     * Show the admin dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function admin_dashboard(Request $request)
    {
        return view('backend.dashboard');
    }

    # clear cache
    function clearCache(Request $request)
    {
        cacheClear();
        Setting::where('type', 'force_cacheClear_version')->update([
            "value" => strtolower(Str::random(30))
        ]);
        flash(localize('Cache cleared successfully'))->success();
        return back();
    }
}
