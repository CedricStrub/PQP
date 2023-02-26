@extends('layout')

<link rel="stylesheet" href="{{ asset('css/styleHome.css') }}">

<div class="bg"><img src="https://image.tmdb.org/t/p/w500{{$films[4]['poster_path']}}"></img></div>

<div id="wrapper">
@section('content')
    <div class='title'>Les films en tendances</div>
</ul>
</nav>
<div class="ctn-carte">
    @foreach($films as $film)
    <a href="/film/{{ $film['id'] }}">
        <div class='carte'>
        <img src="https://image.tmdb.org/t/p/w500{{$film['poster_path']}}"></img>
            <div class="txt">{{ $film['title'] }}</div> 
        </div>
    </a>
    @endforeach
</div>
</div>

@stop