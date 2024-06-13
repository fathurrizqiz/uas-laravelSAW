@extends('layouts.main')

@section('title', 'Data Penilaian ')

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
    @if (Session::has('error'))
        <script>
            toastr.error("{{ Session::get('error') }}");
        </script>
    @endif
    {{-- header tabel --}}
    <div class="animated fadeIn" >
        <di class="content mt-3">
            <div class="card" >
                <div class="card-header"style="backround:aqua">
                    <div class="pull-left">
                        <strong> Daftar Nilai</strong>
                    </div>

                    <div class="pull-right">
                        <a href="{{ url('penilaian/create') }}" class="btn btn-primary btn-sm">
                            <i class="fa fa-plus"></i> Tambah
                        </a>
                    </div>
                </div>
                {{-- isi tabel --}}
                <div class="card-body table-responsive">
                    <table id="example" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Mahasiswa</th>
                                <th>jurusan</th>
                                <th>IPK</th>
                                <th>kedisiplinan</th>
                                <th>Kehadiran</th>
                                <th>aktif organisasi</th>
                                <th>pengalaman kompetisi</th>
                                <th>sikap</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($penilaian as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    @foreach ($detail as $data)
                                        @if ($item->nisn == $data->id_alternatif)
                                            <td>{{ $data->nama }}</td>
                                            <td>{{ $data->jurusan }}</td>
                                        @break;
                                    @endif
                                @endforeach
                                @foreach ($detail as $data)
                                    @if ($item->nisn == $data->id_alternatif)
                                        <td>{{ $data->nilai }}</td>
                                    @endif
                                @endforeach
                                @foreach ($detail as $data)
                                    @if ($item->nisn == $data->id_alternatif)
                                        <td>
                                            <a href="{{ url('penilaian/' . $data->id_alternatif) }}"
                                                class="btn btn-primary btn-sm">
                                                Edit
                                            </a>
                                            <form action="{{ url('penilaian/' . $data->id_alternatif) }}" method="post"
                                                value="delete" class="d-lg-inline">
                                                @method('delete')
                                                @csrf
                                                <button class="btn btn-danger btn-sm confirm_delete">Hapus</button>
                                            </form>
                                        </td>
                                    @break;
                                @endif
                            @endforeach
                            @foreach ($detail as $data)
                                    @if ($item->nisn == $data->id_kriteria)
                                        <td>{{ $data->C4 }}</td>
                                        <td>{{ $data->C5 }}</td>
                                        <td>{{ $data->C6 }}</td>
                                    @endif
                                @endforeach
                            
                        </tr>
                        
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

@endsection
