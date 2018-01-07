<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Data;

class DataController extends Controller
{
 
	// Вывод одной единицы информации
    public function show(Data $id)
    {
        return $id;
    }
	// Создание одной единицы информации
    public function store(Request $request)
    {
        $data = Data::create($request->all());
        return response()->json($data, 201);
    }

	// Обновление одной единицы информации
    public function update(Request $request, Data $id)
    {
		$data->update($request->all());

        return response()->json($data, 200);
    }
	// Удаление одной единицы информации
    public function delete(Data $id)
    {
		$data->delete();
        return response()->json(null, 204);
    }
    
    //Стандартный вывод
    public function index()
    {
        return Data::all();
    }
}
