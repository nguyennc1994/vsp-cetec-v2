{% set item = items[0] %}
{% for item in items %}
    <div class="col-md-4" style="margin-bottom: 20px">
        <div class="service-item">
            <div style="height: 210px; background-image: url({{item.data.image[0].url}}); background-size: cover; background-position: center"></div>
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html"><h4>{{ item.data.title|getAttribute(language) }}</h4></a>
            <p>{{ item.data.desc|getAttribute(language)|striptags }}</p>
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">Xem thêm</a>
        </div>
    </div>
{% endfor %}