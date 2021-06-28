{% set item = items[0] %}
{% for item in items %}
    <div class="latest-item">
        <div style="width: 70px; height: 70px; background-image: url('http://cetec.vn{{ item.data.image[0].url }}')">
        <div class="right-content">
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html"><h6>{{ item.data.title|getAttribute(language) }}</h6></a>
            <span><i class="fa fa-calendar"></i>{{ date('d/m/Y',strtotime(item.published_on)) }}</span>
        </div>
    </div>
{% endfor %}