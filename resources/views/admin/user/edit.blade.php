@extends('layouts.admin')
@section('content')
<div class="container">
	<h1 style="text-align: center; font-family: 'SF Pro Text', sans-serif; color: #442769;">EDIT PROFILE</h1>
	<form action="{{ url('admin/user/'.$id.'/update') }}" method="post">
		{{ csrf_field() }}
		<div class="form-group">
			<label for="name">Name:</label>
			<input type="text" name="name" class="form-control" required="required" value="{{(isset($data)?$data->name:$name)}}">
		</div>
		<div class="form-group">
			<label for="email">E-mail:</label>
			<input type="text" name="email" class="form-control" required="required" value="{{(isset($data)?$data->email:$email)}}">
		</div>
		<button type="submit" class="btn btn-danger">Edit</button>
	</form>
</div>
@endsection