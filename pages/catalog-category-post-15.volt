{% extends 'layouts/default.volt' %}
{% block content %}

    <!--====================  breadcrumb area ====================-->
    <div class="breadcrumb-area bg-img" data-bg="{{ theme_path }}/assets/img/backgrounds/funfact-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col">

                    <div class="page-banner text-center">
                        <h1>{{ category_title | getAttribute(language) }}</h1>
                        <ul class="page-breadcrumb">
                            <li><a href="/">Trang chủ</a></li>
                            <li>{{ category_title | getAttribute(language) }}</li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--====================  End of breadcrumb area  ====================-->

    <div class="page-wrapper section-space--inner--120">
        <div class="blog-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="side-bar">
                            <div class="sidebar-widget">
                                <h4>Giới thiệu</h4>
                                <div class="line-dec"></div>
                                <div class="latest-item">
                                    <div class="right-content">
                                        {{ render_widget('post-listing',['catalog':'category','category':[1],'limit':10],['viewsDir': widgets_volt,'view':'list-lefttuyendung']) }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-12 order-1 order-lg-2">
                        <div class="row">
                            <div class="projects">
                                <div class="thumb-holder">
                                    {% for post in items %}

                                        <div class="row" style="margin-bottom: 40px">
{#                                            <div class="col-md-3 col-12">#}
{#                                                <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html"><div style="background-image: url('http://cetec.vn{{ post.data.image[0].url }}'); background-size: cover; background-position: center; height: 150px"></div></a>#}
{#                                            </div>#}
                                            <div class="col-md-12 col-12">
                                                <div class="thumb-text" style="margin-top: 50px;">
                                                    <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html"><h4>{{ post.data.title|getAttribute(language) }}</h4></a>
                                                    <span><i class="fa fa-folder-o"></i>{{ post.data.desc|getAttribute(language)|striptags }}</span>
                                                </div>
                                            </div>
                                        </div>

                                    {% endfor %}
                                </div>
                            </div>
                        </div>

                        <div class="row ">
                            <div class="col">
                                <ul class="page-pagination section-space--top--30">
                                    {% if(pages > 0) %}
                                        {% for i in 1..pages %}
                                            <li>
                                                <a href="/{{ language }}/c/category-{{ category }}/{{ slug }}-p{{ i }}.html">{{ i }}</a>
                                            </li>
                                        {% endfor %}
                                    {% endif %}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{% endblock %}