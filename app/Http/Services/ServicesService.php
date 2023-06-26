<?php

namespace App\Http\Services;

class ServicesService
{
    public function getServiceFields()
    {
        return [
            'id',
            'name',
            'slug',
            'short_description',
            'thumbnail_image'
        ];
    }
}
