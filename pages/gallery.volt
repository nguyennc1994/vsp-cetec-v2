{% extends 'layouts/default.volt' %}
{% block content %}
    <div class="grid">
        <div class="grid-sizer"></div>
        <div class="grid-item">
            <img src="{{ theme_path }}/assets/images/slide/1.jpg" />
        </div>
        <div class="grid-item">
            <img src="{{ theme_path }}/assets/images/slide/2.jpg" />
        </div>
        <div class="grid-item">
            <img src="{{ theme_path }}/assets/images/slide/3.jpg" />
        </div>
        <div class="grid-item">
            <img src="{{ theme_path }}/assets/images/slide/1.jpg" />
        </div>
        <div class="grid-item">
            <img src="{{ theme_path }}/assets/images/slide/2.jpg" />
        </div>
        <div class="grid-item">
            <img src="{{ theme_path }}/assets/images/slide/3.jpg" />
        </div>
        <div class="grid-item">
            <img src="{{ theme_path }}/assets/images/slide/1.jpg" />
        </div>
        <div class="grid-item">
            <img src="{{ theme_path }}/assets/images/slide/2.jpg" />
        </div>
        <div class="grid-item">
            <img src="{{ theme_path }}/assets/images/slide/3.jpg" />
        </div>
    </div>


    <script type="text/javascript">
        $(function(){
            // init Masonry
            var grid = document.querySelector('.grid');

            var msnry = new Masonry( grid, {
                itemSelector: '.grid-item',
                columnWidth: '.grid-sizer',
                percentPosition: true
            });

            imagesLoaded( grid ).on( 'progress', function() {
                // layout Masonry after each image loads
                msnry.layout();
            });
        });

    </script>



{% endblock %}