{% set item = items[0] %}
{% for item in items %}
 <li><a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">{{ item.data.title|getAttribute(language) }}</a></li>
{% endfor %}