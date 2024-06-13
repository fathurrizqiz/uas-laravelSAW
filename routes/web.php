<?php
use App\Http\Controllers\SubController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\SiswaController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\ProsesController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\KriteriaController;
use App\Http\Controllers\PenilaianController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\Sub1Controller;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use App\Http\Controllers\GoogleController;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });


Route::resource('/', LoginController::class);
Route::resource('login', LoginController::class)->middleware("guest")->name('index', 'login');
Route::resource('logout', LogoutController::class);

Route::get('/home', [HomeController::class,"index"])->middleware('auth');
Route::resource('user', UserController::class)->middleware('auth');
Route::resource('mahasiswa', SiswaController::class);
Route::resource('kriteria', KriteriaController::class);
Route::resource('sub', SubController::class);
Route::resource('sub1', Sub1Controller::class);
Route::resource('penilaian', PenilaianController::class);
Route::resource('proses', ProsesController::class);
route::resource('register',  RegisterController::class)->middleware("guest");


//forgot password

Route::get('/forgot-password', function () {
    return view('auth.forgot-password');
})->middleware('guest')->name('password.request');


Route::post('/forgot-password', function (Request $request) {
    $request->validate(['email' => 'required|email']);
 
    $status = Password::sendResetLink(
        $request->only('email')
    );
 
    return $status === Password::RESET_LINK_SENT
                ? back()->with(['status' => __($status)])
                : back()->withErrors(['email' => __($status)]);
})->middleware('guest')->name('password.email');

Route::get('/reset-password/{token}', function (string $token) {
    // return view('auth.reset-password', ['token' => $token]);
    return 'berhasil kirim email';
})->middleware('guest')->name('password.reset');

//google verification

Route::get('auth/google',[GoogleController::class, 'redirectToGoogle'])->name('auth.redirect');
Route::get('auth/google/callback',[GoogleController::class, 'handleGoogleCallback']);

//email

Route::get('/email/verify', function () {
    return view('auth.verify-email');
})->middleware('auth')->name('verification.notice');

Route::get('/email/verify/{id}/{hash}', function (EmailVerificationRequest $request) {
    $request->fulfill();
 
    return redirect('/dashboard/home');
})->middleware(['auth', 'signed'])->name('verification.verify');

Route::get('dashboard/home', function() {
    return 'dasboard home';
    
})->middleware(['auth', 'verified']);

// Route::post('/email/verification-notification', function (Request $request) {
//     $request->user()->sendEmailVerificationNotification();
 
//     return back()->with('message', 'Verification link sent!');
// })->middleware(['auth', 'throttle:6,1'])->name('verification.send');


