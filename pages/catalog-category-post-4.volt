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
                    {% for post in items %}
                            <div class="projects">
                                <div class="mix second-row col-md-4 category-2 category-3">
                                    <div class="thumb-holder">
                                        <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html"><div style="background-image: url('http://cetec.vn{{ post.data.image[0].url }}'); background-size: cover; background-position: center; height: 300px"></div></a>
                                        <div class="thumb-content">
                                            <div class="thumb-link">
                                                <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html"><i class="fa fa-plus"></i></a>
                                            </div>
                                            <div class="thumb-text">
                                                <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html"><h4>{{ post.data.title|getAttribute(language) }}</h4></a>
                                                <span><i class="fa fa-folder-o"></i>{{ post.data.desc|getAttribute(language)|striptags }}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    {% endfor %}
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
        <!--Service section end-->
    </div>
{% endblock %}