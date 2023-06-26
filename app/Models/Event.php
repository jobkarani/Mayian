<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App;

class Event extends Model
{
    use HasFactory;

    protected $with = ['event_translations'];

    public function getTranslation($field = '', $lang = false)
    {
        $lang = $lang == false ? App::getLocale() : $lang;
        $event_translations = $this->event_translations->where('lang', $lang)->first();
        return $event_translations != null ? $event_translations->$field : $this->$field;
    }

    public function event_translations()
    {
        return $this->hasMany(EventTranslation::class);
    }

}
