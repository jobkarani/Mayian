<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\Models\Language;
use App\Models\Translation;

class LanguageController extends Controller
{
    # constructor
    public function __construct()
    {
        $this->middleware(['permission:manage_language_settings'])->only('index');
    }

    # change languages
    public function changeLanguage(Request $request)
    {
        $request->session()->put('locale', $request->locale);
        $language = Language::where('code', $request->locale)->first();
        flash(localize('Language changed to ') . ' ' . $language->name)->success();
    }

    # all langs
    public function index(Request $request)
    {
        $languages = Language::paginate(10);
        return view('backend.settings.languages.index', compact('languages'));
    }

    # save default
    public function save_default_language(Request $request)
    {
        $language = Language::where('code', $request->DEFAULT_LANGUAGE)->first();
        $language->status = 1;
        $language->save();

        (new SettingController)->overWriteEnvFile('DEFAULT_LANGUAGE', $request->DEFAULT_LANGUAGE);
        flash(localize('Default language updated successfully'))->success();
        return back();
    }

    # create new lang
    public function create()
    {
        return view('backend.settings.languages.create');
    }

    # store new lang
    public function store(Request $request)
    {
        if (Language::where('code', $request->code)->first()) {
            flash(localize('This code is already used for another language'))->error();
            return back();
        }
        $language = new Language;
        $language->name = $request->name;
        $language->code = $request->code;
        $language->flag = $request->flag;
        $language->save();

        $this->saveTranslationsAsJsonFile($language->code);
        flash(localize('Language has been inserted successfully'))->success();
        return redirect()->route('languages.index');
    }

    # localization
    public function show(Request $request, $id)
    {
        $sort_search = null;
        $language = Language::findOrFail($id);
        $lang_keys = Translation::where('lang', 'en');
        if ($request->has('search')) {
            $sort_search = $request->search;
            $lang_keys = $lang_keys->where('lang_key', 'like', '%' . $sort_search . '%');
        }
        $lang_keys = $lang_keys->latest()->paginate(50);
        return view('backend.settings.languages.language_view', compact('language', 'lang_keys', 'sort_search'));
    }

    # edit lang
    public function edit($id)
    {
        $language = Language::findOrFail($id);
        return view('backend.settings.languages.edit', compact('language'));
    }

    # update lang
    public function update(Request $request, $id)
    {
        if (Language::where('code', $request->code)->where('id', '!=', $id)->first()) {
            flash(localize('This code is already used for another language'))->error();
            return back();
        }

        $language = Language::findOrFail($id);

        if (env('DEFAULT_LANGUAGE') == $language->code && env('DEFAULT_LANGUAGE') != $request->code) {
            flash(localize('Default language code can not be changed'))->error();
            return back();
        } elseif ($language->code == 'en' && $request->code != 'en') {
            flash(localize('English language code can not be changed'))->error();
            return back();
        }
        $language->name = $request->name;
        $language->code = $request->code;
        $language->flag = $request->flag;
        $language->save();

        flash(localize('Language has been updated successfully'))->success();
        return redirect()->route('languages.index');
    }

    # store localizations
    public function key_value_store(Request $request)
    {
        $language = Language::findOrFail($request->id);
        foreach ($request->values as $key => $value) {
            $translation_def = Translation::where('lang_key', $key)->where('lang', $language->code)->latest()->first();
            if ($translation_def == null) {
                $translation_def = new Translation;
                $translation_def->lang = $language->code;
                $translation_def->lang_key = $key;
                $translation_def->lang_value = $value;
                $translation_def->save();
            } else {
                $translation_def->lang_value = $value;
                $translation_def->save();
            }
        }

        $this->saveTranslationsAsJsonFile($language->code);
        cacheClear();
        flash(localize('Translations updated for ') . $language->name)->success();
        return back();
    }

    # update rtl status
    public function update_rtl_status(Request $request)
    {
        $language = Language::findOrFail($request->id);
        $language->rtl = $request->status;
        if ($language->save()) {
            flash(localize('RTL status updated successfully'))->success();
            return 1;
        }
        return 0;
    }

    # update status 
    public function update_status(Request $request)
    {
        $language = Language::findOrFail($request->id);
        $activated_languages = Language::where('status', 1)->count();

        if (env('DEFAULT_LANGUAGE') == $language->code && $request->status == 0) {
            flash(localize('Default language can not be disbaled'))->error();
            return 1;
        } elseif ($activated_languages <= 1 && $request->status == 0) {
            flash(localize('Minimum 1 language need to be enabled'))->error();
            return 1;
        }

        $language->status = $request->status;
        if ($language->save()) {
            flash(localize('Status updated successfully'))->success();
            return 1;
        }
        return 0;
    }

    # delete lang
    public function destroy($id)
    {
        $language = Language::findOrFail($id);
        if (env('DEFAULT_LANGUAGE') == $language->code) {
            flash(localize('Default language can not be deleted'))->error();
        } elseif ($language->code == 'en') {
            flash(localize('English language can not be deleted'))->error();
        } else {
            if ($language->code == Session::get('locale')) {
                Session::put('locale', env('DEFAULT_LANGUAGE'));
            }
            Language::destroy($id);
            flash(localize('Language has been deleted successfully'))->success();
        }
        return redirect()->route('languages.index');
    }

    # save translations in json file
    public function saveTranslationsAsJsonFile($code)
    {
        try {
            // Write into the json file
            file_put_contents(resource_path("lang/{$code}.json"), Translation::where('lang', $code)->pluck('lang_value', 'lang_key')->toJson());
        } catch (\Exception $e) {
            dd($e);
        }
    }
}
