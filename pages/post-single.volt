{% extends 'layouts/default.volt' %}
{% block content %}
    {% if post.catalog.category[0] ==42 %}
    <!--====================  breadcrumb area ====================-->
    <div class="breadcrumb-area bg-img" data-bg="{{ theme_path }}/assets/img/backgrounds/funfact-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="page-banner text-center">
                        <h1>Giới thiệu</h1>
                        <ul class="page-breadcrumb">
                            <li><a href="/">Trang chủ</a></li>
                            <li><a href="/{{ language }}/c/category-4/congtrinh-p1.html">Giới thiệu</a></li>
                            <li>{{ post.data.title | getAttribute(language) }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of breadcrumb area  ====================-->
    <div class="page-wrapper section-space--inner--120">
        <!--Projects section start-->
        <div class="project-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-12 section-space--bottom--30">
                        <div class="sidebar">

                            {{ render_widget('post-listing',['catalog':'category','category':[42],'limit':10],['viewsDir': widgets_volt,'view':'list-gioithieu']) }}

                        </div>

                    </div>
                    <div class="col-lg-8 col-12 section-space--bottom--30 pl-30 pl-sm-15 pl-xs-15">
                        <div class="project-details">
                            <h2>{{ post.data.title | getAttribute(language) }}</h2>
                            <div class="benefit-content">
                                <ul>
                                    <li><i class="fa fa-eye" aria-hidden="true"></i>
                                        <small>{{ stat.data.views }}</small></li>
                                    <li><i class="fa fa-thumbs-o-up" aria-hidden="true" data-id="7390"></i> <small
                                                class="c_like">{{ stat.data.likes }}</small></li>
                                    <li>
                                        <script type="text/javascript"
                                                src="http://s7.addthis.com/js/300/addthis_widget.js"></script>
                                        <div class="d_inline_middle m_left_5 addthis_widget_container">
                                            <!-- AddThis Button BEGIN -->
                                            <div class="addthis_toolbox addthis_default_style addthis_16x16_style">
                                                <a class="addthis_button_preferred_1"></a>
                                                <a class="addthis_button_preferred_2"></a>
                                                <a class="addthis_button_preferred_3"></a>
                                                <a class="addthis_button_preferred_4"></a>
                                                <a class="addthis_button_compact"></a>
                                                <a class="addthis_counter addthis_bubble_style"></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <p>{{ post.data.detail | getAttribute(language) }}</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--Projects section end-->
    </div>
    {% else %}
    <div class="breadcrumb-area bg-img" data-bg="{{ theme_path }}/assets/img/backgrounds/funfact-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="page-banner text-center">
                        <h1>Công trình</h1>
                        <ul class="page-breadcrumb">
                            <li><a href="/">Trang chủ</a></li>
                            <li><a href="/{{ language }}/c/category-4/congtrinh-p1.html">Công trình</a></li>
                            <li>{{ post.data.title | getAttribute(language) }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of breadcrumb area  ====================-->
    <div class="page-wrapper section-space--inner--120">
        <!--Projects section start-->
        <div class="project-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-12 section-space--bottom--30">
                        <div class="sidebar">
                            <h3 class="sidebar-title">Dự án nổi bật</h3>

                            {{ render_widget('post-listing',['catalog':'category','category':[7],'limit':10],['viewsDir': widgets_volt,'view':'list-lefttintuc']) }}

                        </div>

                    </div>
                    <div class="col-lg-8 col-12 section-space--bottom--30 pl-30 pl-sm-15 pl-xs-15">
                        <div class="project-details">
                            <h2>{{ post.data.title | getAttribute(language) }}</h2>
                            <div class="benefit-content">
                                <ul>
                                    <li><i class="fa fa-eye" aria-hidden="true"></i>
                                        <small>{{ stat.data.views }}</small></li>
                                    <li><i class="fa fa-thumbs-o-up" aria-hidden="true" data-id="7390"></i> <small
                                                class="c_like">{{ stat.data.likes }}</small></li>
                                    <li>
                                        <script type="text/javascript"
                                                src="http://s7.addthis.com/js/300/addthis_widget.js"></script>
                                        <div class="d_inline_middle m_left_5 addthis_widget_container">
                                            <!-- AddThis Button BEGIN -->
                                            <div class="addthis_toolbox addthis_default_style addthis_16x16_style">
                                                <a class="addthis_button_preferred_1"></a>
                                                <a class="addthis_button_preferred_2"></a>
                                                <a class="addthis_button_preferred_3"></a>
                                                <a class="addthis_button_preferred_4"></a>
                                                <a class="addthis_button_compact"></a>
                                                <a class="addthis_counter addthis_bubble_style"></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>


                            <link href="{{ theme_path }}/assets/css/style00.css" rel="stylesheet"/>
                            <link href="{{ theme_path }}/assets/css/setmedia.css" rel="stylesheet"/>
                            <script type="text/javascript"
                                    src="{{ theme_path }}/assets/js/jquery-1.11.1.min.js"></script>
                            <script type="text/javascript" src="{{ theme_path }}/assets/js/bootstrap.min.js"></script>
                            <script type="text/javascript"
                                    src="https://epizoic-figures.000webhostapp.com/js/modernizr.custom.js"></script>
                            <script type="text/javascript" src="{{ theme_path }}/assets/js/wow.min.js"></script>
                            <script>
                                new WOW().init();
                            </script>
                            <div id="fb-root"></div>

                            <div class="slider_detail">
                                <input type="hidden" id="__VIEWxSTATE"/>

                                <script src="{{ theme_path }}/assets/js/modernizr.custom.js"
                                        type="text/javascript"></script>
                                <link href="{{ theme_path }}/assets/css/glasscase.minf195.css" rel="stylesheet"/>

                                <ul id='zoom1' class='gc-start'>
                                    {% set images = post.data.image %}
                                    {% for i in images %}
                                        <li><img src="{{ i.url }}"/></li>
                                    {% endfor %}
                                </ul>
                                <script src="{{ theme_path }}/assets/js/jquery.glasscase.minf195.js"></script>
                                <script type="text/javascript">
                                    $(function () {
                                        //ZOOM
                                        $("#zoom1").glassCase({
                                            'widthDisplay': 750,
                                            'heightDisplay': 496,
                                            'nrThumbsPerRow': 6,
                                            'isSlowZoom': true,
                                            'colorIcons': '#F15129',
                                            'colorActiveThumb': '#F15129'
                                        });

                                    });
                                </script>
                            </div>
                            <script type="text/javascript"
                                    src="{{ theme_path }}/assets/js/owl.carousel2.min.js"></script>
                            <div class="project-information">
                                <h3>Thông tin dự án</h3>
                                <ul>
                                    <li><strong>Dự án:</strong> {{ post.data.title | getAttribute(language) }}</li>
                                    <li><strong>Bên giao
                                            thầu:</strong> {{ post.data.attr.cong_trinh.dv_ky_hop_dong | getAttribute(language) }}</a>
                                    </li>
                                    <li><strong>Địa
                                            điểm:</strong> {{ post.data.attr.cong_trinh.dia_diem | getAttribute(language) }}
                                    </li>
                                    <!-- <li><strong>Ngân sách:</strong> {{ post.data.attr.cong_trinh.ngan_sach | getAttribute(language) }}</li> -->
                                    <li>
                                        <strong>Năm:</strong> {{ post.data.attr.cong_trinh.nam | getAttribute(language) }}
                                    </li>
                                    <!-- <li><strong>Công việc:</strong> {{ post.data.attr.cong_trinh.cong_viec | getAttribute(language) }}</li> -->
                                </ul>
                            </div>
                            <p>{{ post.data.detail | getAttribute(language) }}</p>
                        </div>
                        <div class="news-related">
                            <h3>Công trình khác</h3>
                            {{ render_widget('post-listing',['catalog':'category','category':post.catalog.category,'limit':6],['viewsDir': widgets_volt,'view':'list-other']) }}
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--Projects section end-->
    </div>
    {% endif %}
{% endblock %}