@extends('layouts.main')

@section('title', 'Data Kriteria ')

@section('content')

    @if (Session::has('status'))
        <script>
            toastr.success("{{ Session::get('status') }}");
        </script>
    @endif
    @if (Session::has('delete'))
        <script>
            toastr.success("{{ Session::get('delete') }}");
        </script>
    @endif

    {{-- header tabel --}}
    <div class="animated fadeIn">
        <di class="content mt-3">
            <div class="card">
                <div class="card-header">
                    <div class="pull-left">
                        <strong> Daftar Kriteria</strong>
                    </div>

                    <!-- <div class="pull-right">
                        <a href="{{ url('kriteria/create') }}" class="btn btn-success btn-sm">
                            <i class="fa fa-plus"></i> Tambah
                        </a> -->
                    </div>
                </div>
                {{-- isi tabel --}}
                <div class="card-body table-responsive">
                    <table id="example" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>kriteria</th>
                                <th>Nama Kriteria</th>
                                <th>Atribut</th>
                                <th>Bobot</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($subs1 as $sub1)
                                <tr>
                                    <td>{{ $sub1->kode }}</td>
                                    <td>{{ $sub1->namakriteria }}</td>
                                    <td>{{ $sub1->atribut }}</td>
                                    <td>{{ $sub1->bobot }}</td>
                                    <td>
                                        <a href="{{ url('sub/' . $sub1->kode) }}" class="btn btn-primary btn-sm">
                                            Sub
                                        </a>
                                        <!-- <a href="{{ url('kriteria/' . $sub1->kode) }}" class="btn btn-primary btn-sm">
                                            Edit
                                        </a> -->
                                        <!-- <form action="{{ url('kriteria/' . $sub1->kode) }}" method="post" value="delete"
                                            class="d-lg-inline">
                                            @method('delete')
                                            @csrf
                                            <button class="btn btn-danger btn-sm confirm_delete">Hapus</button> -->
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
    </div>

@endsection
