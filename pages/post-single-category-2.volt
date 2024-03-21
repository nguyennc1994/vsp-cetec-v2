{% extends 'layouts/default.volt' %}
{% block content %}
<div id="page-heading" style="background-image: url('http://cetec.vn/content/uploads/cms/2021/06/28/funfact-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>{{ post.data.title | getAttribute(language) }}</h1>
                {# <span>Post-ironic scenester four dollar toast</span>#}
            </div>
        </div>
    </div>
</div>

<section class="blog-classic">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>{{ post.data.title | getAttribute(language) }}</h2>
                {{ partial('partials/star-post') }}
                <div class="blog-posts">

                    <div class="blog-post">
                        <p>{{ post.data.detail | getAttribute(language) }}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="sidebar">
            <h3 class="sidebar-title">Lĩnh vực hoạt động</h3>
            {{ render_widget('post-listing',['catalog':'category','category':[2],'limit':10],['viewsDir':
            widgets_volt,'view':'list-leftlinhvuc']) }}

        </div>
    </div>
</section>

{% endblock %}