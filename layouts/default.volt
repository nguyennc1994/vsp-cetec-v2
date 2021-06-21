<!DOCTYPE html>
<!--[if IE 9]>
<html class="ie ie9" lang="en-US">
<![endif]-->
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>Công ty Cổ phần Kỹ Thuật – Xây dựng và Công nghệ CETEC</title>
    <link rel="icon" href="{{ theme_path }}/assets/images/favicon.png">
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>


    <link rel="stylesheet" href="{{ theme_path }}/assets/css/bootstrap.css">
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/animate.css">
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/flexslider.css">
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/jquery-ui.css">
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/simple-line-icons.css">
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/icon-font.css">
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/flat-icon.css">
    <link rel="stylesheet" href="{{ theme_path }}/assets/css/innovation.css">

    <link rel="stylesheet" href="{{ theme_path }}/assets/rs-plugin/css/settings.css">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div class="sidebar-menu-container" id="sidebar-menu-container">

    <div class="sidebar-menu-push">

        <div class="sidebar-menu-overlay"></div>
        <div class="sidebar-menu-inner">
            {{ partial('partials/header') }}
            <!-- -->

            {% block content %}

            {% endblock %}

            <!-- -->
            {{ partial('partials/footer') }}
        </div>
    </div>
    {{ partial('partials/sub-footer') }}
</div>
{{ widget_js }}

</body>
<script type="text/javascript" src="{{ theme_path }}/assets/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="{{ theme_path }}/assets/js/bootstrap.min.js"></script>
<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script src="{{ theme_path }}/assets/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="{{ theme_path }}/assets/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

<script type="text/javascript" src="{{ theme_path }}/assets/js/plugins.js"></script>
<script type="text/javascript" src="{{ theme_path }}/assets/js/custom.js"></script>
</html>
