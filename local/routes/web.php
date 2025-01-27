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

Route::get('/', 'FrontendController@getFrontend');
Route::get('/dich-vu/{path}', 'FrontendController@getServiceDetail');
Route::get('/tin-tuc/{path}', 'FrontendController@getNewsDetail');
Route::get('/trang/{path}', 'FrontendController@getPageDetail');
Route::get('/dich-vu/{pathService}/{pathPost}', 'FrontendController@getServicePost');
Route::get('/dich-vu/', 'FrontendController@getServicePage');
Route::get('/tin-tuc/', 'FrontendController@getNewsPage');
Route::get('/lien-he', function () {
    return view('frontend.06_contact.index');
});

Auth::routes();
//Route::get('/login', 'AuthController@checklogin');
Route::get('/home', 'HomeController@index')->name('home');
//Route::post('login', 'AuthController@login')->name('login');
//Route::get('logout', 'AuthController@logout')->name('logout');
Route::post('sendmail/send', ['as' => 'mail.sendmail', 'uses' => 'MailController@sendMail']);
Route::group(['middleware' => ['auth']], function () {
    Route::get('dashboard', function () {
        return view('backend.admin.dashboard.index');
    })->name('dashboard');
    Route::get('category-post', function () {
        return view('backend.admin.category-post.index');
    })->name('category-post');
    Route::get('category-product', function () {
        return view('backend.admin.category-product.index');
    })->name('category-product');
    Route::get('category-service', function () {
        return view('backend.admin.category-service.index');
    })->name('category-service');
    Route::get('post', function () {
        return view('backend.admin.post.index');
    })->name('post');
    Route::get('service', function () {
        return view('backend.admin.service.index');
    })->name('service');
    Route::get('product', function () {
        return view('backend.admin.product.index');
    })->name('product');
    Route::get('page', function () {
        return view('backend.admin.page.index');
    })->name('page');
    Route::get('partner', function () {
        return view('backend.admin.partner.index');
    })->name('partner');
    Route::get('config', function () {
        return view('backend.admin.config.index');
    })->name('config');
    Route::get('user', function () {
        return view('backend.admin.user.index');
    })->name('user.active');
});
