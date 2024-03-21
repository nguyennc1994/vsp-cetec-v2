{% set item = items[0] %}
<div class="row">
    {% for index, item in items %}
    <div class="col-md-4 col-sm-4 col-12" style="margin-bottom: 20px">
        <div class="row service-item">
            <div
                style="padding-top: 62.25%; background-image: url({{item.data.image[0].url}}); background-size: cover; background-position: center">
            </div>
            <div>
                <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">
                    <h4>{{ item.data.title|getAttribute(language) }}</h4>
                </a>
                <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">Xem thêm</a>
            </div>

        </div>
    </div>
    {% endfor %}
</div>