<!DOCTYPE html>
<meta http-equiv="X-UA-Compatible" content="IE=9; IE=EDGE" />
<html class="no-js" lang="vi" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Công ty Cổ phần Kỹ Thuật – Xây dựng và Công nghệ CETEC</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="icon" href="{{ theme_path }}/assets/img/favicon.png">

    <!-- CSS
   ============================================ -->

     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/vendor/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/vendor/font-awesome.min.css">

    <!-- Material design iconic font CSS -->
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/vendor/material-design-iconic-font.min.css">

    <!-- Ionicons CSS -->
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/vendor/ionicons.min.css">

    <!-- Flaticon CSS -->
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/vendor/flaticon.min.css">

    <!-- Swiper slider CSS -->
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/plugins/swiper.min.css">

    <!-- Animate CSS -->
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/plugins/animate.min.css">

    <!-- Light gallery CSS -->
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/plugins/lightgallery.min.css">


    <!-- Main Style CSS -->
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/style.css?refresh=201909240905">


</head>

<body>
    {{ partial('partials/header') }}
    <!-- -->

     {% block content %}

     {% endblock %}
        
    <!-- -->
    {{  partial('partials/footer') }}

    {{ widget_js }}
   
</body>
</html>
