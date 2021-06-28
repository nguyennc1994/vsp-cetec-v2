{% set item = items[0] %}
{% for item in items %}
    <li style="margin-bottom: 10px; padding-bottom: 10px; border-bottom: 1px solid #e5e6e7;"><a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">{{ item.data.title|getAttribute(language) }}</a></li>
{% endfor %}
