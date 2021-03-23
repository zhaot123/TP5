<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------


use think\facade\Route;

//api模块路由
Route::group('api', function () {

    //自带示例，上线务必删除
//    Route::resource('user','api/User') ->only(['index','save', 'read', 'update','delete']);
    Route::post('auth/login','api/auth/login');
    Route::post('auth/login','api/auth/login');
    Route::post('member/person','api/member/person');
    Route::post('auth/register','api/auth/register');
    Route::post('user/index','api/user/index');
    Route::get('index/index','api/index/index');
//    Route::post('register/verify', 'Auth/verify')->name('registerVerify')
//        ->middleware(\app\http\middleware\AllowOriginMiddleware::class);
    //miss路由
//    Route::miss(function (){
//        return responseReturn(4040,null,'',[],404);
//    });
});



return [

];
