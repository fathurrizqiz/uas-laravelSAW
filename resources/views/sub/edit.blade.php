@extends('layouts.main')

@section('title', 'Tambah Sub ')


@section('content')
    <di class="content mt-3">
        <div class="animated fadeIn">
            <div class="card">
                <div class="card-header">
                    <div class="pull-left">
                        <strong> Edit Sub</strong>
                    </div>
                    <div class="pull-right">
                        <a href="{{ url('sub/' . $subs->kode_id) }}" class="btn btn-success btn-sm">
                            <i class="fa fa-undo"></i> back
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-8">
                            <div class"col-md-4 offset-md-4">
                                <form action="{{ url('sub/' . $subs->id) }}" method="post">
                                    @method('patch')
                                    @csrf
                                    <div class="form-group">
                                        <label>Kode Kriteria</label>
                                        <input type="text" name="kode"
                                            class="form-control @error('kode') is-invalid @enderror"
                                            value="{{ $subs->kode_id }}" autofocus>
                                        @error('kode')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                    <div class="form-group ">
                                        <label>Penjelasan</label>
                                        <input type="text" name="desc"
                                            class="form-control @error('desc') is-invalid @enderror"
                                            value="{{ $subs->desc }}" autofocus>
                                        @error('desc')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                    <div class="form-group ">
                                        <label>Nilai Awal</label>
                                        <input type="text" name="nilaiawal"
                                            class="form-control @error('nilaiawal') is-invalid @enderror"
                                            value="{{ $subs->nilaiawal }}" autofocus>
                                        @error('nilaiawal')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                    <div class="form-group ">
                                        <label>Nilai Akhir</label>
                                        <input type="text" name="nilaiakhir"
                                            class="form-control @error('nilaiakhir') is-invalid @enderror"
                                            value="{{ $subs->nilaiakhir }}" autofocus>
                                        @error('nilaiakhir')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                                    <div class="form-group ">
                                        <label>Bobot</label>
                                        <input type="text" name="bobot"
                                            class="form-control @error('bobot') is-invalid @enderror"
                                            value="{{ $subs->bobot }}" autofocus>
                                        @error('bobot')
                                            <div class="invalid-feedback">
                                                {{ $message }}
                                            </div>
                                        @enderror
                                    </div>
                            </div>
                            <button type="submit" class="btn btn-success"> Update </button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        @endsection
