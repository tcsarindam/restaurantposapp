@extends('layouts.app')

@section('content')

	<div class="container">
		<div class="row justify-center-center">			
				@include('management.inc.sidebar')		
				<div class="col-md-8">
						<i class="fas fa-chair"></i>Edit Table						
						<hr>
						@if ($errors->any())
						    <div class="alert alert-danger">
						        <ul>
						            @foreach ($errors->all() as $error)
						                <li>{{ $error }}</li>
						            @endforeach
						        </ul>
						    </div>
						@endif
						<form action="/management/table/{{$table->id}}" method="POST">
							@csrf
							@method('PUT')
							<div class="form-group">
								<label for="categoryName">Table Name</label>
								<input type="text" name="name" class="form-control" value="{{ $table->name }}" placeholder="Enter Table Name">
							</div>
							<button type="submit" class="btn btn-primary">Edit</button>
						</form>
				</div>
		</div>
	</div>

@endsection