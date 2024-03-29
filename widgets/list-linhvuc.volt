{% set item = items[0] %}
{% for index, item in items %}
<div class="col-md-12" style="margin-bottom: 20px">
    {% if index%2 == 0 %}
    <div class="row service-item">
        <div class="col-md-6 col-sm-12 col-12"
            style="padding-top: 31.1%; background-image: url({{item.data.image[0].url}}); background-size: cover; background-position: center">
        </div>
        <div class="col-md-6 col-sm-12 col-12">
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">
                <h4>{{ item.data.title|getAttribute(language) }}</h4>
            </a>
            <p>{{ item.data.desc|getAttribute(language)|striptags }}</p>
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">Xem thêm</a>
        </div>

    </div>
    {% else %}
    <div class="row service-item">
        <div class="col-md-6 col-sm-12 col-12">
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">
                <h4>{{ item.data.title|getAttribute(language) }}</h4>
            </a>
            <p>{{ item.data.desc|getAttribute(language)|striptags }}</p>
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">Xem thêm</a>
        </div>
        <div class="col-md-6 col-sm-12 col-12"
            style="padding-top: 31.1%; background-image: url({{item.data.image[0].url}}); background-size: cover; background-position: center">
        </div>
    </div>
    {% endif %}
</div>
{% endfor %}