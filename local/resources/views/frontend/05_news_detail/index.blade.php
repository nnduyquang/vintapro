@extends('frontend.master')
@section('title')
    {{$data['post']->title}}
@stop
@section('description')
    {{loai_bo_html_tag($data['post']->description)}}
@stop
@section('keyword')

@stop
@section('url-og')

@stop
@section('image-og')

@stop
@section('styles')
    {{ Html::style('css/news_detail.css') }}
@stop
@section('scripts')

@stop
@section('slider')
    @include('frontend.00_common.slider')
@stop
@section('container')
    @include('frontend.05_news_detail.n_d_1')
@stop