<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="{{ asset('fontawsome/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <style>
        html,
        body,
        div,
        span,
        applet,
        object,
        iframe,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p,
        blockquote,
        pre,
        a,
        abbr,
        acronym,
        address,
        big,
        cite,
        code,
        del,
        dfn,
        em,
        img,
        ins,
        kbd,
        q,
        s,
        samp,
        small,
        strike,
        strong,
        sub,
        sup,
        tt,
        var,
        b,
        u,
        i,
        center,
        dl,
        dt,
        dd,
        ol,
        ul,
        li,
        fieldset,
        form,
        label,
        legend,
        table,
        caption,
        tbody,
        tfoot,
        thead,
        tr,
        th,
        td,
        article,
        aside,
        canvas,
        details,
        embed,
        figure,
        figcaption,
        footer,
        header,
        hgroup,
        menu,
        nav,
        output,
        ruby,
        section,
        summary,
        time,
        mark,
        audio,
        video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
            font-family: 'Poppins', sans-serif;
            line-height: 1.5;
        }

        body {
            width: 100%;
            /* max-width: 480px; */
            margin: 0 auto;
            padding: 10px;
        }

        /* HTML5 display-role reset for older browsers */
        article,
        aside,
        details,
        figcaption,
        figure,
        footer,
        header,
        hgroup,
        menu,
        nav,
        section {
            display: block;
        }

        body {
            line-height: 1;
        }

        ol,
        ul {
            list-style: none;
        }

        blockquote,
        q {
            quotes: none;
        }

        blockquote:before,
        blockquote:after,
        q:before,
        q:after {
            content: '';
            content: none;
        }

        table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        .header {
            font-size: 24px;
            text-align: center;
        }

        .content {
            font-size: 16px;
        }

        .container-navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 20px;
            background-color: red;
        }

        .ic-wavehand {
            width: 40px;
            height: auto;
        }

        .ic-icon {
            width: 40px;
            height: auto;
        }

        .box-jadwal-seleksi {
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 20px 20px;
            background-color: #1B50D8;
            margin-top: 20px;
            border-radius: 1.2em;
        }

        .card-outline {
            border-radius: 20px;
            padding: 15px;
        }

        .card-outline-document {
            border-radius: 20px;
        }

        .card-upload {
            background-color: #F6F8FF;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
        }

        .stepper-container {
            padding: 20px;
            background: white;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
        }

        .stepper-wrapper {
            position: relative;
        }

        .stepper-item {
            display: flex;
            align-items: flex-start;
            padding: 20px 0;
            position: relative;
        }

        .stepper-item:not(:last-child)::before {
            content: '';
            position: absolute;
            left: 15px;
            top: 40px;
            bottom: 0;
            width: 2px;
            background: #e9ecef;
            z-index: 1;
        }

        .stepper-item.completed:not(:last-child)::before {
            background: #0055FF;
        }

        .stepper-circle-wrapper {
            position: relative;
            margin-right: 15px;
            flex-shrink: 0;
            z-index: 2;
        }

        .stepper-circle {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background: #e9ecef;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            z-index: 3;
        }

        .stepper-circle.active {
            background: #0055FF;
            color: white;
        }

        .stepper-circle.completed {
            background: #0055FF;
            color: white;
        }

        /* Outline effect for active step */
        .stepper-circle-wrapper.active::after {
            content: '';
            position: absolute;
            top: -6px;
            left: -6px;
            right: -6px;
            bottom: -6px;
            border: 2px solid #0055FF;
            border-radius: 50%;
            z-index: 2;
        }

        .stepper-content {
            padding-block: 0px 20px;
            flex-grow: 1;
            border-bottom: 1px solid rgb(188, 188, 188);
        }

        .stepper-content.last {
            padding-block: 0px 20px;
            flex-grow: 1;
            border-bottom: 0px;
        }

        .stepper-title {
            margin: 0;
            font-size: 1rem;
            font-weight: 500;
            color: #212529;
        }

        .stepper-item.completed .stepper-title {
            color: #0055FF;
            font-weight: 600;
        }

        .stepper-item.active .stepper-title {
            color: #0055FF;
            font-weight: 600;
        }

        .stepper-item.disabled .stepper-title {
            color: #6c757d;
            font-weight: 400;
        }

        .text-description {
            margin: 0;
            font-size: 0.8rem;
            color: #6c757d;
        }
    </style>
    <title>Registrasi</title>
</head>

<body class="p-3 ">
    <div class="container-fluid d-flex flex-row align-items-center sticky-top bg-white py-2">
        @if (View::hasSection('can-go-back') && View::getSection('can-go-back'))
            <a href="@yield('back-url', '#')" class="@yield('icon-nav', 'fas fa-arrow-left fa-lg') text-decoration-none text-reset"></a>
        @else
            <a href="" class="@yield('icon-nav', 'fas fa-xmark fa-lg') text-decoration-none text-reset"></a>
        @endif
        <span class="ms-3 fs-5 fw-bold">@yield('nav-title', 'Screen')</span>
    </div>
    @yield('content')
</body>

</html>
