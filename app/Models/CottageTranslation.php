<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CottageTranslation extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'lang', 'cottage_id'];

}
