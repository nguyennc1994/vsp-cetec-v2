{% extends 'layouts/default.volt' %}
{% block content %}

<!--====================  breadcrumb area ====================-->
<div class="breadcrumb-area bg-img" data-bg="{{ theme_path }}/assets/img/backgrounds/funfact-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="page-banner text-center">
                  {% if not(category_title[0] is empty) %}
                    <h1>{{ category_title[0].title }}</h1>
                    <ul class="page-breadcrumb">
                        <li><a href="/">Trang chủ</a></li>
                        <li>{{ category_title[0].title }}</li>
                        {% endif %}
                        <li>{{ post.data.title | getAttribute(language) }}</li>
                    </ul>
                    
                </div>

            </div>
        </div>
    </div>
</div>
<!--====================  End of breadcrumb area  ====================-->

<div class="page-wrapper section-space--inner--120">
    <!--Service section start-->
  <div class="service-section">
    <div class="container">

      <div class="row">

        <div class="col-lg-8 col-12 order-1 order-lg-2 about-us">

          <div class="service-details">

            <div class="content section-space--top--30">
              <div class="row">
                <div class="col-12">
                  <h2>{{ post.data.title | getAttribute(language) }}</h2>
                  <div class="benefit-content">
                    <ul>
                        <li><i class="fa fa-eye" aria-hidden="true"></i> <small>{{ stat.data.views }}</small></li>
                        <li><i class="fa fa-thumbs-o-up" aria-hidden="true" data-id="7390"></i> <small class="c_like" >{{ stat.data.likes }}</small></li>
                        <li><script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js"></script>
                        <div class="d_inline_middle m_left_5 addthis_widget_container">
                                <!-- AddThis Button BEGIN -->
                            <div class="addthis_toolbox addthis_default_style addthis_16x16_style">

                                <a class="addthis_button_preferred_1"></a>

                                <a class="addthis_button_preferred_2"></a>

                                <a class="addthis_button_preferred_3"></a>

                                <a class="addthis_button_preferred_4"></a>

                                <a class="addthis_button_compact"></a>

                                <a class="addthis_counter addthis_bubble_style"></a>
                            </div>
                        </div>
                        </li>
                    </ul>
                </div>
                  <p>{{ post.data.detail | getAttribute(language) }}</p>
                </div>
              </div>

          </div>

      </div>

  </div>

          <div class="col-lg-4 col-12 order-2 order-lg-1">

            <div class="sidebar">
                <h3 class="sidebar-title">Giới thiệu</h3>

                <ul class="sidebar-list">
                  {{ render_widget('post-listing',['catalog':'category','category':[1],'limit':10],['viewsDir': widgets_volt,'view':'list-leftlv']) }}
                  <li><a href="/{{ language }}/c/category-11/hoatdong-p1.html">Hoạt động công ty</a></li>
                  <li><a href="/{{ language }}/c/category-13/kh-p1.html">Khách hàng - Đối tác</a></li>                
                </ul>

            </div>

          </div>


        </div>

      </div>
    </div>
    <!--Service section end-->
  </div>

{% endblock %}