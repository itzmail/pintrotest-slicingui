<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="{{ asset('fontawsome/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset("css/app.css") }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <title>Registrasi</title>
</head>
<body class="p-3 ">
    <div class="container-fluid d-flex flex-row align-items-center sticky-top bg-white py-2">
        @if(View::hasSection('can-go-back') && View::getSection('can-go-back'))
            <a href="@yield('back-url', '#')" class="@yield('icon-nav', 'fas fa-arrow-left fa-lg') text-decoration-none text-reset"></a>
        @else
            <a href="" class="@yield('icon-nav', 'fas fa-xmark fa-lg') text-decoration-none text-reset"></a>
        @endif
        <span class="ms-3 fs-5 fw-bold">@yield('nav-title', 'Screen')</span>
    </div>
    @yield('content')
</body>
</html>