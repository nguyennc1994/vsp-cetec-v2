{% set item = items[0] %}
{% for item in items %}
{#    <div class="latest-item">#}
{#        <img src="http://placehold.it/80x80" alt="">#}
{#        <div class="right-content">#}
{#            <a href="single-blog.html"><h6>Pellentesque sapien velit</h6></a>#}
{#            <span><i class="fa fa-calendar"></i>25 October, 2015</span>#}
{#        </div>#}
{#    </div>#}
    <div class="latest-item">
        <div style="width: 70px; height: 70px; background-image: url('http://cetec.vn{{ item.data.image[0].url }}'); background-position: center; background-size: cover; float: left"></div>
        <div class="right-content" style="float:right;">
            <a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html"><h6>{{ item.data.title|getAttribute(language) }}</h6></a>
            <span><i class="fa fa-calendar"></i>{{ date('d/m/Y',strtotime(item.published_on)) }}</span>
        </div>
    </div>
{% endfor %}