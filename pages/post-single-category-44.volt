{% extends 'layouts/default.volt' %}
{% block content %}
    <div id="page-heading" style="background-image: url('{{ theme_path }}/assets/img/funfact-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>{{ post.data.title | getAttribute(language) }}</h1>
{#                    <span>Post-ironic scenester four dollar toast</span>#}
                </div>
            </div>
        </div>
    </div>

    <section class="blog-classic">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    {{ render_widget('post-listing',['catalog':'category','category':[42],'limit':10],['viewsDir': widgets_volt,'view':'list-gioithieu']) }}

                </div>
                <div class="col-md-8">
                    <h2>{{ post.data.title | getAttribute(language) }}</h2>
                    {{ partial('partials/star-post') }}
                    <div class="blog-posts">

                        <div class="blog-post">
                            <p>{{ post.data.detail | getAttribute(language) }}</p>
                        </div>
                    </div></div>
            </div>
        </div>

{% endblock %}