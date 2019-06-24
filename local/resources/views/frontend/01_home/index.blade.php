@extends('frontend.master')
@section('title')
    {{$listFrontendCommon['config_title']}}
@stop
@section('description')
    {{loai_bo_html_tag($listFrontendCommon['config_descrtiption'])}}
@stop
@section('keyword')

@stop
@section('url-og')

@stop
@section('image-og')

@stop
@section('styles')
    {{ Html::style('css/home.css') }}
@stop
@section('scripts')

@stop
@section('slider')
    @include('frontend.00_common.slider')
@stop
@section('container')
    @include('frontend.01_home.h_2')
    @include('frontend.01_home.h_1')
    @include('frontend.01_home.h_3')
    @include('frontend.01_home.h_4')
@stop