@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Restaurant Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <div class="row text-center">
                        @if(Auth::user()->checkAdmin())
                        <div class="col-sm-4">
                            <a href="/management">
                                <h5>Data Management</h5>
                                <img src="{{asset('images/datamanagement.jpg')}}" height="50px" width="50px">
                            </a>
                        </div>
                        @endif
                        <div class="col-sm-4">
                            <a href="/cashier">
                                <h5>Cashier</h5>
                                <img src="{{asset('images/cashier.jpg')}}" height="50px" width="50px">
                            </a>
                        </div>
                        @if(Auth::user()->checkAdmin())
                        <div class="col-sm-4">
                            <a href="/report">
                                <h5>Reports</h5>
                                <img src="{{asset('images/report.jpg')}}" height="50px" width="50px">
                            </a>
                        </div>
                        @endif
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
