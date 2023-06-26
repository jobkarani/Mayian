<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subscriber;
use Mail;
use App\Mail\EmailManager;

class PromotionsController extends Controller
{

    # constructor
    public function __construct()
    {
        $this->middleware(['permission:show_subscribers'])->only('index');
        $this->middleware(['permission:send_emails'])->only(['create', 'send']);
    }

    # subscribers index
    public function index(Request $request)
    {
        $query = null;
        $sort_search = null;
        $subscribers = Subscriber::latest();
        if ($request->search != null) {
            $subscribers = $subscribers->where('email', 'like', '%' . $request->search . '%');
            $sort_search = $request->search;
        }
        $subscribers = $subscribers->paginate(15);
        return view('backend.promotions.subscribers.index', compact('subscribers', 'sort_search'));
    }

    # send emails form
    public function create()
    {
        $subscribers = Subscriber::all();
        return view('backend.promotions.emails.index', compact('subscribers'));
    }

    # send emails
    public function send(Request $request)
    {
        if (env('MAIL_USERNAME') != null) {
            //sends newsletter to subscribers
            if ($request->has('subscriber_emails')) {
                foreach ($request->subscriber_emails as $email) {
                    $array['view'] = 'emails.sendEmails';
                    $array['subject'] = $request->subject;
                    $array['from'] = env('MAIL_USERNAME');
                    $array['content'] = $request->content;

                    try {
                        Mail::to($email)->queue(new EmailManager($array));
                    } catch (\Exception $e) {
                        //dd($e);
                    }
                }
            }
        } else {
            flash(localize('Please configure SMTP first'))->error();
            return back();
        }

        flash(localize('Emails have been sent successfully'))->success();
        return back();
    }

    # delete subscribers
    public function delete($id)
    {
        try {
            Subscriber::destroy($id);
        } catch (\Throwable $th) {
            //throw $th;
        }

        flash(localize('Subscriber deleted successfully'))->success();
        return back();
    }
}
