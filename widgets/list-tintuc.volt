{% set item = items[0] %}
{% for item in items %}
<div class="col-lg-4">
    <div class="blog-post-slider__single-slide blog-post-slider__single-slide--grid-view">
        <div class="blog-post-slider__image section-space--bottom--30">
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html"><img src="{{item.data.image[0].url}}" class="img-fluid" alt=""></a>
        </div>
        <div class="blog-post-slider__content">
            <p class="post-date"> {{ date('d/m/Y',strtotime(item.published_on)) }} </p>
            <h3 class="post-title">
                <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">{{ item.data.title|getAttribute(language) }}</a>
            </h3>
            <p class="post-excerpt">{{ item.data.desc|getAttribute(language)|striptags }}</p>
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html" class="see-more-link">CHI TIẾT</a>
        </div>
    </div>
</div>
{% endfor %}