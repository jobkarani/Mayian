<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class GuestController extends Controller
{
    # constructor
    public function __construct()
    {
        $this->middleware(['permission:show_guests'])->only('index');
        $this->middleware(['permission:ban_guests'])->only('ban');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $sort_search = null;
        $customers = User::where('user_type', 'customer')->orderBy('created_at', 'desc');
        if ($request->has('search')) {
            $sort_search = $request->search;
            $customers = $customers->where('name', 'like', '%' . $sort_search . '%')->orWhere('email', 'like', '%' . $sort_search . '%');
        }
        $customers = $customers->paginate(15);
        return view('backend.customers.index', compact('customers', 'sort_search'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::findOrFail($id);
        return view('backend.customers.show', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);

        // delete chats, conversation and related data 
        try {
        } catch (\Throwable $th) {
            //throw $th;
        }


        $user->delete();

        flash(localize('Guest deleted successfully'))->error();
        return back();
    }

    # ban guest
    public function ban($id)
    {
        $user = User::find($id);

        if ($user->banned == 1) {
            $user->banned = 0;
            flash(localize('Guest Unbanned Successfully'))->success();
        } else {
            $user->banned = 1;
            flash(localize('Guest Banned Successfully'))->success();
        }

        $user->save();

        return back();
    }
}
