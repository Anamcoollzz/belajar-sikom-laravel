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




Route::get('/login', 'HomeController@login');
Route::post('/doLogin', 'HomeController@doLogin');

Route::group(['middleware' => 'admin'], function(){

  Route::get('/', 'HomeController@index');
  Route::get('/logout', 'HomeController@logout');
  Route::get('/get-total', 'HomeController@total');

  Route::group(['prefix' => 'client'], function () {
    Route::get('/', 'DataClientController@index');
    Route::post('/store', 'DataClientController@storeDataClient');
    Route::put('/update/{id}', 'DataClientController@updateDataClient');
    Route::put('/update-status/{id}', 'DataClientController@updateDataClient_status');
    Route::get('/{id}/edit', 'DataClientController@editDataClient');
    Route::get('/json/getdata', 'DataClientController@getDataClient');
    Route::get('/json/getid', 'DataClientController@getIdClient');
    Route::get('/json/getdept', 'DataClientController@getComboDept');
    Route::get('/export/excel', 'DataClientController@ExportClient');
  });

  Route::group(['prefix' => 'computer'], function () {
    Route::get('/', 'DataComputerController@index');
    Route::post('/store', 'DataComputerController@storeDataPC');
    Route::put('/update/{id}', 'DataComputerController@updateDataPC');
    Route::put('/update-status/{id}', 'DataComputerController@updateDataPC_status');
    Route::get('/{id}/edit', 'DataComputerController@editDataPC');
    Route::get('/json/getdata', 'DataComputerController@getDataPC');
    Route::get('/json/getid', 'DataComputerController@getIdPC');
    Route::get('/json/getprocessor', 'DataComputerController@getComboProcessor');
    Route::get('/json/getos', 'DataComputerController@getComboOs');
    Route::get('/json/getmodel', 'DataComputerController@getComboModel');
    Route::get('/export/excel', 'DataComputerController@ExportPC');
  });

  Route::group(['prefix' => 'server'], function () {
    Route::get('/', 'DataServerController@index');
    Route::post('/store', 'DataServerController@storeDataServer');
    Route::put('/update/{id}', 'DataServerController@updateDataServer');
    Route::put('/update-status/{id}', 'DataServerController@updateDataServer_status');
    Route::get('/{id}/edit', 'DataServerController@editDataServer');
    Route::get('/virtual/{id}/edit', 'DataServerController@editDataVirServer');
    Route::get('/json/getdata', 'DataServerController@getDataServer');
    Route::get('/json/getid', 'DataServerController@getIdServer');
    Route::get('/json/getidserver', 'DataServerController@getCmbIdServer');
    Route::get('/json/getvirtual', 'DataServerController@getListVirServer');
    Route::get('/json/getprocessor', 'DataServerController@getCmbProcessor');
    Route::get('/json/getos', 'DataServerController@getCmbOs');
    Route::get('/json/getmodel', 'DataServerController@getCmbModel');
    Route::get('/export/excel', 'DataServerController@ExportServer');
  });

  Route::get('/globallist', 'GlobalListController@index');
  Route::get('/get-dataglobal', 'GlobalListController@getDataGlobal');
  Route::get('/get-dataglobal-cmbidpc', 'GlobalListController@getComboPC');
  Route::get('/get-dataglobal-cmbidclient', 'GlobalListController@getComboClient');

  Route::get('/get-dataglobal-datacomputer', 'GlobalListController@getDataPC');
  Route::post('/get-dataglobal-datadevice', 'GlobalListController@udtDevice');
  Route::post('/get-dataglobal-datadevice-rmv', 'GlobalListController@rmvDevice');

  Route::get('/get-dataglobal-dataclient', 'GlobalListController@getDataClient');
  Route::post('/get-dataglobal-dataclient/{id}', 'GlobalListController@rmvClient');
  Route::post('/get-dataglobal-dataclient-add/{id}', 'GlobalListController@udtClient');

  Route::group(['prefix' => 'setting'], function () {
    Route::get('/', 'SettingsController@index');
    Route::group(['prefix' => 'dept'], function () {
        Route::get('/', 'SettingsController@deptGet');
        Route::post('/store', 'SettingsController@deptStore');
        Route::put('/update/{id}', 'SettingsController@deptUpdate');
        Route::put('/update-status/{id}', 'SettingsController@deptUpdate');
        Route::get('/{id}/edit', 'SettingsController@deptEdit');
        Route::get('/{id}/delete', 'SettingsController@deptDestroy');
    });
    Route::group(['prefix' => 'processor'], function () {
        Route::get('/', 'SettingsController@processorGet');
        Route::post('/store', 'SettingsController@processorStore');
        Route::put('/update/{id}', 'SettingsController@processorUpdate');
        Route::put('/update-status/{id}', 'SettingsController@processorUpdate');
        Route::get('/{id}/edit', 'SettingsController@processorEdit');
        Route::get('/{id}/delete', 'SettingsController@processorDestroy');
    });
    Route::group(['prefix' => 'os'], function () {
        Route::get('/', 'SettingsController@osGet');
        Route::post('/store', 'SettingsController@osStore');
        Route::put('/update/{id}', 'SettingsController@osUpdate');
        Route::put('/update-status/{id}', 'SettingsController@osUpdate');
        Route::get('/{id}/edit', 'SettingsController@osEdit');
        Route::get('/{id}/delete', 'SettingsController@osDestroy');
    });
    Route::group(['prefix' => 'model'], function () {
        Route::get('/', 'SettingsController@modelGet');
        Route::post('/store', 'SettingsController@modelStore');
        Route::put('/update/{id}', 'SettingsController@modelUpdate');
        Route::put('/update-status/{id}', 'SettingsController@modelUpdate');
        Route::get('/{id}/edit', 'SettingsController@modelEdit');
        Route::get('/{id}/delete', 'SettingsController@modelDestroy');
    });
  });

});
