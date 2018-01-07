<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
/*
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
*/

// Route::match(['get', 'post'], 'login', 'Auth\AuthController@authenticate');

Route::group(['prefix' => 'v1'], function() {
	Route::match(['get', 'post'],'register', 'Auth\RegisterController@register');
	Route::match(['get', 'post'],'login', 'Auth\LoginController@login');
	Route::match(['get', 'post'],'logout', 'Auth\LoginController@logout');
	
	Route::group(['middleware' => 'auth:api'], function() {
		Route::get('data', 'DataController@index');
		Route::get('data/{id}', 'DataController@show');
		Route::post('data', 'DataController@store');
		Route::put('data/{id}', 'DataController@update');
		Route::delete('data/{id}', 'DataController@delete');

		Route::get('/download/{filename}', function($filename)
		{
			// Check if file exists in app/storage/file folder
			$file_path = storage_path() .'/files/'. $filename;
			if (file_exists($file_path))
			{
				// Send Download
				return Response::download($file_path, $filename, [
					'Content-Length: '. filesize($file_path)
				]);
			}
			else
			{
				// Error
				exit('Файл на сервере не найден!');
			}
		})->where('filename', '[A-Za-z0-9\-\_\.]+');
	});
});



