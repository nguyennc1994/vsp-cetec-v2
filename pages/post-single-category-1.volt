{% extends 'layouts/default.volt' %}
{% block content %}
    <div id="page-heading"
         style="background-image: url('http://cetec.vn/content/uploads/cms/2021/06/28/funfact-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>{{ post.data.title | getAttribute(language) }}</h1>
                    {# <span>Post-ironic scenester four dollar toast</span> #}
                </div>
            </div>
        </div>
    </div>

    <section class="blog-classic">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="side-bar">
                    <div class="sidebar-widget">
                        <h4>Giới thiệu</h4>
                        <div class="line-dec"></div>
                        <div class="latest-item">
                            <img src="http://placehold.it/80x80" alt="">
                            <div class="right-content">
                                {{ render_widget('post-listing',['catalog':'category','category':[1],'limit':10],['viewsDir': widgets_volt,'view':'list-leftlv']) }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h2>{{ post.data.title | getAttribute(language) }}</h2>
                {{ partial('partials/star-post') }}
                <div class="blog-posts">
                    <div class="blog-post">
                        <p>{{ post.data.detail | getAttribute(language) }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

{% endblock %}