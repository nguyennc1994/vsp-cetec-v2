{% set item = items[0] %}
{% for item in items %}
    <div class="">
        <div class="thumb-holder">
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html"> <div style="height: 270px; width: 95%;  background-image: url({{item.data.image[0].url}}); background-size: cover; background-position: center"></div></a>
            <div class="thumb-content">
                <div class="thumb-link">
                    <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html"><i class="fa fa-plus"></i></a>
                </div>
                <div class="thumb-text">
                    <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html"><h4>{{ item.data.title|getAttribute(language) }}</h4></a>
                </div>
            </div>
        </div>
    </div>
{% endfor %}