<?php

namespace App\Http\Services;

class EventService
{
    public function getServiceFields()
    {
        return [
            'id',
            'title',
            'start_date',
            'end_date',
            'time',
            'fee',
            'location',
            'thumbnail_image',
            'slug',
            'short_description'
        ];
    }
}
