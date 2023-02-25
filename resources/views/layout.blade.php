<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <title>Cinema</title>
</head>
<body>

@if (Route::has('login'))
    <div class="sm:fixed sm:top-0 sm:right-0 p-6 text-right">
        @auth
            <a href="{{ url('/dashboard') }}" class="">Dashboard</a>
        @else
            <a href="{{ route('login') }}" class="">Log in</a>

            @if (Route::has('register'))
                <a href="{{ route('register') }}" class="">Register</a>
            @endif
        @endauth
    </div>
@endif

@yield('content')

</body>
</html>






