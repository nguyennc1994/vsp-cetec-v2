{% extends 'layouts/default.volt' %}
{% block content %}
    <div id="page-heading" style="background-image: url('http://cetec.vn/content/uploads/cms/2021/06/28/funfact-bg.jpg')">
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
{#                {{ render_widget('post-listing',['catalog':'category','category':[1],'limit':10],['viewsDir': widgets_volt,'view':'list-gioithieu']) }}#}

                <div class="sidebar">
                    <h3 class="sidebar-title">Danh mục</h3>

                    <ul class="sidebar-list">
                        {{ render_widget('post-listing',['catalog':'category','category':[1],'limit':10],['viewsDir': widgets_volt,'view':'list-leftlv']) }}
                        <li><a href="/{{ language }}/c/category-11/hoatdong-p1.html">Hoạt động công ty</a></li>
                        <li><a href="/{{ language }}/c/category-13/kh-p1.html">Khách hàng - Đối tác</a></li>
                    </ul>

                </div>

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