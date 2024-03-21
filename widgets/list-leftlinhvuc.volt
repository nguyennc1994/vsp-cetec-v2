{% set item = items[0] %}

<div class="swiper" id="lich-vuc-slide">
    <div class="swiper-wrapper ">
        {% for index, item in items %}

        <div class="swiper-slide">
            <div class="service-item">
                <div
                    style="padding-top: 62.25%; background-image: url({{item.data.image[0].url}}); background-size: cover; background-position: center">
                </div>
                <div>
                    <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">
                        <h4>{{ item.data.title|getAttribute(language) }}</h4>
                    </a>
                </div>

            </div>
        </div>
        {% endfor %}

    </div>
</div>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
    var swiper1 = new Swiper("#lich-vuc-slide", {
        loop: true,
        slidesPerView: 3,
        spaceBetween: 30,
        autoplay: {
            delay: 5000,
        },
    })

</script>