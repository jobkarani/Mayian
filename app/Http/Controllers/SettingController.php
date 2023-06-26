<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Currency;
use App\Models\Setting;
use Artisan;

class SettingController extends Controller
{
    # constructor
    public function __construct()
    {
        $this->middleware(['permission:manage_general_settings'])->only('general_setting');
        $this->middleware(['permission:manage_smtp_settings'])->only('smtp_settings');
    }

    # general settings
    public function general_setting(Request $request)
    {

        return view('backend.settings.general_settings');
    }

    # smtp settings
    public function smtp_settings(Request $request)
    {

        return view('backend.settings.smtp_settings');
    }

    # update env key
    public function env_key_update(Request $request)
    {
        foreach ($request->types as $key => $type) {
            $this->overWriteEnvFile($type, $request[$type]);
        }

        flash(localize("Settings updated successfully"))->success();
        return back();
    }

    # overwrite env file
    public function overWriteEnvFile($type, $val)
    {
        if (env('DEMO_MODE') != 'On') {
            $path = base_path('.env');
            if (file_exists($path)) {
                $val = '"' . trim($val) . '"';
                if (is_numeric(strpos(file_get_contents($path), $type)) && strpos(file_get_contents($path), $type) >= 0) {
                    file_put_contents($path, str_replace(
                        $type . '="' . env($type) . '"',
                        $type . '=' . $val,
                        file_get_contents($path)
                    ));
                } else {
                    file_put_contents($path, file_get_contents($path) . "\r\n" . $type . '=' . $val);
                }
            }
        }
    }

    # update settings
    public function update(Request $request)
    {
        foreach ($request->types as $key => $type) {

            // for currency rate
            if ($type == 'system_default_currency') {
                $currency = Currency::where('id', $request[$type])->first();
                $this->overWriteEnvFile('DEFAULT_CURRENCY', $currency->code);
                $this->overWriteEnvFile('DEFAULT_CURRENCY_RATE', $currency->exchange_rate);
                $this->overWriteEnvFile('DEFAULT_CURRENCY_SYMBOL', $currency->symbol);
                $this->overWriteEnvFile('DEFAULT_CURRENCY_SYMBOL_ALIGNMENT', $currency->alignment);
            }

            if ($type == 'timezone') {
                $this->overWriteEnvFile('APP_TIMEZONE', $request[$type]);
            } else {
                $value = $request[$type];

                $settings = Setting::where('type', $type)->first();
                if ($settings != null) {
                    if (gettype($value) == 'array') {
                        $settings->value = json_encode($value);
                    } else {
                        $settings->value = $value;
                    }
                } else {
                    $settings = new Setting;
                    $settings->type = $type;
                    if (gettype($value) == 'array') {
                        $settings->value = json_encode($value);
                    } else {
                        $settings->value = $value;
                    }
                }

                $settings->save();
            }
        }

        cacheClear();

        flash(localize("Settings updated successfully"))->success();
        return back();
    }

    # activation
    public function updateActivationSettings(Request $request)
    {
        $env_changes = ['FORCE_HTTPS', 'FILESYSTEM_DRIVER'];
        if (in_array($request->type, $env_changes)) {

            return $this->updateActivationSettingsInEnv($request);
        }


        $business_settings = Setting::where('type', $request->type)->first();
        if ($business_settings != null) {
            if ($request->type == 'maintenance_mode' && $request->value == '1') {
                if (env('DEMO_MODE') != 'On') {
                    Artisan::call('down');
                }
            } elseif ($request->type == 'maintenance_mode' && $request->value == '0') {
                if (env('DEMO_MODE') != 'On') {
                    Artisan::call('up');
                }
            }
            $business_settings->value = $request->value;
            $business_settings->save();
        } else {
            $business_settings = new Setting;
            $business_settings->type = $request->type;
            $business_settings->value = $request->value;
            $business_settings->save();
        }
        cacheClear();
        return '1';
    }
    # update activation
    public function updateActivationSettingsInEnv($request)
    {
        if ($request->type == 'FORCE_HTTPS' && $request->value == '1') {
            $this->overWriteEnvFile($request->type, 'On');

            if (strpos(env('APP_URL'), 'http:') !== FALSE) {
                $this->overWriteEnvFile('APP_URL', str_replace("http:", "https:", env('APP_URL')));
            }
        } elseif ($request->type == 'FORCE_HTTPS' && $request->value == '0') {
            $this->overWriteEnvFile($request->type, 'Off');
            if (strpos(env('APP_URL'), 'https:') !== FALSE) {
                $this->overWriteEnvFile('APP_URL', str_replace("https:", "http:", env('APP_URL')));
            }
        } elseif ($request->type == 'FILESYSTEM_DRIVER' && $request->value == '1') {
            $this->overWriteEnvFile($request->type, 's3');
        } elseif ($request->type == 'FILESYSTEM_DRIVER' && $request->value == '0') {
            $this->overWriteEnvFile($request->type, 'local');
        }

        return '1';
    }
}
