@extends('layouts.main')

@section('title', 'Tambah mahasiswa ')


@section('content')
    <di class="content mt-3">
        <div class="animated fadeIn">
            <div class="card">
                <div class="card-header">
                    <div class="pull-left">
                        <strong> Tambah Mahasiswa</strong>
                    </div>
                    <div class="pull-right">
                        <a href="{{ url('mahasiswa') }}" class="btn btn-success btn-sm">
                            <i class="fa fa-undo"></i> back
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-8">
                            <div class"col-md-4 offset-md-4">
                                <form action="{{ url('mahasiswa') }}" method="post">
                                    @csrf
                                    <div class="form-group">
                                        <label>Nim</label>
                                        <input type="text" name="nisn"
                                            class="form-control @error('nisn') is-invalid @enderror"
                                            value="{{ old('nisn') }}" autofocus>
                                        @error('nisn')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label>Nama'mahasiswa</label>
                                        <input type="text" name="nama"
                                            class="form-control @error('nama') is-invalid @enderror"
                                            value="{{ old('nama') }}" autofocus>
                                        @error('nama')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label>Tempat</label>
                                                <input type="text" name="tempat"
                                                    class="form-control @error('tempat') is-invalid @enderror"
                                                    value="{{ old('tempat') }}" autofocus>
                                                @error('tempat')
                                                    <div class="invalid-feedback">
                                                        {{ $message }}
                                                    </div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <label>Tanggal Lahir</label>
                                            <input type="date" name="lahir" class="form-control" autofocus>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="select" class=" form-control-label ">Jenis Kelamin</label>
                                        <select name="jeniskelamin" class="form-control" autofocus>
                                            <option selected>---PILIH----</option>
                                            <option value="laki-laki">Laki-laki</option>
                                            <option value="perempuan">Perempuan</option>
                                        </select>
                                    </div>

                                    

                                    <div class="form-group">
                                        <label>Jurusan</label>
                                        <input type="text" name="jurusan"
                                            class="form-control @error('jurusan') is-invalid @enderror"
                                            value="{{ old('jurusan') }}" autofocus>
                                        @error('jurusan')
                                            <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                            </div>
                            <div>
                                <button type="submit" class="btn btn-success"> Save </button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
        </div>
    @endsection
