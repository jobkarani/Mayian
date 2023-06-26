<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App;

class Service extends Model
{
    use HasFactory;

    protected $with = ['service_translations'];


    public function scopeIsBest($query)
    {
        return $query->where('is_best', 1);
    }

    public function getTranslation($field = '', $lang = false)
    {
        $lang = $lang == false ? App::getLocale() : $lang;
        $service_translations = $this->service_translations->where('lang', $lang)->first();
        return $service_translations != null ? $service_translations->$field : $this->$field;
    }

    public function service_translations()
    {
        return $this->hasMany(ServiceTranslation::class);
    }
}
