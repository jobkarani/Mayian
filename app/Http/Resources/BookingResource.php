<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BookingResource extends JsonResource
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
            'id'                => $this->id,
            'code'              => getSetting('booking_code_prefix') . '#' . $this->id,
            'cottageName'       => $this->cottage->getTranslation('name'),
            'cottageSlug'       => $this->cottage->slug,
            'checkIn'           => date("d M, Y", $this->check_in_date),
            'checkOut'          => date("d M, Y", $this->check_out_date),
            'stayingNights'     => $this->staying_nights,
            'additionalInfo'    => $this->additional_info,
            'cost'              => (float) $this->cost,
            'adults'            => $this->adults,
            'children'          => $this->children,
            'status'            => $this->status,
            'statusClass'       => getBookingStatusClass($this->status),
        ];
    }
}
