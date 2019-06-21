<div id="h_1">
    <h5>các dịch vụ của <span>chúng tôi</span></h5>
    <div class="container">
        <div class="row row-flex">
            @foreach($data['h1_categories'] as $key=>$item)
            <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="one-item">
                    <a href="{{URL::to('dich-vu/'.$item->slug)}}">
                        <div class="img-service">
                            <div class="img-link"
                                 style="background-image:url({{$item->img_primary}});">
                            </div>
                        </div>
                        <h3>{{$item->title}}</h3>
                    </a>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</div>