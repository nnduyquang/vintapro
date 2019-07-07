<div id="h_5">
    <h5>Đối Tác</h5>
    <div class="container">
        <div class="row">
            <div id="owl-project" class="owl-carousel owl-theme">
                @foreach($data['h5_partner'] as $key=>$item)

                    <div class="project-items text-center wow fadeIn">
                        <div class="employee">
                            <div class="img-emp" style="background-image:url({{URL::to($item->img_primary)}});">

                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>