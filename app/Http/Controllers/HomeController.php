<?php

namespace App\Http\Controllers;
use App\Models\Home;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view('dashboard.home');
    }
    public function create()
    {
        //
    }

    public function store(request $request)
    {
        //
    }
    public function show(Home $home)
    {
        //
    }
    public function edit(Home $home)
    {
        //
    }
    public function update(Request $request,Home $home)
    {
        //

    }
    public function destroy(Home $home)
    {
        //
    }
}
