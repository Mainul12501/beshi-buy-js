@extends('admin.master')
@section('title')
    Size
@endsection

@section('body')
    <div class="page-wrapper ">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-md-5">
                    <h5>Size Module</h5>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"> <a href="{{route('home')}}">Home</a></li>
                                <li class="breadcrumb-item " aria-current="page">
                                    <a href="{{route('add-size')}}" class="text-warning">Create</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('manage-size')}}" class="text-warning">Mange</a>
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 mt-4">
                    <div class="card  border">
                        <div class="card-header bg-dark text-white font-16" style="font-family:'Century Gothic';padding: 10px">Update Info</div>
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

                            <form action="{{route('update-size')}}" method="POST" class="form-horizontal"  enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="name">Size Name :</label>
                                    <input type="text" class="form-control" name="name"  value="{{$size->name}}"  style="padding: 1.25rem"/>
                                    <input type="hidden"  name="id"  value="{{$size->id}}"/>
                                </div>

                                <div class="form-group">
                                    <label for="description">Description :</label>
                                    <textarea  class="form-control" name="description" style="height: 100px">{{$size->description}}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="status">Status : </label>
                                    <input type="radio" name="status" class="ml-2" {{$size->status == 1 ? 'checked' : ''}} value="1"/> Active
                                    <input type="radio" name="status" class="ml-2" {{$size->status == 0 ? 'checked' : ''}} value="0"/> Inactive
                                </div>

                                <div class="form-group">
                                    <input type="submit" class="btn btn-outline-dark btn-block font-18" value="Update" />
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
