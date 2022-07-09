@extends('layouts.app')
@section('content')
<div class="container">
	@foreach($users as $user)
	<h1 style="text-align: center; font-family: 'SF Pro Text', sans-serif; color: #442769;">PROFILE</h1>
	<h2 style="text-align: center; font-family: 'SF Pro Text', sans-serif; color: #442769;">{{ $user->name }}</h2>
	<br>
	<table class="table table-stripped table-bordered">
		<thead style="background-color: #442769; color: white;">
			<tr>
				<td>Name</td>
				<td>Email</td>
			</tr>
		</thead>
		<tbody style="background-color: white;">
			<tr>
				<td>{{ $user->name }}</td>
				<td>{{ $user->email }}</td>
			</tr>
		</tbody>
	</table>
	@endforeach
</div>
@endsection