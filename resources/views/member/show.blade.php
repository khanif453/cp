@extends('__layouts.app')
@section('title', $member->name)
@section('content')

<div class="row">
	<div class="col-md-3">
		<div class="card shadow mb-4">
			<div class="card-body">
				<img src="{{ url('images/'.$member->photo) }}" width="170px" class="img-fluid">
			</div>
		</div>
	</div>

	<div class="col-md-9">
		<div class="card shadow mb-4">
			<div class="card-header">
				<h6 class="font-weight-bold text-primary m-0">Data Member</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" width="100%">
						<tbody>
							<tr>
								<th>Nama</th>
								<td>{{ $member->name }}</td>
							</tr>
							<tr>
								<th>Kelamin</th>
								<td>{{ $member->gender }}</td>
							</tr>
							<tr>
								<th>Ulang Tahun</th>
								<td>{{ localDate($member->birthday) }}</td>
							</tr>
							<tr>
								<th>No Hp</th>
								<td>{{ $member->phone }}</td>
							</tr>
							<tr>
								<th>Alamat</th>
								<td>{{ $member->address }}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="card-footer">
				<a href="{{ url()->previous() }}" class="btn btn-danger">Back</a>
			</div>
		</div>
	</div>
</div>

@endsection