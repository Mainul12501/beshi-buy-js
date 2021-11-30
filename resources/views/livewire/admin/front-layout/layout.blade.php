<div>
    {{-- In work, do what you enjoy. --}}
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

    <div class="table-responsive " id="" >
        <a href="" wire:click.prevent="refresh()" class="btn btn-outline-info float-right mod mx-2 mb-4" id="catMod">Refresh Serial</a>

        <table class="table table-bordered" id="file_export">
            <thead>
            <tr>
                <th>#</th>
                <th>Category Id</th>
                <th>Sub-cat</th>
                <th>Layout Type</th>
                <th>Ads Type</th>
                <th>Ads layout</th>
                <th>Serial</th>
                <th>Cat Status</th>
                <th>Action</th>
            </tr>
            </thead>
            @php($i=1)
            <tbody id="expCatTab">
                @foreach($layouts as $layout)
                    <tr>
                        <td>{{ $i++ }}</td>
                        <td>{{ $layout->category->name }}</td>
                        <td>
                            <?php
                                $subs   = \App\Models\SubCategory::where('category_id', $layout->category_id)->get();
                            ?>
                            {{ count($subs) != 0 ? 'Yes' : 'No' }} - qty ({{ count($subs) }})
                        </td>
                        <td>

                            <select name="" wire:change="$emit('edit',$event.target.value, {{ $layout->id }})" id="" class="form-control">
                                <option value="">Select Layout Type</option>
                                <option value="1" {{ $layout->layout_type == 1 ? 'selected' : ''}}>Inline Button Slider</option>
                                <option value="2" {{ $layout->layout_type == 2 ? 'selected' : ''}}>Slider+Button Up</option>
                                <option value="3" {{ $layout->layout_type == 3 ? 'selected' : ''}} {{ count($subs) == 0 ? 'disabled' : ''}}>Sub-Menu+Slider+Nav</option>
                            </select>
                        </td>
                        <td>

                            <select name="" wire:change="$emit('editAdsType',$event.target.value, {{ $layout->id }})" id="" class="form-control">
                                <option value="">Select Ads Type</option>
                                <option value="0" {{ $layout->ads_type == 0 ? 'selected' : ''}}>No Ads</option>
                                <option value="0" {{ $layout->ads_type == 1 ? 'selected' : ''}}>Category Wise</option>
                                <option value="1" {{ $layout->ads_type == 2 ? 'selected' : ''}}>Random</option>
                            </select>
                        </td>
                        <td>

                            <select name="" wire:change="$emit('editAdsLayout',$event.target.value, {{ $layout->id }})" id="" class="form-control">
                                <option value="">Select Layout Type</option>
                                <option value="1" {{ $layout->layout_type == 1 ? 'selected' : ''}}>1 Ads (Col 12)</option>
                                <option value="2" {{ $layout->layout_type == 2 ? 'selected' : ''}}>2 Ads (Col 6)</option>
                                <option value="2" {{ $layout->layout_type == 3 ? 'selected' : ''}}>3 Ads (Col 4)</option>
                                <option value="2" {{ $layout->layout_type == 4 ? 'selected' : ''}}>4 Ads (Col 3)</option>
                            </select>
                        </td>

                        <td>{{ $layout->serial }}</td>
                        <td>{{ $layout->cat_status == 1 ? 'Published' : 'Unpublished' }}</td>
                        <td>
                            <a href="" wire:click.prevent="serialUp({{ $layout->id }})" title="Up" class="btn btn-sm btn-primary"><i class="fas fa-arrow-up"></i></a>
                            <a href="" wire:click.prevent="serialDown({{ $layout->id }})" title="Down" class="btn btn-sm btn-light"><i class="fas fa-arrow-down"></i></a>
                            <a href="" wire:click.prevent="catPublications({{ $layout->id }})" title="{{ $layout->category->status == 1 ? 'Unpublish?' : 'Publish?' }}" class="btn btn-sm btn-{{ $layout->category->status == 1 ? 'success' : 'danger' }}"><i class="fas fa-arrows-alt-h"></i></a>
{{--                            <a href="" wire:click.prevent="catPublications({{ $layout->category_id }})" title="{{ $layout->category->status == 1 ? 'Unpublish?' : 'Publish?' }}" class="btn btn-sm btn-{{ $layout->category->status == 1 ? 'success' : 'danger' }}"><i class="fas fa-arrows-alt-h"></i></a>--}}
                            <a href="" wire:click.prevent="del({{ $layout->id }})" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
