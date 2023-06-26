<?php

/** @noinspection PhpUndefinedClassInspection */

namespace App\Http\Controllers\Api;

use App\Http\Resources\UserResource;
use App\Http\Services\SmsServices;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Upload;
use App\Notifications\UserVerificationNotification;
use Str;

class AuthController extends Controller
{
    # sign up
    public function signup(Request $request)
    {

        $user = User::where('email', $request->email)->first();

        if ($user != null) {
            return response()->json([
                'success' => false,
                'message' => localize('User already exists.'),
                'authStatus' => 'user_exists',
                'data' => null
            ]);
        }
        if (!$request->has('email')) {
            return response()->json([
                'success' => false,
                'message' => localize('Email is required.'),
                'authStatus' => 'email_required',
                'data' => null
            ], 200);
        }

        if ($request->password != $request->password_confirmation) {
            return response()->json([
                'success' => false,
                'message' => localize('Password confirmation does not match'),
                'authStatus' => 'password_mismatched',
                'data' => null
            ], 200);
        }

        $user = new User([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'password' => Hash::make($request->password),
            'verification_code' => rand(100000, 999999)
        ]);
        $user->save();

        if (getSetting('customer_verification_with') != 'disabled') {
            if (getSetting('customer_login_with') == 'email' || (getSetting('customer_login_with') == 'email_phone' && getSetting('customer_verification_with') == 'email')) {
                $user->notify(new UserVerificationNotification());
                return response()->json([
                    'success' => true,
                    'verified' => false,
                    'message' => localize('A verification code has been sent to your email.'),
                    'authStatus' => 'verify_email'
                ], 200);
            } else {
                (new SmsServices)->phoneVerificationSms($user->phone, $user->verification_code);
                return response()->json([
                    'success' => true,
                    'verified' => false,
                    'message' => localize('A verification code has been sent to your phone.')
                ], 200);
            }
        }

        $tokenResult = $user->createToken('Personal Access Token');
        return $this->loginSuccess($tokenResult, $user);
    }

    # login
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string',
            'password' => 'required|string',
        ]);

        if ($request->email) {
            $user = User::where('email', $request->email)->first();
        } else {
            $user = null;
        }
        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json([
                'success' => false,
                'message' => localize('Invalid login information'),
                'authStatus' => 'invalid_credentials'
            ], 200);
        }

        if ($user->user_type == 'customer') {
            // banned
            if ($user->banned == 1) {
                return response()->json([
                    'success' => false,
                    'message' => localize('You have been banned.'),
                    'authStatus' => 'banned'
                ], 200);
            }

            // verification
            if (getSetting('customer_verification_with') == "email" && $user->email_verified_at == null) {
                $user->verification_code = rand(100000, 999999);
                $user->save();
                $user->notify(new UserVerificationNotification());

                return response()->json([
                    'success' => true,
                    'verified' => false,
                    'message' => localize('Please verify your account'),
                    'authStatus' => 'verify_email'
                ], 200);
            }

            $tokenResult = $user->createToken('Personal Access Token');
            return $this->loginSuccess($tokenResult, $user);
        } else {
            return response()->json([
                'success' => false,
                'message' => localize('Only customers can login here'),
                'authStatus' => 'only_customer_login'
            ], 200);
        }
    }

    # verify user
    public function verify(Request $request)
    {
        $phone = Str::replace(' ', '', $request->phone);
        if (getSetting('customer_login_with') == 'email' || (getSetting('customer_login_with') == 'email_phone' && getSetting('customer_verification_with') == 'email')) {
            $user = User::where('email', $request->email)->first();
        } elseif (getSetting('customer_login_with') == 'phone' || (getSetting('customer_login_with') == 'email_phone' && getSetting('customer_verification_with') == 'phone')) {
            $user = User::where('phone', $phone)->first();
        } else {
            $user = null;
        }

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => localize('No user found with this email address.'),
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
            if (getSetting('customer_login_with') == 'email' || (getSetting('customer_login_with') == 'email_phone' && getSetting('customer_verification_with') == 'email')) {
                $user->email_verified_at = date('Y-m-d H:m:s');
            } else {
                $user->phone_verified_at = date('Y-m-d H:m:s');
            }
            $user->save();
            $tokenResult = $user->createToken('Personal Access Token');
            return $this->loginSuccess($tokenResult, $user);
        }
    }

    # resend verification code
    public function resend_code(Request $request)
    {
        $phone = Str::replace(' ', '', $request->phone);
        if (getSetting('customer_login_with') == 'email' || (getSetting('customer_login_with') == 'email_phone' && getSetting('customer_verification_with') == 'email')) {
            $user = User::where('email', $request->email)->first();
        } elseif (getSetting('customer_login_with') == 'phone' || (getSetting('customer_login_with') == 'email_phone' && getSetting('customer_verification_with') == 'phone')) {
            $user = User::where('phone', $phone)->first();
        } else {
            $user = null;
        }

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => localize('No user found with this email address.'),
                'authStatus' => 'user_not_found'
            ], 200);
        }

        $user->verification_code = rand(100000, 999999);
        $user->save();

        if (getSetting('customer_login_with') == 'email' || (getSetting('customer_login_with') == 'email_phone' && getSetting('customer_verification_with') == 'email')) {
            $user->notify(new UserVerificationNotification());
            return response()->json([
                'success' => true,
                'verified' => false,
                'message' => localize('A verification code has been sent to your email.')
            ], 200);
        } else {
            (new SmsServices)->phoneVerificationSms($user->phone, $user->verification_code);
            return response()->json([
                'success' => true,
                'verified' => false,
                'message' => localize('A verification code has been sent to your phone.')
            ], 200);
        }
    }

    # update info
    public function updateInfo(Request $request)
    {
        $user = auth('api')->user();

        $existingUser = User::where('email', $request->email)->where('id', '!=', $user->id)->first();
        if (!is_null($existingUser)) {
            return response()->json([
                'success' => true,
                'updateStatus' => 'failed',
                'message' => localize('Another user exists with this email'),
            ]);
        }
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->save();
        return response()->json([
            'success' => true,
            'updateStatus' => 'successful',
            'user'    => new UserResource($user),
            'message' => localize('Profile information updated successfully'),
        ]);
    }

    #  update password
    public function updatePassword(Request $request)
    {
        $user = auth('api')->user();

        if ($request->password != $request->password_confirmation) {
            return response()->json([
                'success' => true,
                'updateStatus' => 'failed',
                'message' => localize('Password confirmation does not match'),
            ]);
        }

        $user->update([
            'password' => Hash::make($request->password)
        ]);

        return response()->json([
            'success' => true,
            'updateStatus' => 'successful',
            'message' => localize('Password updated successfully'),
        ]);
    }

    #  update avatar
    public function updateAvatar(Request $request)
    {
        $user = auth('api')->user();

        if ($request->hasFile('avatar')) {
            $avatar = new Upload();
            $avatar->file_original_name = null;
            $arr = explode('.', $request->file('avatar')->getClientOriginalName());

            for ($i = 0; $i < count($arr) - 1; $i++) {
                if ($i == 0) {
                    $avatar->file_original_name .= $arr[$i];
                } else {
                    $avatar->file_original_name .= '.' . $arr[$i];
                }
            }

            $avatar->file_name = $request->file('avatar')->store('uploads/all');
            $avatar->user_id = $user->id;
            $avatar->extension = $request->file('avatar')->getClientOriginalExtension();
            $avatar->type = 'image';
            $avatar->file_size = $request->file('avatar')->getSize();
            $avatar->save();

            $user->update([
                'avatar' => $avatar->id,
            ]);
        }

        return response()->json([
            'success' => true,
            'updateStatus' => 'successful',
            'user'    => new UserResource($user),
            'message' => localize('Profile avatar updated successfully'),
        ]);
    }

    # auth user
    public function user(Request $request)
    {
        return response()->json($request->user());
    }

    # logout
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        $request->user()->token()->delete();
        return response()->json([
            'message' => localize('Successfully logged out')
        ]);
    }

    # login response
    protected function loginSuccess($tokenResult, $user)
    {
        $token = $tokenResult->token;
        $token->expires_at = Carbon::now()->addWeeks(100);
        $token->save();
        return response()->json([
            'success' => true,
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'verified' => true,
            'expires_at' => Carbon::parse(
                $tokenResult->token->expires_at
            )->toDateTimeString(),
            'user' => new UserResource($user),
            'message' => localize('Successfully logged in'),
        ]);
    }
}
