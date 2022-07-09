@extends('layouts.admin')
@section('content')
<div class="container">
	<h1 style="text-align: center; font-family: 'SF Pro Text', sans-serif; color: #442769;">ADD BOOK</h1>
	<form action="{{ url('admin/book/store') }}" method="post">
		{{ csrf_field() }}
		<input type="hidden" name="id" required="required">
		<div class="form-group">
			<label>Categories</label>
			<select class="form-control" name="category_id">
				<option value="">Choose</option>
				@foreach($categories as $category)
				<option value="{{ $category->id }}">{{ $category->name }}</option>
				@endforeach
			</select>
		</div>
		<div class="form-group">
			<label>Title</label>
			<input type="text" class="form-control" name="title">
		</div>
		<div class="form-group">
			<label>Author</label>
			<input type="text" class="form-control" name="writer">
		</div>
		<div class="form-group">
			<label>Published Year</label>
			<input type="text" class="form-control" name="published_year">
		</div>	
		<div class="form-group">
			<label>Description</label>
			<input type="text" class="form-control" name="sinopsis">
		</div>
		<button type="submit" class="btn btn-primary">ADD BOOK</button>
	</form>
</div>
@endsection