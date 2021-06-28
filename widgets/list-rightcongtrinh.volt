{% set item = items[0] %}
{% for item in items %}
<div class="sidebar-blog">
  <div class="content">
      <h5><a href="/{{ language }}/p/{{ item.slug|getAttribute(language) }}.html">{{ item.data.title|getAttribute(language) }}</a></h5>
<!--       <span>{{ date('d/m/Y',strtotime(item.published_on)) }}</span> -->
  </div>
</div>
{% endfor %}