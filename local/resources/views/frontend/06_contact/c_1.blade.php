<div id="c_1">
    <div class="container">
        <div class="col-md-12 pb-5">
            <div class="row mt-4">
                <div id="soft_1" class="col-md-8">
                    <contact-form-1></contact-form-1>
                    <vue-progress-bar></vue-progress-bar>
                </div>
                <div class="col-md-4">
                    <div class="contact_top">
                        <h3 class="title">Địa chỉ liên hệ</h3>
                        <hr>
                        <h4 class="title">{{ $listFrontendCommon['config_title'] }}</h4>
                        <ul>
                            <li>
                                <i class="far fa-building"></i> {!! $listFrontendCommon['config_address'] !!}
                            </li>
                            <li>
                                <i class="fas fa-phone"></i> {{ $listFrontendCommon['config_phone'] }}
                            </li>
                            <li>
                                <i class="far fa-envelope"></i> {{ $listFrontendCommon['config_info_email'] }}
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        {{--{!! $listFrontendCommon['map-config'] !!}--}}
    </div>
</div>
