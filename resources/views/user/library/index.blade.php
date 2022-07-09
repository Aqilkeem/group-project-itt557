@extends('layouts.app')
@section('content')
<div class="container">
	<h1 style="text-align: center; font-family: 'SF Pro Text', sans-serif; color: #442769;">BOOKS</h1>
	<br>
	<form action="{{ url('library/search') }}" method="get">
		<div class="form-group">
			<input type="text" class="form-control" name="search" value="{{ old('search') }}">
	</div>
	<button type="submit" class="btn btn-success" style="font-family: 'SF Pro Text', sans-serif; color: white;">SEARCH</button>
	</form>
	<br>
	<table class="table table-stripped table-bordered">
		<thead style="background-color: #442769; color: white; font-size: 15px;">
			<tr>
				<td>TITLE</td>
				<td>AUTHOR</td>
				<td>PUBLISHED</td>
				<td>DESCRIPTON</td>
				<td>ACTION</td>
			</tr>
		</thead>
		<tbody style="background-color: white;">
			@foreach($libraries as $library)
			<tr>
				<td>{{ $library->title }}</td>
				<td>{{ $library->writer }}</td>
				<td>{{ $library->published_year }}</td>
				<td>{{ $library->sinopsis }}</td>
				<td>
					<a href="{{ url('/listrent/'.$library->id.'/rent') }}" class="btn btn-warning">BORROW</a>
				</td>
			</tr>
			@endforeach
		</tbody>
	</table>
</div>
@endsection