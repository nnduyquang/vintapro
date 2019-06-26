<div id="p_1">
    <div class="container">
        <div class="row mt-4">
            <div class="col-md-9">
                <div class="info">
                    <div class="title">
                        <h1>{{$data['post']->title}}</h1>
                        <span>Ngày Đăng: {{$data['post']->created_at}}</span>
                    </div>
                    <div class="content">
                        {!! $data['post']->content !!}
                    </div>
                    {{--<div class="contact-post">--}}
                        {{--{!! $listFrontendCommon['config_describe_contact'] !!}--}}
                    {{--</div>--}}
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