@extends('layouts.admin')

@section('content')
<div class="container">
	<h1 style="text-align: center; font-family: 'SF Pro Text', sans-serif; color: #442769;">MEMBERS</h1>
	<br>
	<table class="table table-stripped table-bordered" style="background-color: white;">
		<thead style="background-color: #442769">
			<tr style="color: white; font-size: 16px;">
				<td>Name</td>
				<td>E-mail</td>
				<td>Action</td>
			</tr>
		</thead>
		<tbody>
			@foreach($users as $user)
			<tr>
				<td>{{ $user->name }}</td>
				<td>{{ $user->email }}</td>
				<td>
					<a href="{{ url('/admin/user/'.$user->id.'/edit') }}" class="btn btn-warning">EDIT</a>
					<a href="{{ url('/admin/user/'.$user->id.'/delete') }}" class="btn btn-danger">DELETE</a>
				</td>
			</tr>
			@endforeach
		</tbody>
	</table>

</div>
@endsection