let mix = require('laravel-mix');
mix.setPublicPath('../');
mix.setResourceRoot('../');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/assets/js/app.js', 'js/app.js')
    .js('resources/assets/js/soft.js', 'js/soft.js')
    .styles('resources/assets/js/backend.js', '../js/backend.js')
    .js('resources/assets/js/core.common.js', '../js/core.common.js')
    .styles('resources/assets/js/module.common.js', '../js/module.common.js')
    .sass('resources/assets/sass/app.scss', 'css/app.css')
    .sass('resources/assets/sass/backend/backend.scss', 'css/backend.css').options({processCssUrls: false})
    .styles([
        'node_modules/owl.carousel/dist/owl.carousel.min.js',
    ], '../js/core.home.js')
    .styles('resources/assets/js/home/home.js', '../js/home.js')

//CSS FRONTEND
    //COMMON
    .sass('resources/assets/sass/frontend/common/common.scss', '../css/common.css').options({processCssUrls: false})
    .styles([
        'node_modules/owl.carousel/dist/assets/owl.carousel.css',
        'node_modules/owl.carousel/dist/assets/owl.theme.default.css',
        // 'bower_components/animate.css/animate.min.css',
    ], '../css/core.home.css')
//HOME
    .sass('resources/assets/sass/frontend/home/home.scss', '../css/home.css').options({processCssUrls: false})

//SERVICE DETAIL
    .sass('resources/assets/sass/frontend/service_detail/service_detail.scss', '../css/service_detail.css').options({processCssUrls: false})

//SERVICE POST
    .sass('resources/assets/sass/frontend/service_post/service_post.scss', '../css/service_post.css').options({processCssUrls: false})

//NEWS DETAIL
    .sass('resources/assets/sass/frontend/news_detail/news_detail.scss', '../css/news_detail.css').options({processCssUrls: false})

//CONTACT
    .sass('resources/assets/sass/frontend/contact/contact.scss', '../css/contact.css').options({processCssUrls: false})

//PAGE
    .sass('resources/assets/sass/frontend/page/page.scss', '../css/page.css').options({processCssUrls: false})

//SERVICE
    .sass('resources/assets/sass/frontend/service/service.scss', '../css/service.css').options({processCssUrls: false})

//SERVICE
    .sass('resources/assets/sass/frontend/news/news.scss', '../css/news.css').options({processCssUrls: false})