<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LogoutController extends Controller
{
    public function index()
    {
        Auth::logout();
        session()->forget('key');
        return redirect ('login');
    }

    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Logout $logout)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Logout $logout)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Logout $logout)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Logout $logout)
    {
        //
    }
}
