<?php

namespace App\Http\Controllers;

use App\Models\Translation;
use App\Http\Controllers\LanguageController;

class DemoController extends Controller
{
    # constructor
    public function __construct()
    {
        ini_set('memory_limit', '2048M');
        ini_set('max_execution_time', 600);
    }

    # insert translations
    public function insertTranslationKeys()
    {
        $fn = fopen(base_path('resources/translations.txt'), "r");

        while (!feof($fn)) {
            $result = fgets($fn);

            $lang_key = preg_replace('/[^A-Za-z0-9\_]/', '', str_replace(' ', '_', strtolower($result)));

            if ($lang_key) {
                Translation::updateOrCreate(
                    ['lang' => 'en', 'lang_key' => $lang_key],
                    ['lang_value' => $result]
                );
            }
        }
        fclose($fn);

        (new LanguageController())->saveTranslationsAsJsonFile(env('DEFAULT_LANGUAGE', 'en'));

        cacheClear();
        $translations = Translation::latest()->pluck('lang_key');
        return $translations;
    }
}
