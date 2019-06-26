@extends('frontend.master')
@section('title')
    Liên Hệ
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
    {{ Html::style('css/contact.css') }}
@stop
@section('scripts')
    {{ Html::script('js/soft.js') }}
@stop
@section('slider')
    @include('frontend.00_common.slider')
@stop
@section('container')
    @include('frontend.06_contact.c_1')
@stop