@extends('layouts.admin')
@section('content')
<div class="container">
	<h1 style="text-align: center; font-family: 'SF Pro Text', sans-serif; color: #442769;">BOOKS</h1>
	<br>
	<a href="{{url('admin/book/create')}}" class="btn btn-primary" style="width: 30; font-family: 'SF Pro Text', sans-serif; color: white;">+ ADD BOOK</a>
	<br>
	<br>
	<table class="table table-stripped table-bordered">
		<thead style="background-color: #442769; color: white; font-size: 16px;">
			<tr>
				<td>CATEGORY</td>
				<td>TITLE</td>
				<td>AUTHOR</td>
				<td>PUBLISHED YEAR</td>
				<td>OPTION</td>
			</tr>
		</thead>
		<tbody style="background-color: white;">
			@foreach($books as $book)
			<tr>
				<td>{{ $book->category->name }}</td>
				<td>{{ $book->title }}</td>
				<td>{{ $book->writer }}</td>
				<td>{{ $book->published_year }}</td>
				<td>
					<a href="{{ url('/admin/book/'.$book->id.'/show') }}" class="btn btn-primary">DETAIL</a>
					<a href="{{ url('/admin/book/'.$book->id.'/edit') }}" class="btn btn-warning">EDIT</a>
					<a href="{{ url('/admin/book/'.$book->id.'/delete') }}" class="btn btn-danger">DELETE</a>
				</td>
			</tr>
			@endforeach
		</tbody>
	</table>
</div>
@endsection