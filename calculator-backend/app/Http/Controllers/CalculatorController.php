<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCalculatorRequest;
use App\Http\Resources\CalculatorResource;
use App\Models\Calculator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CalculatorController extends Controller
{

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCalculatorRequest $request)
    {
        try {
            DB::beginTransaction();

            $calculator = new Calculator($request->validated());
            $result = $calculator->{$request->validated()['operator']}();
    
            $value = Calculator::create([
                'operand_1' => $request->validated()['operand_1'],
                'operand_2' => $request->validated()['operand_2'],
                'operator' => $request->validated()['operator'],
                'result' => $result
            ]);
    
            DB::commit();
    
            sleep(1);
    
            return response()->json([
                'data' => [
                    new CalculatorResource($value)
                ],
                'message' => 'Value stored successfully'
            ], 201);
        } catch (\Exception $e) {
            DB::rollback();

            return response()->json([
                'message' => $e->getMessage()
            ], 500);
        }
   
    }

   
}
