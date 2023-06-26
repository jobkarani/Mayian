<?php

namespace App\Http\Controllers\Api;

use App\Http\Services\SmsServices;
use App\Mail\EmailManager;
use Illuminate\Http\Request;
use App\Models\User;
use Hash;
use Mail;
use Str;

class PasswordResetController extends Controller
{
    # send password reset code
    public function create(Request $request)
    {
        $request->validate([
            'email' => 'required'
        ]);

        if ($request->email) {
            $user = User::where('email', $request->email)->first();
        } elseif ($request->phone) {
            $user = User::where('phone', $request->phone)->first();
        } else {
            $user = null;
        }
        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => localize('No user found with this information.'),
                'authStatus' => 'user_not_found'
            ], 200);
        }

        $user->verification_code = rand(100000, 999999);
        $user->save();

        if ($request->email) {

            $array['view'] = 'emails.verification';
            $array['from'] = env('MAIL_FROM_ADDRESS');
            $array['subject'] = localize('Password Reset');
            $array['content'] = localize('Password reset code is') . ': ' . $user->verification_code;

            Mail::to($user->email)->queue(new EmailManager($array));

            return response()->json([
                'success' => true,
                'email' => true,
                'message' => localize('A password reset code has been sent to your email.')
            ], 200);
        } else {

            (new SmsServices)->forgotPasswordSms($user->phone, $user->verification_code);
            return response()->json([
                'success' => true,
                'phone' => true,
                'message' => localize('A password reset code has been sent to your phone number.')
            ], 200);
        }
    }

    # reset password
    public function reset(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'code' => 'required',
            'password' => 'required',
        ]);

        $phone = Str::replace(' ', '', $request->phone);
        if ($request->email) {
            $user = User::where('email', $request->email)->first();
        } elseif ($request->phone) {
            $user = User::where('phone', $phone)->first();
        } else {
            $user = null;
        }
        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => localize('No user found with this information.'),
                'authStatus' => 'user_not_found'
            ], 200);
        }

        if ($user->verification_code != $request->code) {
            return response()->json([
                'success' => false,
                'message' => localize('Code does not match.'),
                'authStatus' => 'code_not_matched'
            ], 200);
        } else {

            if ($request->password) {
                $user->update([
                    'password' => Hash::make($request->password),
                ]);
            }
            $user->save();

            return response()->json([
                'success' => true,
                'message' => localize('Your password has been updated.')
            ], 200);
        }
    }
}
