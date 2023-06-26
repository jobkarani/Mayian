<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App;

class Cottage extends Model
{
    use HasFactory;

    protected $with = ['cottage_translations'];

    public function scopeIsPublished($query)
    {
        return $query->where('is_published', 1);
    }

    public function scopeIsBest($query)
    {
        return $query->where('is_best', 1);
    }
    
    public function getTranslation($field = '', $lang = false)
    {
        $lang = $lang == false ? App::getLocale() : $lang;
        $cottage_translations = $this->cottage_translations->where('lang', $lang)->first();
        return $cottage_translations != null ? $cottage_translations->$field : $this->$field;
    }

    public function cottage_translations()
    {
        return $this->hasMany(CottageTranslation::class);
    }

    public function bookings()
    {
        return $this->hasMany(Booking::class);
    }

}
