<?php

namespace App\Http\Controllers;


use App\Models\Sub;
 // Import model Kriteria
use Illuminate\Support\Facades\DB;


class sub1Controller extends Controller
{
    public function index()
    {
        $subs1 = DB::table('kriterias')->get();
        
        // Periksa apakah $subs1 adalah array kosong atau null
        if (!empty($subs1)) {
            return view('sub1.index', compact('subs1'));
        } else {
            // Jika $subs1 kosong, kembalikan pesan kesalahan
            return view('sub1.index')->with('error', 'Tidak ada data kriteria yang ditemukan');
        }
    }

    
}
