{% set item = items[0] %}
{% for item in items %}
 <li style="margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid #e5e6e7;"><a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">{{ item.data.title|getAttribute(language) }}</a></li>
{% endfor %}
<li style="margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid #e5e6e7;"><a href="/{{ language }}/c/category-11/hoatdong-p1.html">Hoạt động công ty</a></li>
<li style="margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid #e5e6e7;"><a href="/{{ language }}/c/category-13/kh-p1.html">Khách hàng - Đối tác</a></li>