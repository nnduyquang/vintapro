<div id="h_4">
    <h5>Tin Tức <span>kế toán</span></h5>
    <div class="container">
        <div class="row">
            @foreach($data['h4_news'] as $key=>$item)
                <div class="col-md-4">
                    <div class="one-item">
                        <a href="{{URL::to('tin-tuc/'.$item->slug)}}">
                            <div class="img-service">
                                <div class="img-link"
                                     style="background-image:url({{$item->img_primary}});">
                                </div>
                            </div>
                            <h3>{{$item->title}}</h3>
                            <div class="description">
                                {{$item->description}}
                            </div>
                        </a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>