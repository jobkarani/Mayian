<?php


namespace App\Utility;

use App\Models\Translation;

class TranslationUtility
{
    // Hold the class instance.
    private static $instance = null;
    private $translations;

    // The db connection is established in the private constructor.
    private function __construct()
    {
        $data = Translation::all();
        $this->translations = collect($data->toArray())->all();
    }

    public static function getInstance()
    {
        if (!self::$instance) {
            self::$instance = new TranslationUtility();
        }

        return self::$instance;
    }

    public static function reInstantiate()
    {
        self::$instance = new TranslationUtility();
    }

    public function cached_translation_row($lang_key, $lang)
    {
        $row = [];
        if (empty($this->translations)) {
            return $row;
        }

        foreach ($this->translations as $item) {
            if ($item['lang_key'] == $lang_key && $item['lang'] == $lang) {
                $row = $item;
                break;
            }
        }

        return $row;
    }

    public function getAllTranslations()
    {
        return $this->translations;
    }
}
