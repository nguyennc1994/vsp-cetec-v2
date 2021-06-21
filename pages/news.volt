{% extends 'layouts/default.volt' %}
{% block content %}
    <section class="image-head-wrapper" style="background-image: url('{{ theme_path }}/assets/images/banner3.jpg');">
        <div class="inner-wrapper">
            <h1>News</h1>
        </div>
    </section>
    <div class="clearfix"></div>

    <section class="news-block">
        {#{{ render_widget('post-listing',['catalog':'category','categories':'7'],[]) }}#}
        {{ render_widget('post-listing',['catalog':'category','category':[7]],['viewsDir': widgets_volt,'view':'post-listing-news']) }}
    </section>
{% endblock %}