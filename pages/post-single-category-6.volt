{% extends 'layouts/default.volt' %}
{% block content %}

    <div id="page-heading"
         style="background-image: url('http://cetec.vn/content/uploads/cms/2021/06/28/funfact-bg.jpg')">
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
                            <div style="background-image: url('http://cetec.vn{{ post.data.image[0].url }}')"></div>
                            <div class="down-content" style="float: right">
                                <div class="date">
                                    <p><span>{{ date('d/m/Y',strtotime(item.published_on)) }}</span></p>
                                </div>
                                <div class="right-cotent">
                                    <ul>
                                        <li><i class="fa fa-eye" aria-hidden="true"></i>
                                            <small>{{ stat.data.views }}</small></li>
                                        <li><i class="fa fa-thumbs-o-up" aria-hidden="true" data-id="7390"></i>
                                            <small class="c_like">{{ stat.data.likes }}</small></li>
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
                            {{ render_widget('post-listing',['catalog':'category','category':[4],'limit':10],['viewsDir': widgets_volt,'view':'list-rightcongtrinh']) }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

{% endblock %}