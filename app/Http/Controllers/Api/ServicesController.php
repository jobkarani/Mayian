<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ServiceResource;
use App\Http\Services\ServicesService;
use App\Models\Service;

class ServicesController extends Controller
{
    # get services
    public function index()
    {
        $services = ServiceResource::collection(Service::latest()->paginate(12, (new ServicesService)->getServiceFields()));
        return $services;
    }

    # get best services
    public function bestIndex()
    {
        return ServiceResource::collection(Service::isBest()->latest()->get((new ServicesService)->getServiceFields()));
    }

    # get service by slug
    public function show($slug)
    {
        $service = Service::where('slug', $slug)->first();
        return [
            'data'           => new ServiceResource($service),
            'best'            => $this->bestIndex()
        ];
    }
}
