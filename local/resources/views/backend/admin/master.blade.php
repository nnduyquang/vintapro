<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Smartlinks | Quản Trị</title>

    <link rel="stylesheet" href="{{URL::to('css/app.css')}}">
    <link rel="stylesheet" href="{{URL::to('css/backend.css')}}">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper" id="app">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
            </li>
        </ul>

        <!-- SEARCH FORM -->

        <div class="input-group input-group-sm">
            <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
            <div class="input-group-append">
                <button class="btn btn-navbar" @click.prevent="searchit">
                    <i class="fa fa-search"></i>
                </button>
            </div>
        </div>


    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="index3.html" class="brand-link">
            <img src="{{URL::to('img/backend/icon/logo.png')}}" alt="AdminLTE Logo"
                 class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light">Administrator</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="{{URL::to('img/backend/icon/profile.png')}}" class="img-circle elevation-2"
                         alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">
                        {{Auth::user()->name}}
                        <p>{{Auth::user()->type}}</p>
                    </a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                    data-accordion="false">
                    <li class="nav-item">
                        <a href="{{route('dashboard')}}" class="nav-link">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Dashboard
                            </p>
                        </a>
                    </li>
                    {{--@can('isAdmin')--}}
                        {{--<li class="nav-item has-treeview {{set_open_is_open_menu('user')}}">--}}
                            {{--<a href="#" class="nav-link">--}}
                                {{--<i class="nav-icon fas fa-cog"></i>--}}
                                {{--<p>--}}
                                    {{--Management--}}
                                    {{--<i class="right fas fa-angle-left"></i>--}}
                                {{--</p>--}}
                            {{--</a>--}}
                            {{--<ul class="nav nav-treeview" style="display:{{set_open_active_child_menu('user')}};">--}}
                                {{--<li class="nav-item">--}}
                                    {{--<a  href="{{route('user.active')}}" class="nav-link {{ set_active('user') }}">--}}
                                        {{--<i class="fas fa-user nav-icon"></i>--}}
                                        {{--<p>Users</p>--}}
                                    {{--</a>--}}
                                {{--</li>--}}
                                {{--<li class="nav-item">--}}
                                    {{--<a href="#" class="nav-link">--}}
                                        {{--<i class="fa fa-circle-o nav-icon"></i>--}}
                                        {{--<p>Inactive Page</p>--}}
                                    {{--</a>--}}
                                {{--</li>--}}
                            {{--</ul>--}}
                        {{--</li>--}}
                    {{--@endcan--}}
                    <li class="nav-item has-treeview {{set_open_is_open_menu(['category-post','category-product'])}}">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-book"></i>
                            <p>
                                Danh Mục
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview" style="display:{{set_open_active_child_menu(['category-post','category-product'])}};">
                            <li class="pl-5 nav-item">
                                <a  href="{{route('category-post')}}" class="nav-link {{ set_active('category-post') }}">
                                    <i class="fas fa-server nav-icon"></i>
                                    <p>Bài Viết</p>
                                </a>
                            </li>
                            <li class="pl-5 nav-item">
                                <a href="{{route('category-product')}}" class="nav-link {{ set_active('category-product')}}">
                                    <i class="fas fa-boxes nav-icon"></i>
                                    <p>Sản Phẩm</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    {{--<li class="nav-item">--}}
                        {{--<a  href="{{route('category-post')}}" class="nav-link {{ set_active('category-post') }}">--}}
                            {{--<i class="nav-icon fas fas fa-book"></i>--}}
                            {{--<p>--}}
                                {{--Danh Mục Bài Viết--}}
                            {{--</p>--}}
                        {{--</a>--}}
                    {{--</li>--}}
                    <li class="nav-item">
                        <a  href="{{route('user.active')}}" class="nav-link {{ set_active('user') }}">
                            <i class="nav-icon fas fa-user"></i>
                            <p>
                                Người Dùng
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a  href="{{route('post')}}" class="nav-link {{ set_active('post') }}">
                            <i class="nav-icon fas fa-newspaper"></i>
                            <p>
                                Quản Lý Bài Viết
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a  href="{{route('product')}}" class="nav-link {{ set_active('product') }}">
                            <i class="nav-icon fas fa-cubes"></i>
                            <p>
                                Quản Lý Sản Phẩm
                            </p>
                        </a>
                    </li>
                    {{--<li class="nav-item">--}}
                    {{--<router-link to="{{get_base_url()}}/category-test" class="nav-link">--}}
                    {{--<i class="nav-icon fas fas fa-book"></i>--}}
                    {{--<p>--}}
                    {{--Danh Mục Bài Viết 2--}}
                    {{--</p>--}}
                    {{--</router-link>--}}
                    {{--</li>--}}
                    {{--@can('isAdmin')--}}
                    <li class="nav-item">
                        <a  href="{{route('config')}}" class="nav-link {{ set_active('config') }}">
                            <i class="nav-icon fas fa-cubes"></i>
                            <p>
                                Cấu Hình
                            </p>
                        </a>
                    </li>
                    {{--@endcan--}}
                    {{--<li class="nav-item">--}}
                        {{--<a  href="#" class="nav-link">--}}
                            {{--<i class="nav-icon fas fa-user"></i>--}}
                            {{--<p>--}}
                                {{--Profile--}}
                            {{--</p>--}}
                        {{--</a>--}}
                    {{--</li>--}}
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                            <i class="nav-icon fas fa-power-off"></i>
                            <p>
                                Đăng Xuất
                            </p>
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </li>

                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">


        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
                @yield('container')
                <vue-progress-bar></vue-progress-bar>
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
        <div class="p-3">
            <h5>Title</h5>
            <p>Sidebar content</p>
        </div>
    </aside>
    <!-- /.control-sidebar -->

    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="float-right d-none d-sm-inline">
            Điện Thoại Hỗ Trợ: (028) 66.83.00.91
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2019 <a href="https://smartlinks.vn">Smartlinks.vn</a>.</strong> All rights reserved.
    </footer>
</div>
<!-- ./wrapper -->
{{--@auth--}}
    {{--<script>--}}
        {{--window.user =@json(auth()->user())--}}
    {{--</script>--}}
{{--@endauth--}}
{{ Html::script('js/ckeditor/ckeditor.js') }}
<script src="{{URL::to("js/app.js")}}"></script>
{{ Html::script('js/backend.js') }}

</body>
</html>
