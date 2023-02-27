<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FormController;

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

// Route::get('/welcome', function () {
//     return view('welcome');
// });

Route::get('/', [\App\Http\Controllers\DisplayFilm::class,'index']);

Route::get('/film/{id}', [\App\Http\Controllers\DisplayFilm::class,'show']);

Route::get('/dashboard/{id}', [\App\Http\Controllers\DisplayFilm::class,'modify']);

Route::post('/', [FormController::class, 'handleFormSubmission'])->name('edit_film');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
