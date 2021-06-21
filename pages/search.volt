{% extends 'layouts/default.volt' %}
{% block content %}
    <div id="page-banner" class="page-banner blog-banner container-fluid no-padding">
        <div class="banner-content">
            <h3>Kết quả tìm kiếm</h3>
            {# <ol class="breadcrumb"> #}
            {# <li><a href="#">{{ t('trangchu') }}</a></li> #}
            {# <li><a href="#">{{ t('tintuc') }}</a></li> #}
            {# </ol> #}
        </div>
    </div><!-- Banner Section /- -->
    <!-- Blog Section -->
    <div id="blog-section" class="blog-section blog-list container-fluid no-padding">
        <div class="section-padding"></div>
        <!-- Container -->
        <div class="container">
            <div class="blog">
                <div class="row">
{#                    {{ items | json_encode }}/#}
{#                     <h1 class="element-invisible">{{ t('kqtimkiem') }}</h1> #}
{#                    {% if items.length == 0 %}#}
{#                    <h3>Không có kết quả tìm kiếm</h3>#}
{#                    {% else %}#}
                    <div class="col-md-12">
                        <div class="blog-content">
                            <div class="row">
                                {% for post in items %}
                                    <!-- ITEM -->
                                    <div class="col-md-12"
                                         style="margin-bottom: 20px; border-bottom: solid 1px #5A5A5A; text-align: left; padding-bottom: 10px">
                                        <div class="img col-md-3">
                                            <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html"><img
                                                        style="width: 100%"
                                                        src="{{ post.data.image[0].url }}" alt=""></a>
                                        </div>
                                        <div class="b-content b-content-search col-md-9">
                                            <h2>
                                                <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">{{ post.data.title|getAttribute(language) }}</a>
                                            </h2>
                                            <div class="desc">
                                                <p>{{ post.data.desc|getAttribute(language)|striptags }}</p>
                                            </div>
                                        </div>

                                    </div>

                                    <!-- END / ITEM -->
                                {% endfor %}

                            </div>


                            {# <!-- PAGE NAVIGATION   --> #}
                            {# <ul class="page-navigation"> #}
                            {# {% if(pages > 0) %} #}
                            {# {% for i in 1..pages %} #}
                            {# {% if (i > 1) %} #}
                            {# <li class="first"><a #}
                            {# href="/{{ language }}/s/{{ slug }}-p{{ i-1 }}.html"><i #}
                            {# class="fa fa-arrow-left"></i></a></li> #}
                            {# {% endif %} #}
                            {# {% endfor %} #}
                            {# {% for i in 1..pages %} #}
                            {# <li> #}
                            {# <a href="/{{ language }}/s/{{ slug }}-p{{ i }}.html">{{ i }}</a> #}
                            {# </li> #}
                            {# {% endfor %} #}
                            {# {% for i in 1..pages %} #}
                            {# {% if (i < pages) %} #}
                            {# <li class="last"><a #}
                            {# href="/{{ language }}/s/{{ slug }}-p{{ i+1 }}.html"><i #}
                            {# class="fa fa-arrow-right"></i></a></li> #}
                            {# {% endif %} #}
                            {# {% endfor %} #}
                            {# {% endif %} #}
                            {# </ul> #}
                            <!-- END / PAGE NAVIGATION   -->
                        </div>
                    </div>
{#                    {% endif %}#}
                </div>

            </div>
        </div>

        <div class="section-padding"></div>
    </div><!-- Blog Section /- -->
    {# {% for post in items %} #}
    {# <li> #}
    {# <a href="/{{ language }}/p/{{ post.slug | getAttribute(language) }}.html">{{ post.data.title | getAttribute(language) }}</a> #}
    {# </li> #}
    {# {% endfor %} #}
    {# </ul> #}

    {# {% if(pages > 0) %} #}
    {# {% for i in 1..pages %} #}
    {# <a class="ptrang" href="/{{ language }}/s/{{ slug }}-p{{ i }}.html">{{ i }}</a> #}
    {# {% endfor %} #}
    {# {% endif %} #}
{% endblock %}
