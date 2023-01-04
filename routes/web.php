<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PO_Controller;
use App\Http\Controllers\SPB_Controller;
use App\Http\Controllers\BarangController;

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
    return view('auth/login');
});

Route::get('/dashboard', [BarangController::class, 'index'], function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

Route::get('/Proses', function () {
    return view('Proses');
})->name('Proses');

Route::get('/PO/ValidasiPO', function () {
    return view('/PO/ValidasiPO');
})->name('/PO/ValidasiPO');

Route::get('/SPB/ValidSPB', function () {
    return view('/SPB/ValidSPB');
})->name('/SPB/ValidSPB');

Route::get('/SPB/tambah_SPB', function () {
    return view('/SPB/tambah_SPB');
})->name('/SPB/tambah_SPB');

Route::get('/SPB/edit', function () {
    return view('/SPB/edit');
})->name('/SPB/edit');



Route::get('/PO/SuratPO', [PO_Controller::class, 'SuratPO'])->name('PO/SuratPO');
Route::get('/PO/TerimaSPB',[PO_Controller::class, 'TerimaSPB'])->name('PO/TerimaSPB');
Route::get('/PO/tambah_PO',[PO_Controller::class, 'tambah'])->name('PO/tambah_PO');
Route::get('/PO/TerimaPO/{id_SPB}', [PO_Controller::class, 'TerimaPO']);
Route::post('/PO/TerimaPO/storeTerimaPO',[PO_Controller::class, 'storeTerimaPO']);

Route::post('/PO/SuratPO/store',[PO_Controller::class, 'store']);
Route::get('/PO/ValidasiPO', [PO_Controller::class, 'ValidasiPO'])->name('PO/ValidasiPO');
Route::get('/PO/ProsesPO', [PO_Controller::class, 'ProsesPO'])->name('PO/ProsesPO');
Route::get('/PO/editPO/{id_PO}', [PO_Controller :: class, 'edit']);
Route::post('/PO/SuratPO/update', [PO_Controller :: class, 'update']);
Route::get('/PO/delete/{id_PO}', [PO_Controller :: class, 'delete']);
Route::get('/PO/deleteNoValid/{id_PO}', [PO_Controller :: class, 'deleteNoValid']);

Route::get('/PO/ValidPO/{id_PO}', [PO_Controller::class, 'ValidPO']);
Route::get('/PO/NoValidPO/{id_PO}', [PO_Controller::class, 'NoValidPO']);
Route::post('/PO/ValidasiPO/storeValidPO', [PO_Controller::class, 'storeValidPO']);
Route::post('/PO/ValidasiPO/storeNoValidPO', [PO_Controller::class, 'storeNoValidPO']);


Route::get('/PO/ProsesPO', [PO_Controller::class, 'ProsesPO'])->name('PO/ProsesPO');
Route::get('/PO/ProsesNoValidPO', [PO_Controller::class, 'ProsesNoValidPO'])->name('PO/ProsesNoValidPO');
Route::get('/PO/Barang/{id_PO}', [PO_Controller::class, 'Barang'])->name('PO/Barang');
Route::post('/PO/ProsesPO/BarangDatang', [PO_Controller::class, 'BarangDatang']);
Route::get('/PO/Gagal/{id_PO}', [PO_Controller::class, 'Gagal'])->name('PO/Gagal');
Route::get('/PO/ProsesPO/print/{id_PO}', [PO_Controller::class, 'printPDF']);
Route::get('/PO/ProsesPO/printAll', [PO_Controller::class, 'printAll']);

Route::get('/SPB/BuatSurat', [SPB_Controller::class, 'SuratSPB'])->name('SPB/BuatSurat');
Route::post('/SPB/BuatSurat/store',[SPB_Controller::class, 'store']);
Route::get('/SPB/ValidasiSPB', [SPB_Controller::class, 'ValidasiSPB'])->name('SPB/ValidasiSPB');
Route::get('/SPB/ProsesSPB', [SPB_Controller::class, 'ProsesSPB'])->name('SPB/ProsesSPB');
Route::get('/SPB/ProsesNoValid', [SPB_Controller::class, 'ProsesNoValid'])->name('SPB/ProsesNoValid');

Route::get('/SPB/ValidSPB/{id_SPB}', [SPB_Controller::class, 'ValidSPB']);
Route::get('/SPB/NoValidSPB/{id_SPB}', [SPB_Controller::class, 'NoValidSPB']);
Route::post('/SPB/ValidasiSPB/storeValidSPB', [SPB_Controller::class, 'storeValidSPB']);
Route::post('/SPB/ValidasiSPB/storeNoValidSPB', [SPB_Controller::class, 'storeNoValidSPB']);

Route::get('/SPB/editSPB/{id_SPB}', [SPB_Controller :: class, 'edit']);
Route::post('/SPB/BuatSurat/update', [SPB_Controller :: class, 'update']);
Route::get('/SPB/delete/{id_SPB}', [SPB_Controller :: class, 'delete']);
Route::get('/SPB/deleteNoValid/{id_SPB}', [SPB_Controller :: class, 'deleteNoValid']);

Route::get('/BarangKeluar/index', [BarangController :: class, 'viewBarangKeluar'])->name('BarangKeluar/');
Route::get('/BarangKeluar/edit/{id}', [BarangController :: class, 'edit']);
Route::get('/BarangKeluar/req_po/{id}', [BarangController :: class, 'req_po']);
Route::post('/BarangKeluar/update', [BarangController::class, 'update']);
Route::get('/BarangKeluar/out/{id}', [BarangController :: class, 'Barang']);
Route::post('/BarangKeluar/BarangKeluar', [BarangController :: class, 'BarangKeluar']);
Route::get('/BarangKeluar/print/{id}', [BarangController::class, 'printPDF']);
Route::get('/BarangKeluar/printAll', [BarangController::class, 'printAll']);

Route::get('/tambahBarang', [BarangController :: class, 'tambahBarang']);
Route::post('/storeTambahBarang', [BarangController :: class, 'storeTambahBarang']);








require __DIR__.'/auth.php';
