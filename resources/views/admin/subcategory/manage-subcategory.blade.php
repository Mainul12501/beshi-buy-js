@extends('admin.master')
@section('title')
    Manage SubCategory
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">SubCategory Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}" class="text-muted">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="{{route('add-subcategory')}}" class="text-warning">Create</a>
                                </li>
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
                            <a class="text-primary font-20">All SubCategory List</a>
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
                                <table class="table table-bordered " id="file_export">
                                    <thead >
                                    <tr >
                                        <th>SN</th>
                                        <th>Cat.Name</th>
                                        <th>Sub.Cat.Name</th>
                                        <th>Image</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody >
                                    @foreach($subCategories as $subCategory)
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$subCategory->category->name}}</td>
                                            <td>{{$subCategory->sub_category_name}}</td>
                                            <td>
                                                <img src="{{asset($subCategory->sub_category_image)}}" style="height: 50px;width: 70px"/>
                                            </td>
                                            <td>{{$subCategory->status == 1 ? 'Active' : 'Inactive'}}</td>

                                            <td>
                                                @if($subCategory->status == 1)
                                                    <a href="{{route('inactive-subcategory',['id'=>$subCategory->id])}}" class="btn btn-outline-info btn-sm" title="Status"><i class="fa fa-arrow-up"></i></a>
                                                @elseif($subCategory->status == 0)
                                                    <a href="{{route('active-subcategory',['id'=>$subCategory->id])}}" class="btn btn-outline-warning btn-sm" title="Status"><i class="fa fa-arrow-down"></i></a>
                                                @endif
                                                <a href="{{route('edit-subcategory',['id'=>$subCategory->id])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>
                                                <a href="{{route('delete-subcategory',['id'=>$subCategory->id])}}" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
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
