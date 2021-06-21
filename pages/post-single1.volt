{% extends 'layouts/default.volt' %}
{% block content %}

<!--====================  breadcrumb area ====================-->
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
                        <div class="project-information">
                            <h3>Thông tin dự án</h3>
                            <ul>
                                <li><strong>Dự án:</strong> {{ post.data.title | getAttribute(language) }}</li>
                                <li><strong>Bên giao thầu:</strong> {{ post.data.attr.cong_trinh.dv_ky_hop_dong | getAttribute(language) }}</a></li>
                                <li><strong>Địa điểm:</strong> {{ post.data.attr.cong_trinh.dia_diem | getAttribute(language) }}</li>
                                <!-- <li><strong>Ngân sách:</strong> {{ post.data.attr.cong_trinh.ngan_sach | getAttribute(language) }}</li> -->
                                <li><strong>Năm:</strong> {{ post.data.attr.cong_trinh.nam | getAttribute(language) }}</li>
                                <!-- <li><strong>Công việc:</strong> {{ post.data.attr.cong_trinh.cong_viec | getAttribute(language) }}</li> -->
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-8 col-12 section-space--bottom--30 pl-30 pl-sm-15 pl-xs-15">
                        <div class="project-details">
                            <h2>{{ post.data.title | getAttribute(language) }}</h2>
                            <div class="benefit-content">
                                <ul>
                                    <li><i class="fa fa-eye" aria-hidden="true"></i> <small>{{ stat.data.views }}</small></li>
                                    <li><i class="fa fa-thumbs-o-up" aria-hidden="true" data-id="7390"></i> <small class="c_like" >{{ stat.data.likes }}</small></li>
                                    <li><script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js"></script>
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
                    <h3>Một số hình ảnh công trình</h3>
                    <div class="col-12">
                      <div class="row">
                    <div class="row row-5 image-popup">
                        {% set images = post.data.image %}
                        {% for i in images %}
                        {% if not loop.first %}
                        <div class="col-xl-3 col-lg-4 col-sm-6 col-12 section-space--top--10">
                            <a href="{{ i.url }}" class="gallery-item single-gallery-thumb"><img src="{{ i.url }}" class="img-fluid" alt=""><span class="plus"></span></a>
                        </div>
                        {% endif %}
                        {% endfor %}
                      </div>
                      </div>
                      </div>
                        <div class="news-related">
                            <h3>Công trình khác</h3>
                            {{ render_widget('post-listing',['catalog':'category','category':post.catalog.category,'limit':6],['viewsDir': widgets_volt,'view':'list-other']) }}
                        </div>
            </div>
        </div>
        <!--Projects section end-->
    </div>

{% endblock %}