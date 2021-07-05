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


    <section class="blog-classic">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="side-bar">
                        <div class="sidebar-widget">
                            <h4>Giới thiệu</h4>
                            <div class="line-dec"></div>
                            <div class="latest-item">
                                <div class="right-content">
                                    {{ render_widget('post-listing',['catalog':'category','category':[1],'limit':10],['viewsDir': widgets_volt,'view':'list-leftlv']) }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        {% for post in items %}
                            <div class="col-md-6">
                                <div class="thumb-holder">
                                    <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">
                                        <div style="background-image: url('http://cetec.vn{{ post.data.image[0].url }}'); background-size: contain; background-position: center; height: 300px; background-repeat: no-repeat"></div>
                                    </a>
{#                                    <div class="thumb-content">#}
{#                                        <div class="thumb-link">#}
{#                                            <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html"><i#}
{#                                                        class="fa fa-plus"></i></a>#}
{#                                        </div>#}
{#                                        <div class="thumb-text">#}
{#                                            <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">#}
{#                                                <h4>{{ post.data.title|getAttribute(language) }}</h4></a>#}
{#                                            <span><i class="fa fa-folder-o"></i>{{ post.data.desc|getAttribute(language)|striptags }}</span>#}
{#                                        </div>#}
{#                                    </div>#}
                                </div>
                            </div>
                        {% endfor %}
                    </div>
                </div>
            </div>
        </div>
    </section>
{% endblock %}