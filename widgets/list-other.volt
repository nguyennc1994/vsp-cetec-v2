<ul class="all-post-td">
    {% for item in items %}
    <li class="post-td"><a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">{{ item.data.title|getAttribute(language) }}</a></li>
    {% endfor %}
</ul>