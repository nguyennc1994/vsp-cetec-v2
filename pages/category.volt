{% extends 'layouts/index.volt' %}
{% block content %}
    {% for post in posts %}
        <?php echo $post->data->title->$language;?>
    {% endfor %}
{% endblock %}