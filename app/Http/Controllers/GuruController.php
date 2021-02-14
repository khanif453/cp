@extends('layout.v_template')
@section('title', 'Guru')

@section('content')

    <table class="table table-bordered">
        <thead>
            <tr>
                <td>No</td>
                <td>NIP</td>
                <td>Nama</td>
                <td>Mapel</td>
                <td>Foto</td>
            </tr>
        </thead>
        <tbody>
        <?php $no = 1; ?>
            @foreach ($guru as $data)
            <tr>
                <td> {{ $no++ }} </td>
                <td> {{ $data->nip}} </td>
                <td> {{ $data->nama_guru}} </td>
                <td> {{ $data->mapel}} </td>
                <td> <img src="{{ url('foto_guru/',$data->foto_guru) }}" width="100px"></td>
                <td>
                    <a href="" class="btn btn-sm btn-success">Detail</a>
                    <a href="" class="btn btn-sm btn-primary">edit</a>
                    <a href="" class="btn btn-sm btn-danger">Hapus</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    
@endsection