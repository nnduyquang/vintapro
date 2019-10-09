<div id="n_1">
    <h1 class="title p-3">Tin Tức Kế Toán</h1>
    <div class="container">
        <div class="row">
            <div id="main-contain" class="col-md-9">
                <div class="row mt-3">
                    @if(count($data['posts'])!=0)
                        @php($count=0)
                        <div class="main-blog col-md-6">
                            @foreach($data['posts'] as $key=>$item)
                                @if($count==0)
                                    <a href="{{URL::to('tin-tuc/'.$item->slug)}}">{{Html::image($item->img_primary,'',array())}}</a>
                                    <h3><a href="{{URL::to('tin-tuc/'.$item->slug)}}">{{$item->title}}</a></h3>
                                    <p>{{loai_bo_html_tag($item->description)}}</p>
                                    @php($count++)
                                    @break
                                @endif
                            @endforeach
                        </div>
                        <div class="sub-blog col-md-6">
                            @foreach($data['posts'] as $key=>$item)
                                @if($key>=$count&&$key<5)
                                    <div class="mb-3 pb-3 d-flex align-items-center border-bottom border-light">
                                        <div class="pr-2 float-left">
                                            <a href="{{URL::to('tin-tuc/'.$item->slug)}}">
                                                <div class="img-sub-blogs"
                                                     style="background-image:url({{URL::to($item->img_primary)}});">

                                                </div>
                                            </a>
                                        </div>
                                        <p><a href="{{URL::to('tin-tuc/'.$item->slug)}}">{{$item->title}}</a>
                                        </p>
                                    </div>
                                    @php($count++)
                                @endif
                            @endforeach
                        </div>
                        <div class="detail-blog col-12">
                            @foreach($data['posts'] as $key=>$item)
                                @if($key>=$count)
                                    <div class="one-item mb-3 pb-3 d-flex  flex-md-row flex-column align-items-center border-bottom border-light">
                                        <a href="{{URL::to('tin-tuc/'.$item->slug)}}">
                                            <div class="img-detail-blogs"
                                                 style="background-image:url({{URL::to($item->img_primary)}});"></div>
                                        </a>
                                        <div>
                                            <h4><a href="{{URL::to('tin-tuc/'.$item->slug)}}">{{$item->title}}</a></h4>
                                            <p class="time">
                                                <span>Tin tức</span> - {{$item->created_at}}
                                            </p>
                                            <p class="description">
                                                {{loai_bo_html_tag($item->description)}}
                                            </p>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    @else
                        <div class="no-content">Tin tức chưa được cập nhật</div>
                    @endif
                </div>
            </div>
            <div class="col-md-3 sidebar-right">
                <div class="sidebar-one-item">
                    <h3 class="sidebar-title">
                        Dịch vụ của chúng tôi
                    </h3>
                    <ul>
                        @foreach($data['categories'] as $key=>$item)
                            <li><a href="{{URL::to('dich-vu/'.$item->slug)}}">
                                    {{$item->title}}
                                </a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>