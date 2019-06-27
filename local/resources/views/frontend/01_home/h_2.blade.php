<div id="h_2">
    <h5>Vì Sao Chọn <span>vintapro</span></h5>
    <div class="container">
        <div class="row">
            <div class="col-md-6 description">
                <h4>{{$listFrontendCommon['config_title']}}</h4>
                <br>
                <p class="text-justify">{{$data['h2_introduce']->description}}</p>
                <br>

                <br>

                <div class="mt-3 mb-4">
                    <a class="btn-xemthem" href="{{URL::to('trang/gioi-thieu')}}">XEM THÊM</a>
                </div>

            </div>
            <div class="col-md-6 image-content">
                <div class="row">
                    @php
                        $subImage=json_decode($data['h2_introduce']->img_sub_list);
                    @endphp
                    @foreach($subImage as $key=>$item)
                    <div class="col-md-4 col-6 p-0">
                        <img src="{{URL::to($item->path)}}" alt="">
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</div>