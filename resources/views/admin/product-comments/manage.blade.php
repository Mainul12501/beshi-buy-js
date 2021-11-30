@extends('admin.master')
@section('title')
    Manage Product Reviews
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Product Reviews Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Manage Product Reviews</li>
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
                            <a class="text-primary font-20">All Product Review List</a>
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
                                        <th>Product Name</th>
                                        <th>Customer Name</th>
                                        <th>Comments</th>
                                        <th>Ans. Reply</th>
                                        <th>Has Reply</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($comments as $comment)
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td><a href="{{ $comment->product_url }}" target="_blank" class="nav-link">{{ $comment->product->name }}</a></td>
                                            <td>{{ $comment->user->name }}</td>
                                            <td>{{ $comment->comment }}</td>
                                            <td>
                                                <form action="{{ route('sub-comment') }}" method="post" class="">
                                                    @csrf
                                                    <div class="form-group">
                                                        <input type="hidden" name="comment_id" id="commentId{{ $comment->id }}" value="{{ $comment->id }}">
                                                        <input type="hidden" name="product_id" id="productId{{ $comment->id }}" value="{{ $comment->product_id }}">
                                                        <input type="hidden" name="user_id" id="userId{{ $comment->id }}" value="{{ $comment->user_id }}">
                                                        <input type="hidden" name="product_url" id="productUrl{{ $comment->id }}" value="{{ $comment->product_url }}">
                                                        {{--<input type="text" name="sub_comment" class=" form-control ">--}}
                                                        <textarea name="sub_comment" id="" cols="25" rows="10"></textarea>
                                                        <input type="submit" class="btn btn-secondary" value="Reply">
                                                    </div>
                                                </form>
                                            </td>
                                            <td>{{ $comment->has_reply == 1 ? 'Yes' : 'No' }} ::: <a href="javascript:void(0)" onclick="viewSubReviews({{ $comment->id }})">View</a></td>
                                            <td>{{$comment->status == 0 ? 'Pending' : 'Approved'}}</td>

                                            <td>
                                                @if($comment->status == 1)
                                                    <a href="{{route('comment-change-status',['id'=>$comment->id])}}" class="btn btn-outline-info btn-sm" title="Status"><i class="fa fa-arrow-up"></i></a>
                                                @elseif($comment->status == 0)
                                                    <a href="{{route('comment-change-status',['id'=>$comment->id])}}" class="btn btn-outline-warning btn-sm" title="Status"><i class="fa fa-arrow-down"></i></a>
                                                @endif
{{--                                                <a href="{{route('edit-category',['id'=>$comment->id])}}" class="btn btn-outline-success btn-sm" title="Edit"><i class="fa fa-edit"></i></a>--}}
                                                <a href="{{route('delete-main-comment',['id'=>$comment->id])}}" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                    <div class="card mt-5" id="secTab" style="display: none;">
                        <div class="card-text p-3">
                            <a class="text-primary font-20">Sub Comments</a>

                        </div>
                        <div class="card-body">
                            <div class="card-text text-center">
                                @if($message = Session::get('msg'))
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
                                        <th>Product Name</th>
                                        <th>Customer ID</th>
                                        {{--<th>Main Comments</th>--}}
                                        <th>Sub Comments</th>
                                        <th>Ans. Comment</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody id="subCommentTbody">

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
