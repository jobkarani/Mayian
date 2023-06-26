<?php

namespace App\Http\Services; 

class CottageService
{
    public function getCottageFields()
    {
        return [
            'id',
            'name',
            'slug',
            'price',
            'timeline',
            'num_of_rooms',
            'num_of_beds',
            'size',
            'thumbnail_image',
            'rating',
        ];
    }
}