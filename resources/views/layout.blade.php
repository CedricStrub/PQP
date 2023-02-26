<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cinema</title>
</head>
<body>

<nav>
    <ul>
    <li><a href="{{ url('/') }}" class="left">Home</a></li>
@if (Route::has('login'))
    <div class="sm:fixed sm:top-0 sm:right-0 p-6 text-right">
        @auth
            <li><a href="{{ url('/dashboard') }}" class="right">Dashboard</a></li>
        @else
            <li><a href="{{ route('login') }}" class="right">Log in</a></li>

            @if (Route::has('register'))
                <li><a href="{{ route('register') }}" class="right">Register</a></li>
            @endif
        @endauth
    </div>
@endif

@yield('content')

</body>
</html>






