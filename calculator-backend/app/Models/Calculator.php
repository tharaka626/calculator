<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Calculator extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function add()
    {
        return $this->operand_1 + $this->operand_2;
    }

    public function subtract()
    {
        return $this->operand_1 - $this->operand_2;
    }

    public function multiply()
    {
        return $this->operand_1 * $this->operand_2;
    }

    public function divide()
    {
        return $this->operand_1 / $this->operand_2;
    }

    public function percentage()
    {
        return $this->operand_1 / 100;
    }
}
