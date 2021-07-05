{% extends 'layouts/default.volt' %}
{% block content %}

<!--====================  breadcrumb area ====================-->
<div class="breadcrumb-area bg-img" data-bg="{{ theme_path }}/assets/img/backgrounds/funfact-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="page-banner text-center">
                    <h1>{{category_title | getAttribute(language) }}</h1>
                    <ul class="page-breadcrumb">
                        <li><a href="/">Trang chủ</a></li>
                        <li>{{category_title | getAttribute(language) }}</li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</div>
<!--====================  End of breadcrumb area  ====================-->

<div class="page-wrapper section-space--inner--120">
  <div class="blog-section">
      <div class="container">
          <div class="row">

            <div class="col-lg-8 col-12 order-1 order-lg-2">
              <div class="row">
                {% for post in items %}
                <div class="col-sm-6 col-12">
                    <div class="blog-post-slider__single-slide blog-post-slider__single-slide--grid-view">
                      <div class="blog-post-slider__image section-space--bottom--30">
                          <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html"><img src="{{post.data.image[0].url}}" class="img-fluid" alt=""></a>
                      </div>
                      <div class="blog-post-slider__content">
                          <p class="post-date"> {{ date('d/m/Y',strtotime(item.published_on)) }}</p>
                          <h3 class="post-title">
                              <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html">{{ post.data.title|getAttribute(language) }}</a>
                          </h3>
                          <p class="post-excerpt">{{ post.data.desc|getAttribute(language)|striptags }}</p>
                          <a href="/{{ language }}/p/{{ post.slug|getAttribute(language) }}.html" class="see-more-link">CHI TIẾT</a>
                      </div>  
                    </div>
                </div>
                {% endfor %}

              </div>

            <div class="row ">
              <div class="col">
                <ul class="page-pagination section-space--top--30">
                    {% if(pages > 0) %}
                        {% for i in 1..pages %}
                        <li><a href="/{{ language }}/c/category-{{category}}/{{ slug }}-p{{ i }}.html">{{ i }}</a></li>
                        {% endfor %}
                    {% endif %}
                </ul>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-12 order-2 order-lg-1">

            <div class="sidebar">
                <h3 class="sidebar-title">Giới thiệu</h3>

                <ul class="sidebar-list">
                  {{ render_widget('post-listing',['catalog':'category','category':[1],'limit':10],['viewsDir': widgets_volt,'view':'list-leftlv']) }}
{#                  <li><a href="/{{ language }}/c/category-11/hoatdong-p1.html">Hoạt động công ty</a></li>#}
{#                  <li><a href="/{{ language }}/c/category-13/kh-p1.html">Khách hàng - Đối tác</a></li>#}
                </ul>

            </div>

          </div>


        </div>

      </div>
    </div>
    <!--Service section end-->
  </div>






{% endblock %}