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
Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware'=>['auth','pakEko']],function(){
	Route::get('/admin','AdminController@index');

	Route::get('/admin/user','UserController@index'); // ini rute untuk index (menampilkan semua data)
	Route::get('/admin/user/{id}/show','UserController@show'); // ini rute untuk detail per user
	Route::get('/admin/user/create','UserController@create'); // ini rute untuk create (tampilan menambah user baru)
	Route::post('/admin/user/store','UserController@store'); // ini rute untuk store (proses nambah user)
	Route::get('/admin/user/{id}/edit','UserController@edit'); // ini rute untuk edit user
	Route::post('/admin/user/{id}/update','UserController@update'); // ini rute untuk proses update
	Route::get('/admin/user/{id}/delete','UserController@destroy'); // ini rute untuk delete user

	Route::get('/admin/book', 'BookController@index');
	Route::get('/admin/book/{id}/show','BookController@show');
	Route::get('/admin/book/create','BookController@create');
	Route::post('/admin/book/store','BookController@store');
	Route::get('/admin/book/{id}/edit','BookController@edit');
	Route::post('/admin/book/{id}/update','BookController@update');
	Route::get('/admin/book/{id}/delete', 'BookController@destroy');
	Route::get('/admin/rent','RentController@index');

});

Route::group(['middleware'=>'auth'],function(){
	Route::get('/library','LibraryController@index');
	Route::get('/library/search','LibraryController@search');

	Route::get('/listrent','ListRentController@index');
	Route::get('/listrent/{id}/rent','ListRentController@rent');
	Route::get('/listrent/{id}/return','ListRentController@return');
	
	Route::get('/profile','ProfileController@index');
});
