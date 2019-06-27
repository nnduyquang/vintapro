@extends('frontend.master')
@section('title')
   Tin Tức Kế Toán
@stop
@section('description')

@stop
@section('keyword')

@stop
@section('url-og')

@stop
@section('image-og')

@stop
@section('styles')
    {{ Html::style('css/news.css') }}
@stop
@section('scripts')

@stop
@section('slider')
    @include('frontend.00_common.slider')
@stop
@section('container')
    @include('frontend.04_news.n_1')
@stop