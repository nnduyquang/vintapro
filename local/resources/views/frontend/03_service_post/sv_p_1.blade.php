<div id="sv_p_1">
    <div class="breadcrumb-wrap">
        <div class="container">
            <ul class="breadcrumb-detail">
                <li><a href="{{URL::to('/')}}"><i class="fas fa-home"></i></a></li>
                <li><a href="{{URL::to('dich-vu/'.$data['category']->slug)}}">{{$data['category']->title}}</a></li>
                <li>{{$data['post']->title}}</li>
            </ul>
        </div>
    </div>
    <h1 class="title">{{$data['post']->title}}</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="content">
                    {!! $data['post']->content !!}
                </div>
                <div class="contact-post">
                    {!! $listFrontendCommon['config_describe_contact'] !!}
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</div>