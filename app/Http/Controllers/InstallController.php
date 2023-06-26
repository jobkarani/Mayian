<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use URL;
use DB;
use Hash;
use App\Models\User;

class InstallController extends Controller
{
    # welcome
    public function step0()
    {
        cacheClear();
        $this->writeEnvironmentFile('APP_URL', URL::to('/'));
        return view('installation.welcome');
    }

    # permissions
    public function step1()
    {
        $permission['curl_enabled']           = function_exists('curl_version');
        $permission['db_file_write_perm']     = is_writable(base_path('.env'));
        $permission['routes_file_write_perm'] = is_writable(base_path('app/Providers/RouteServiceProvider.php'));
        return view('installation.permissions', compact('permission'));
    }

    # db-setup
    public function step3($error = "")
    {
        if ($error == "") {
            return view('installation.db-setup');
        } else {
            return view('installation.db-setup', compact('error'));
        }
    }

    # database connection
    public function database_installation(Request $request)
    {
        if ($this->check_database_connection($request->DB_HOST, $request->DB_DATABASE, $request->DB_USERNAME, $request->DB_PASSWORD)) {
            $path = base_path('.env');
            if (file_exists($path)) {
                foreach ($request->types as $type) {
                    $this->writeEnvironmentFile($type, $request[$type]);
                }
                return redirect('import-db');
            } else {
                return redirect('db-setup');
            }
        } else {
            return redirect('db-setup/database_error');
        }
    }

    # check database connection
    function check_database_connection($db_host = "", $db_name = "", $db_user = "", $db_pass = "")
    {
        try {
            @mysqli_connect($db_host, $db_user, $db_pass, $db_name);
            return true;
        } catch (\Throwable $th) {
            return false;
        }
        return false;
    }


    # import db view
    public function step4()
    {
        return view('installation.import-db');
    }

    # import sql
    public function import_sql($db_name)
    {
        $sql_path = base_path($db_name . '.sql');
        DB::unprepared(file_get_contents($sql_path));
        return redirect('add-admin');
    }

    # add admin view
    public function step5()
    {
        return view('installation.add-admin');
    }


    # add admin
    public function system_settings(Request $request)
    {
        $user = User::where('user_type', 'admin')->first();
        $user->name      = $request->admin_name;
        $user->email     = $request->admin_email;
        $user->password  = Hash::make($request->admin_password);
        $user->email_verified_at = date('Y-m-d H:m:s');
        $user->save();

        (new DemoController)->insertTranslationKeys();

        $previousRouteServiceProvier = base_path('app/Providers/RouteServiceProvider.php');
        $newRouteServiceProvier      = base_path('app/Providers/RouteServiceProvider.txt');
        copy($newRouteServiceProvier, $previousRouteServiceProvier);

        cacheClear();
        return view('installation.congrats');
    }


    # overwrite env
    public function writeEnvironmentFile($type, $val)
    {
        $path = base_path('.env');
        if (file_exists($path)) {
            $val = '"' . trim($val) . '"';
            file_put_contents($path, str_replace(
                $type . '="' . env($type) . '"',
                $type . '=' . $val,
                file_get_contents($path)
            ));
        }
    }
}
