@extends('layouts.admin')
@section('content')
<div class="container">
	<h1 style="text-align: center; font-family: 'SF Pro Text', sans-serif; color: #442769;">{{ $book->title }}</h1>
	<br>
	<table class="table table-stripped table-bordered">
		<thead style="background-color: #442769; color: white; font-size: 16px;">
			<tr>
				<td>TITLE</td>
				<td>AUTHOR</td>
				<td>PUBLISHED YEAR</td>
				<td>DESCRIPTION</td>
			</tr>
		</thead>
		<tbody style="background-color: white;">
			<tr>
				<td>{{ $book->title }}</td>
				<td>{{ $book->writer }}</td>
				<td>{{ $book->published_year }}</td>
				<td>{{ $book->sinopsis }}</td>
			</tr>
		</tbody>
	</table>
	<a href="{{ url('admin/book') }}" class="btn btn-success" style="width: 30; font-family: 'SF Pro Text', sans-serif; color: white;">BACK</a>	
</div>
@endsection