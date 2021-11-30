<!-- modal area start-->
<div class="modal fade" id="modal_box" tabindex="-1" role="dialog"  aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal_body">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-sm-12">
                            <div class="modal_tab">
                                <div class="tab-content product-details-large" id="big">
                                    <div class="tab-pane fade show  active" id="tab1" role="tabpanel" >
                                        <div class="modal_tab_img">
                                            <a href="">
                                                <img src="" alt="" id="proImg">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <style>
                                    #small>li>a>img {
                                        height: 70px;
                                        /*width: 25%;*/
                                        width: 85px;
                                    }
                                </style>
                                <div class="modal_tab_button" >
                                    <ul class="nav " role="tablist"  id="small" >
                                        <li>
                                            <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false">
                                                <img src="{{asset('/')}}front/assets/img/product/productbig1.jpg" alt="">
                                            </a>
                                        </li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7 col-sm-12">
                            <div class="modal_right">
                                <div class="modal_title mb-10">
                                    <h2 id="modalName"  class="my-1">Handbag feugiat</h2>
                                </div>
                                <div class="modal_price mb-10">
                                    <span class="new_price" id="modalPrice">$64.99</span>
                                    {{--<span class="old_price" >$78.99</span>--}}
                                </div>
                                <div class="modal_description mb-15">
                                    <p id="modalDes" class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam, reiciendis maiores quidem aperiam, rerum vel recusandae </p>
                                </div>
                                <div class="variants_selects">

                                    <form action="" method="post" id="modalForm">
                                        <div class="variants_size">
                                            <h2>size</h2>
                                            <select class="form-control my-2" id="modalSizex">
                                                <option selected value="1">s</option>
                                                <option value="1">m</option>
                                            </select>
                                        </div>
                                        <div class="variants_color">
                                            <h2>color</h2>
                                            <select class="form-control my-2" id="modalColorx">
                                                <option selected value="1">purple</option>
                                                <option value="1">violet</option>
                                            </select>
                                        </div>
                                        <div class="modal_add_to_cart">
                                            <input type="hidden" id="productId" value="">
                                            <h2 class="f-s-16 font-weight-bold">Quantity</h2>
                                            <input min="1" max="100000" {{--step="2"--}} id="qty" value="1" class="form-control" name="qty" type="number">
                                            <button type="submit" id="modalButton" class="btn btn-success btn-block mt-3 text-capitalize">add to cart</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- modal area end-->
