<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Cinema</title>
</head>
<body>
<h1>Les films en tendances</h1>
<ul>
    @foreach($films as $film)
        <li><a href="{{ $film['id'] }}"> {{ $film['title'] }} <a></li>
    @endforeach
</ul>
</body>
</html>