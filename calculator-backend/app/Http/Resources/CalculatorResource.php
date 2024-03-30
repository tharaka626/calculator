<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CalculatorResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'operand_1' => $this->operand_1,
            'operand_2' => $this->operand_2,
            'operator' => $this->operator,
            'result' => $this->result
        ];
    }
}
