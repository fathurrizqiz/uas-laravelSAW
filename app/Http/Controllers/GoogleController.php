<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;

class GoogleController extends Controller
{
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback()
{
    try {
        // Mendapatkan pengguna dari Google
        $user = Socialite::driver('google')->user();
        
        // Mencari pengguna berdasarkan google_id
        $findUser = User::where('google_id', $user->id)->first();

        if ($findUser) {
            // Mengautentikasi pengguna yang ditemukan
            Auth::login($findUser);
            
            // Mendapatkan pengguna yang diautentikasi
            $user = User::getuser($findUser->name);
            
            // Menyimpan data pengguna ke sesi
            session(['key' => $user]);
            
            // Mengarahkan ke halaman home
            return redirect('/home');
        } else {
            // Membuat pengguna baru
            $newUser = User::create([
                'name' => $user->name,
                'email' => $user->email,
                'google_id' => $user->id,
                // 'email_verified_at' => now(), // Gunakan helper Laravel untuk mendapatkan waktu saat ini
                'password' => encrypt('my-google') // Password tidak digunakan untuk login OAuth
            ]);

            // Mengautentikasi pengguna yang baru dibuat
            Auth::login($newUser);
            
            // Mendapatkan pengguna yang diautentikasi
            $user = User::getuser($newUser->name);
            
            // Menyimpan data pengguna ke sesi
            session(['key' => $user]);
            
            // Mengarahkan ke halaman home
            return redirect('/home');
        }
    } catch (\Exception $e) {
        // Menangani pengecualian dan mengarahkan kembali ke halaman login
        return redirect('/login');
    }
}

}
