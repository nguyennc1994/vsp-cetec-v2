{% extends 'layouts/default.volt' %}
{% block content %}

<div id="page-heading"
    style="background-image: url('http://cetec.vn{{ post.data.image[0].url }}'); background-position: center; background-size: cover; height: 400px">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>{{ post.data.title | getAttribute(language) }}</h1>
            </div>
        </div>
    </div>
</div>
<section class="blog-classic">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="blog-posts">
                    <div class="blog-post">
                        {# <div
                            style="width: 60%; margin-left: 20%; background-image: url('http://cetec.vn{{ post.data.image[0].url }}'); background-position: center; background-size: cover; height: 300px">
                        </div>#}
                        <div class="down-content">
                            <div class="right-cotent">
                                <!-- <div>
                                    <ul>
                                        <li><i class="fa fa-eye" aria-hidden="true"></i>
                                            <small>{{ stat.data.views }}</small>
                                        </li>
                                        <li><i class="fa fa-thumbs-o-up" aria-hidden="true" data-id="7390"></i>
                                            <small class="c_like">{{ stat.data.likes }}</small>
                                        </li>
                                        <li>
                                            <script type="text/javascript"
                                                src="http://s7.addthis.com/js/300/addthis_widget.js"></script>
                                            <div class="d_inline_middle m_left_5 addthis_widget_container">
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
                                </div> -->
                                <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
                                    class="swiper-container mySwiper2">
                                    <div class="swiper-wrapper">
                                        {% for image in post.data.image %}
                                        <div class="swiper-slide" style="background-color: #ffffff;">
                                            <div
                                                style="width: 100%; height: 555px; background-image: url('http://cetec.vn{{ image.url }}'); background-size: contain; background-repeat: no-repeat; background-position: center;">
                                            </div>
                                            {# <img src="http://nhathongminhlumi.net.vn{{ image.url }}" />#}
                                        </div>
                                        {% endfor %}
                                    </div>
                                    <div class="swiper-button-next"></div>
                                    <div class="swiper-button-prev"></div>
                                </div>
                                <p>{{ post.data.detail | getAttribute(language) }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="side-bar">
                    <div class="sidebar-widget">
                        <h4>Bài viết gần đây</h4>
                        <div class="line-dec"></div>
                        {{ render_widget('post-listing',['catalog':'category','category':[4],'limit':5],['viewsDir':
                        widgets_volt,'view':'list-rightcongtrinh']) }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    var swiper2 = new Swiper(".mySwiper2", {
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        autoHeight: true,
        loop: true,
        spaceBetween: 10,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        thumbs: {
            swiper: swiper,
        },
    });
</script>
{% endblock %}