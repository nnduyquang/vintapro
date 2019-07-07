@extends('frontend.master')
@section('title')
    {{$data['post']->seos->seo_title}}
@stop
@section('description')
    {{loai_bo_html_tag($data['post']->seos->seo_description)}}
@stop
@section('keyword')
    {{$data['post']->seos->seo_keyword}}
@stop
@section('url-og')

@stop
@section('image-og')
    {{URL::to($data['post']->seos->seo_image)}}
@stop
@section('styles')
    {{ Html::style('css/service_post.css') }}
@stop
@section('scripts')

@stop
@section('slider')
    {{--@include('frontend.00_common.slider')--}}
@stop
@section('container')
    @include('frontend.03_service_post.sv_p_1')
@stop