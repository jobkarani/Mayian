<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CottageResource extends JsonResource
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
            'name'                  => $this->name ? $this->getTranslation('name') : null,
            'slug'                  => $this->slug ? $this->slug : null,
            'price'                 => $this->price ? (float) $this->price : null,
            'timeline'              => $this->timeline ? $this->getTranslation('timeline') : null,
            'num_of_rooms'          => $this->num_of_rooms ? (int) $this->num_of_rooms : null,
            'num_of_beds'           => $this->num_of_beds ? (int) $this->num_of_beds : null,
            'size'                  => $this->size ? $this->getTranslation('size') : null,
            'gallery_images'        => $this->gallery_images ? $this->getImages($this) : [],
            'thumbnail_image'       => $this->thumbnail_image ? uploadedAsset($this->thumbnail_image) : null,
            'description'           => $this->description ? $this->getTranslation('description') : null,
            'video_link'            => $this->video_link ? $this->video_link : null,
            'meta_title'            => $this->meta_title ? $this->meta_title : null,
            'meta_description'      => $this->meta_description ? $this->meta_description : null,
            'meta_image'            => $this->meta_image ? uploadedAsset($this->meta_image) : null,
            'rating'                => $this->rating ? (int) $this->rating : null,
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
