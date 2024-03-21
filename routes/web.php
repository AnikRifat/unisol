<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

use App\Http\Controllers\InvoiceController;
use Illuminate\Support\Facades\Route;

Route::get(
    '/invoice/index',
    [InvoiceController::class, 'index']
)->name('invoice');

Route::get(
    '/invoice/getCategoryProduct/{id}',
    [InvoiceController::class, 'getCategoryProduct']
)->name('invoice.getCategoryProduct');
Route::get(
    '/invoice/getImageUrl/{path}/{url}',
    [InvoiceController::class, 'getImageUrl']
)->name('invoice.getImageUrl');
Route::get(
    '/invoice/getProductDetails/{id}',
    [InvoiceController::class, 'getProductDetails']
)->name('invoice.getProductDetails');
