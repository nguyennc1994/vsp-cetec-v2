{% set item = items[0] %}
{% for item in items %}
    <div class="item">
        <img src="{{item.data.image[0].url}}" class="img-fluid" alt="">
    </div>
{% endfor %}