@extends('layouts.admin')
@section('content')
<div class="container">
	<h1 style="text-align: center; font-family: 'SF Pro Text', sans-serif; color: #442769;">LIST OF BORROWED BOOKS</h1>
	<br>
	<table class="table table-stripped table-bordered">
		<thead style="background-color: #442769; font-size: 16px; color: white;">
			<tr>
				<td>User</td>
				<td>Title</td>
				<td>Date of Borrow</td>
				<td>Date of Return</td>
			</tr>
		</thead>
		<tbody style="background-color: white;">
			@foreach($rents as $rent)
			<tr>
				<td>{{ $rent->user ->name }}</td>
				<td>{{ $rent->book ->title}}</td>
				<td>{{ $rent->rent_date }}</td>
				<td>{{ $rent->return_date }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
</div>
@endsection