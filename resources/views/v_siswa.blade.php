@extends('layout.v_template')
@section('title', 'Siswa')

@section('content')
<a href="/siswa/print" target="_blank" class="btn btn-primary">Print printer</a>
<a href="/siswa/printpdf" target="_blank" class="btn btn-success">Print PDF</a>

<table class="table table-bordered">
        <thead>
            <tr>
                <td>No</td>
                <td>NIS</td>
                <td>Nama Siswa</td>
                <td>Kelas</td>
                <td>Jurusan</td>
            </tr>
        </thead>
        <tbody>
        <?php $no = 1; ?>
            @foreach ($siswa as $data)
                <tr>
                    <td>{{ $no++ }}</td>
                    <td>{{ $data->nis }}</td>
                    <td>{{ $data->nama_siswa }}</td>
                    <td>{{ $data->kelas }}</td>
                    <td>{{ $data->jurusan }}</td>
                </tr>
            @endforeach
        </tbody>
</table>

@endsection