<div id="menu_desktop" class="d-none d-md-block d-lg-block">
    <div class="on-top">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-between align-items-center">
                    <p>Email: {{$listFrontendCommon['config_info_email']}}</p>
                    <div class="d-flex align-items-center">

                        <a href="#"><i class="fab fa-facebook-square mr-2" style="font-size: 25px;color: white"></i>
                        </a>
                        <p style="font-size: 10px">Vintapro trên: <br>
                            <span style="font-size: 15px">Facebook</span></p>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="on-mid">
        <div class="container">
            <div class="row">
                <div class="col-md-12 d-flex align-items-center justify-content-between">

                    <div class="d-flex align-items-center">
                        <img src="{{URL::to($listFrontendCommon['config_logo'])}}" alt="">
                        <div class="slogan" style="color: #055f93">
                            <p class="mb-1">{{$listFrontendCommon['config_title']}}</p>
                        </div>
                    </div>

                    <div class="address d-flex align-items-center">
                        <div class="d-flex align-items-center">
                            <i class="fas fa-map-marker-alt"></i>
                            <p class="">{{$listFrontendCommon['config_address']}}</p>
                        </div>
                        <div class="ml-5 d-flex align-items-center">
                            <i class="fas fa-phone-square"></i>
                            <p style="width: fit-content">{{$listFrontendCommon['config_phone']}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="on-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-between align-items-center">
                    <ul>
                        <li><a href="#">Trang Chủ</a></li>
                        <li><a href="#">Giới Thiệu</a></li>
                        <li><a href="#">Dịch Vụ</a></li>
                        <li><a href="#">Liên Hệ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>