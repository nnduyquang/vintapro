<div id="sv_d_1">
    <h1 class="title p-3">{{$data['category']->title}}</h1>
    <div class="group-info">
        <div class="container">
            <div class="row equal">
                @foreach($data['posts'] as$key=>$item)
                    <div class="col-md-6 mb-3">
                        <div class="one-item">
                            <a href="{{URL::to('dich-vu/'.$data['category']->slug.'/'.$item->slug)}}">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="img-post">
                                            <div class="img-link"
                                                 style="background-image:url({{URL::to($item->img_primary)}});">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8 pl-md-0">
                                        <h3>{{$item->title}}</h3>
                                        <div class="description">
                                            {{$item->description}}
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>