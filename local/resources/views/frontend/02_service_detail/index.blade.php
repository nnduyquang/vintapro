@extends('frontend.master')
@section('title')
{{$data['category']->title}}
@stop
@section('description')
{{$data['category']->description}}
@stop
@section('keyword')

@stop
@section('url-og')

@stop
@section('image-og')

@stop
@section('styles')
    {{ Html::style('css/service_detail.css') }}
@stop
@section('scripts')

@stop
@section('slider')
    @include('frontend.00_common.slider')
@stop
@section('container')
    @include('frontend.02_service_detail.sv_d_1')

@stop