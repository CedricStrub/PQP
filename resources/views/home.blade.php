@extends('layout')

@section('content')

<h1>Les films en tendances</h1>
<ul>
    @foreach($films as $film)
        <li><a href="/film/{{ $film['id'] }}"> {{ $film['title'] }} <a></li>
    @endforeach
</ul>

@stop