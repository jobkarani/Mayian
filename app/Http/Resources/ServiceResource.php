<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ServiceResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id'                    => $this->id,
            'name'                  => $this->getTranslation('name'),
            'slug'                  => $this->slug,
            'short_description'     => $this->getTranslation('short_description'),
            'thumbnail_image'       => $this->thumbnail_image ? uploadedAsset($this->thumbnail_image) : null,
            'gallery_images'        => $this->gallery_images ? $this->getImages($this) : [],
            'description'           => $this->description ? $this->getTranslation('description') : null,
        ];
    }

    # getImages
    protected function getImages()
    {
        $result = array();
        foreach (explode(',', $this->gallery_images) as $item) {
            array_push($result, uploadedAsset($item));
        }
        return $result;
    }
}
