<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BlogResource extends JsonResource
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
            'id' => $this->id,
            'category' => $this->category->getTranslation('name'),
            'title' => $this->getTranslation('title'),
            'slug' => $this->slug,
            'short_description' => $this->getTranslation('short_description'),
            'description' => $this->getTranslation('description'),
            'thumbnail_image' => uploadedAsset($this->thumbnail_image),
            'gallery_images'        => $this->gallery_images ? $this->getImages($this) : [],
            'meta_title' => $this->meta_title,
            'meta_image' => $this->meta_image,
            'meta_description' => $this->meta_description,
            'created_at' => date('d M, Y', strtotime($this->created_at)),
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
