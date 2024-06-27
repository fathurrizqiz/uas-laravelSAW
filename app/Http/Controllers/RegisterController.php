<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index() 
    {
        return view ('register.index');
    }

    

    public function store (request $request)
    {
        Session::flash('name', $request ->name );
        Session::flash('email', $request ->email );
        Session::flash('password', $request -> password );
        $request -> validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6'
        ], [
            'name.required' => 'nama wajib di isi',
            'email.email' => 'email tidak valid',
            'email.unique' => 'email telah di isi dengan akun lain',
            'password.required' => 'password wajib di isi',
            'password.min' => 'password terdiri 6 karakter'
        ]);
        $hashedPassword = Hash::make($request->password);

        $user = User::create([
            'name' => $request -> name,
            'email' => $request -> email,
            'password' => $hashedPassword

        ]);
        Auth::login($user);

        event(new Registered($user));
        
        // return redirect('login') -> with ('autentikasi email');
        // return redirect('auth.verify-email');
       

        return redirect('email/verify');

       

    }
}
