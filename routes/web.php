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
    '/make/invoice',
    [InvoiceController::class, 'index']
)->name('invoice');
