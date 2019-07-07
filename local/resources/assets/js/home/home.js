var pluginHomes = {
    h5OwlCarousel: $('#h_5 #owl-project'),
};
$(document).ready(function () {
    function runH5OwlCarousel() {
        pluginHomes.h5OwlCarousel.owlCarousel({
            loop: true,
            margin: 10,
            nav: false,
            dots: false,
            autoplay:true,
            autoplayTimeout:3000,
            autoplayHoverPause:true,
            responsive: {
                0: {
                    items: 3
                },
                600: {
                    items: 4
                },
                1000: {
                    items: 4
                }
            }
        });
        var owl = $('#owl-project');

        $('.btn_next').click(function () {
            owl.trigger('next.owl.carousel');
        })
        $('.btn_pre').click(function () {
            owl.trigger('prev.owl.carousel', [300]);
        })
    }
    runH5OwlCarousel();
});