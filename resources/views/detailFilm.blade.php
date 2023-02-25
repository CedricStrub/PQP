@extends('layout')



<div class="bg"><img src="https://image.tmdb.org/t/p/w500{{$film['poster_path']}}"></img></div>

<div id="wrapper">
@section('content')
    <div class="title">{{ $film['title'] }}</div>
    <div class="container">
        <div class="ctn-img"><img src="https://image.tmdb.org/t/p/w500{{$film['poster_path']}}"></img></div>
        <div class="info">
            <div class="cat">Runtime :</div>
            <div class="txt">{{ $film['runtime'] }} min</div>
            <div class="cat">Release Date :</div>
            <div class="txt">{{ $film['release_date'] }}</div>
            <div class="cat">Synopsis :</div>
            <div class="txt">{{ $film['overview'] }}</div>
        </div>
    </div>
</div>

@stop
