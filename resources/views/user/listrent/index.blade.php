@extends('layouts.app')
@section('content')
<div class="container">
	<table class="table table-bordered table-stripped">
		<thead style="background-color: #442769; color: white; font-size: 15px;">
			<tr>
				<td>TITLE</td>
				<td>AUTHOR</td>
				<td>PUBLISHED</td>
				<td>DESCRIPTION</td>
				<td>ACTION</td>
			</tr>
		</thead>
		<tbody style="background-color: white;">
			@foreach($books as $book)
			<tr>
				<td>{{ $book->title }}</td>
				<td>{{ $book->writer }}</td>
				<td>{{ $book->published_year }}</td>
				<td>{{ $book->sinopsis }}</td>
				<td>
					<a class="btn btn-danger" href="{{ url('/listrent/'.$book->id.'/return') }}">RETURN</a>
				</td>
			</tr>
			@endforeach
		</tbody>
	</table>
</div>
@endsection