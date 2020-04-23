<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

 
Route::get('/', 'FuelController@listfuel');

Route::get('/home', 'HomeController@index')->name('home');
// Rotue quản lý đăng nhập, đưng xuất
Auth::routes(); // login, register
// client
Route::get('/user/{user}/edit', 'UserController@edit'); // edit
Route::put('/user/{user}', 'UserController@update'); // update 

Route::resource('fuelquote', 'FuelquoteController');
Route::get('fuelquote/delete/{fuelquote}', 'FuelquoteController@delete');

//quan ly fuel
Route::group(['middleware' => ['Checkadmin'],'prefix'=>'admin'] , function(){
	Route::resource('fuel', 'FuelController');
	Route::get('fuel/delete/{fuel}', 'FuelController@delete');
});

