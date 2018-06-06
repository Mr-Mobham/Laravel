<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/user', function (Request $request) {
   return $request->user();
});

Route::post('login', 'API\PassportController@login');

Route::post('register', 'API\PassportController@register');
Route::group(['middleware' => 'auth:api'], function(){
Route::post('get-details', 'API\PassportController@getDetails');
});

Route::get('category', 'Products\Categoryes@index')->middleware('auth:api');

Route::get('data_table', 'Table\Data_Table@index')->middleware('auth:api');
Route::post('data_table', 'Table\Data_Table@store')->middleware('auth:api');
Route::put('data_table', 'Table\Data_Table@store')->middleware('auth:api');
Route::delete('data_table/{id}', 'Table\Data_Table@destroy')->middleware('auth:api');






Route::get('products', 'Filter\Products@index');
Route::get('products/{search}', 'Filter\Products@params');















// notification //
// Route::get('test','Products\Recently_Products@index');
// Route::get('register','Auth\Register@index');



// Route::get('notification/{id}','notification@show');
// Route::post('notification','notification@store');
// Route::put('notification','notification@store');
// Route::delete('notification/{id}','notification@destroy');
