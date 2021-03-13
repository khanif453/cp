@extends('__layouts.app')

@section('title', 'Add Buku')

@section('content')


	<div class="col-md-6 mx-auto">
		<div class="card shadow mb-4">
			<div class="card-header">
				<h6 class="font-weight-bold text-primary m-0">Add Buku</h6>
			</div>
			<div class="card-body">
				<form action="{{ route('book.store') }}" method="post">
					@csrf
					<div class="form-group">
						<label>Kode Buku</label>
						<input type="text" class="form-control @error('code') is-invalid @enderror" name="code" placeholder="Kode Buku" value="{{ old('code') }}" autofocus>
						<small class="form-text text-muted">Optional, Max:6</small>

						@error('code')
							<span class="invalid-feedback">{{ $message }}</span>
						@enderror
					</div>
					<div class="form-group">
						<label>Nama Buku</label>
						<input type="text" class="form-control @error('name') is-invalid @enderror" name="name" placeholder="Nama Buku" value="{{ old('name') }}" required>

						@error('name')
							<span class="invalid-feedback">{{ $message }}</span>
						@enderror
					</div>
					<div class="form-group">
						<label>Penulis</label>
						<input type="text" class="form-control @error('writer') is-invalid @enderror" name="writer" placeholder="Penulis" value="{{ old('writer') }}" required>

						@error('writer')
							<span class="invalid-feedback">{{ $message }}</span>
						@enderror
					</div>
					<div class="form-group">
						<label>Kategori</label>
						<select name="category_id" class="form-control custom-select" required></select>

						@error('category_id')
							<span class="invalid-feedback">{{ $message }}</span>
						@enderror
					</div>
					<div class="form-group">
						<label>Tahun Terbit</label>
						<input type="number" maxlength="4" class="form-control @error('year') is-invalid @enderror" name="year" placeholder="Tahun Terbit" value="{{ old('year') }}" required>

						@error('year')
							<span class="invalid-feedback">{{ $message }}</span>
						@enderror
					</div>
					<div class="form-group">
						<button class="btn btn-primary" type="submit">Add</button>
						<a href="{{ url()->previous() }}" class="btn btn-danger">Cancel</a>
					</div>
				</form>
			</div>
		</div>
	</div>

@endsection

@push('styles')
	
	<link rel="stylesheet" href="{{ asset('sbadmin/vendor/select2/css/select2.min.css') }}">
	<link rel="stylesheet" href="{{ asset('sbadmin/vendor/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">

@endpush

@push('scripts')
	
	<script src="{{ asset('sbadmin/vendor/select2/js/select2.min.js') }}"></script>

	<script>
		$('[name=category_id]').select2({
			placeholder: 'Category',
			ajax: {
				url: '{{ route("category.get") }}',
				type: 'post',
				data: params => ({
					_token: '{{ csrf_token() }}',
					name: params.term
				}),
				dataType: 'json',
				processResults: res => ({
					results: res
				}),
				cache: true
			}
		})
	</script>

@endpush