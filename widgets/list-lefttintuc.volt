{% set item = items[0] %}
{% for item in items %}
<div class="sidebar-blog">
    <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html" class="image"><img
            src="{{item.data.image[0].url}}" alt=""></a>
    <div class="content">
        <h5><a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">{{
                item.data.title|getAttribute(language) }}</a></h5>
        <span>{{ date('d/m/Y',strtotime(item.published_on)) }}</span>
    </div>
</div>
{% endfor %}