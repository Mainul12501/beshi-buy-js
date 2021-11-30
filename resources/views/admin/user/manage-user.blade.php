@extends('admin.master')
@section('title')
    Manage User
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">User Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Manage User</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <!-- File export -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-text p-3">
                            <a class="text-primary font-20">All User List</a>
                        </div>
                        <div class="card-body">
                            <div class="card-text text-center">
                                @if($message = Session::get('message'))
                                    <div class="alert alert-success alert-dismissible fade show py-2" role="alert">
                                        {{ $message }}
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                @endif
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered" id="file_export">
                                    <thead>
                                    <tr>
                                        <th>SN</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Image</th>
                                        <th>Active</th>
                                        <th>Current Role</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($users as $user)
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$user->name}}</td>
                                            <td>{{$user->email}}</td>
                                            <td>
                                                <img src="{{asset($user->image)}}" style="height: 50px;width: 60px"/>
                                            </td>
                                            <td>
                                                {{$user->is_admin == 1 ? 'Active' : 'Inactive'}}
                                            </td>

                                            <td>

                                                    @if($user->is_admin == 1)
                                                        <a href="javascript:void(0)" class="btn btn-success btn-sm" title="Edit">Admin</a>
                                                    @else
                                                        <a href="{{ route('role-permission', ['id' => $user->id ]) }}" class="btn btn-danger btn-sm" title="Edit">Admin</a>
                                                    @endif
                                                    @if($user->is_executive == 1)
                                                        <a href="javascript:void(0)" class="btn btn-success btn-sm" title="Edit">Executive</a>
                                                    @else
                                                            <a href="{{ route('role-permission', ['id' => $user->id ]) }}" class="btn btn-danger btn-sm" title="Edit">Executive</a>
                                                    @endif

                                            </td>

                                            <td>
                                                <a href="{{ route('delete-user', ['id' => $user->id ]) }}" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
