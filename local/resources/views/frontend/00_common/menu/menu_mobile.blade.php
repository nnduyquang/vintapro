<div id="menu_mobile" class="d-none d-block d-sm-none">
    <header class="nav-top">
        <span class="title">{{$listFrontendCommon['config_title']}}</span>
        <span class="hamburger material-icons" id="ham"><i class="fas fa-bars"></i></span>
    </header>
    <nav class="nav-drill">
        <div class="menu_logo"><a
                    href="#">{{ HTML::image(URL::to($listFrontendCommon['config_logo']), 'logo-smartlinks', array( )) }}</a></div>
        <ul class="nav-items">
            <li class="nav-item">
                <a class="nav-link" href="{{URL::to('/')}}">
                    Trang chủ
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{URL::to('trang/gioi-thieu')}}">
                    Giới Thiệu
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{URL::to('dich-vu')}}">
                    Dịch Vụ
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{URL::to('tin-tuc')}}">
                    Tin Tức
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{URL::to('lien-he')}}">
                    Liên Hệ
                </a>
            </li>

        </ul>
        <div style="height: 100%">aaa</div>

    </nav>
</div>
<script>
    console.clear()

    const navExpand = [].slice.call(document.querySelectorAll('.nav-expand'))
    const backLink = `<li class="nav-item">
	<a class="nav-link nav-back-link" href="javascript:;">
		Back
	</a>
</li>`

    navExpand.forEach(item => {
        item.querySelector('.nav-expand-content').insertAdjacentHTML('afterbegin', backLink)
        item.querySelector('.nav-link').addEventListener('click', () => item.classList.add('active'))
        item.querySelector('.nav-back-link').addEventListener('click', () => item.classList.remove('active'))
    })


    // ---------------------------------------
    // not-so-important stuff starts here

    const ham = document.getElementById('ham')
    ham.addEventListener('click', function () {
        document.body.classList.toggle('nav-is-toggled')
    })

</script>