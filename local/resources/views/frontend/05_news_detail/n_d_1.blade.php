<div id="n_d_1">
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