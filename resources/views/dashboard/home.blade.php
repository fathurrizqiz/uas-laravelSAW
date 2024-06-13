@extends('layouts.main')

@section('title', 'Dashboard')



@section('content')
    @if (Session::has('status'))
        <script>
            toastr.success("{{ Session::get('status') }}");
        </script>
    @endif

    <div style="text-align: left">
        <h1> Selamat Datang</h1>
        <h2>Di Sistem Pendukung Keputusan Penilaian Mahasiswa Terbaik</h2>
        <br>
        <br>
        <h4>apa itu SPK?</h4>
        <br>
        <p>SPK atau Sistem Pendukung Keputusan (Decision Support System - DSS) adalah sebuah sistem informasi yang digunakan untuk mendukung proses pengambilan keputusan dalam organisasi atau perusahaan. SPK menggabungkan data, model analisis, dan alat bantu yang interaktif untuk membantu para pengambil keputusan dalam membuat keputusan yang lebih baik dan informatif.</p>
        <br>
        <br>
        <h4>apa itu metode SAW?</h4>
        <br>
        <p>
Metode SAW (Simple Additive Weighting) adalah salah satu metode yang sering digunakan dalam Sistem Pendukung Keputusan (SPK) untuk menyelesaikan masalah pengambilan keputusan multikriteria. Metode ini dikenal juga sebagai metode penjumlahan terbobot. SAW digunakan untuk memilih alternatif terbaik dari sejumlah alternatif berdasarkan beberapa kriteria.</p>
    </div>

@endsection
