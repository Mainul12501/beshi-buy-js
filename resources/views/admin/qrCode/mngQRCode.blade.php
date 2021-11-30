@extends('admin.master')
@section('title')
    Manage QR Code
@endsection

@section('body')
    <div class="page-wrapper">
        <div class="page-breadcrumb" style="border-bottom: 2px solid lightgray">
            <div class="row py-3 ">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">Product QR Code Module</h4>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex align-items-center justify-content-end">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{route('home')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Manage QR Code</li>
                                <li class="breadcrumb-item active" aria-current="page" >print</li>
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
                    <div class="card" id="">
                        <div class="card-text p-3">
                            <a class="text-primary font-20">All QR Code List</a>
                            <a href="{{route('generate-code')}}" class="btn btn-outline-danger float-right">Generate 10 QR Code</a>
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
                                        <th>Code</th>
                                        <th>image</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    @php($i=1)
                                    <tbody>
                                    @foreach($codes as $code)
                                        <tr>
                                            <td>{{$i++}}</td>
                                            <td>{{$code->code}}</td>
                                            <td>
                                                <img src="{{ asset($code->qr_image) }}" style="width: 100px; height: 100px;" alt="">
                                            </td>

                                            <td>
{{--                                                <a href="{{route('delete-subcategory',['id'=>$code->id])}}" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>--}}
                                                <a href="javascript:void(0)" class="btn btn-outline-danger btn-sm" type="Delete" onclick="return confirm('Are you sure..?? ')"><i class="fa fa-trash"></i></a>
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


        {{--qr code print test--}}
        <div class="container">
            <div class="row pb-5">
                <div class="col-md-12">
                    <div class="py-2">
                        <?php
                            $check  = \App\Models\GenerateQrCode::orderBy('id', 'DESC')->first();
                        ?>
                        @if(isset($check))
                        <h6>Last Checked: From-> <span class="text-danger">{{ $check->start }}</span> To-><span class="text-danger">{{ $check->end }}</span></h6>
                            @endif
                    </div>
                    <form action="{{ route('get-qr-data-for-print') }}" method="post" class="form-inline" id="codeSub">
                        @csrf
                        <div class="row w-100">
                            <div class="col-md-5 form-group">
                                <label for="startFrom">Start From</label>
                                <input type="number" name="start_form" id="startFrom" class="form-inline form-control" />
                            </div>
                            <div class="col-md-5 form-group">
                                <label for="end">End</label>
                                <input type="number" name="end" id="end" class="form-inline form-control" />
                            </div>
                            <div class="col-md-2 form-group">

                                <input type="submit" class="btn btn-success float-left" value="submit" />
                                <input type="button" class="btn btn-secondary float-left" onclick="xprint()" value="print" />
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
        {{--qr code print test--}}
        <div id="print" class="ml-5">
            @if(isset($codexs))
                @foreach($codexs as $code)
                <div style="height: 250px; width: 400px; position: relative; margin: 10px; float: left;">
                    <img src="{{ asset($code->qr_image) }}" alt="" style="height: 80px; width: 80px;position: absolute; left: 0;">
                    <div class="" style="position: absolute; top: 4px; left: 92px;">
                        <p style="margin-bottom: 3px;">relax shop Bd</p>

                        <p style="margin-bottom: 3px;">Qr code: {{ $code->code }}</p>
                    </div>
                </div>
                @endforeach
            @endif
        </div>

    </div>
@endsection
