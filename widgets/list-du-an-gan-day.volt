{% set item = items[0] %}
{% for item in items %}
<div class="col-md-4" style="margin-bottom: 20px">
    <div class="service-item" style="position:relative">
        <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">
            <div
                style="height: 210px; background-image: url({{item.data.image[0].url}}); background-size: cover; background-position: center">
            </div>
        </a>
        <div style="position: absolute; bottom: 0; padding: 10px;background: linear-gradient(180deg, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0.6) 30.62%, #000000 100%);
        ; color: #fff">
            <h4>{{ item.data.title|getAttribute(language) }}</h4>
            <p>{{ item.data.desc|getAttribute(language)|striptags }}</p>
        </div>
    </div>
</div>
{% endfor %}