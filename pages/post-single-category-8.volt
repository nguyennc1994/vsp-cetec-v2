{% extends 'layouts/default.volt' %}
{% block content %}

<!--====================  breadcrumb area ====================-->
<div class="breadcrumb-area bg-img" data-bg="{{ theme_path }}/assets/img/backgrounds/funfact-bg.jpg">
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="page-banner text-center">
                    <h1>Tin tức</h1>
                    <ul class="page-breadcrumb">
                        <li><a href="/">Trang chủ</a></li>
                        <li><a href="/{{ language }}/c/category-6/tintuc-p1.html">Tin tức</a></li>
                        <li>{{ post.data.title | getAttribute(language) }}</li>
                    </ul>
                    
                </div>

            </div>
        </div>
    </div>
</div>
<!--====================  End of breadcrumb area  ====================-->
<div class="page-wrapper section-space--inner--120">
        <!--Blog section start-->
        <div class="blog-section">
            <div class="container">
                <div class="row">

                    <div class="col-lg-8 col-12 order-1 order-lg-2">
                        <div class="row">

                            <div class="blog-details col-12">
                                <div class="blog-inner">
                                    <div class="media">
                                        <div class="image"><img src="{{post.data.image[0].url}}" alt=""></div>
                                    </div>
                                    <div class="content">
                                        <ul class="meta">
                                            <li>{{ date('d/m/Y',strtotime(item.published_on)) }}</li>
                                        </ul>
                                        <h2 class="title">{{ post.data.title | getAttribute(language) }}</h2>
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
                                        <div class="desc section-space--bottom--30">
                                          {{ post.data.detail | getAttribute(language) }}
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="news-related">
                                <h3>Bài viết tương tự</h3>
                                {{ render_widget('post-listing',['catalog':'category','category':post.catalog.category,'limit':6],['viewsDir': widgets_volt,'view':'list-other']) }}
                            </div>
                            </div>
                            

                        </div>
                    </div>








          <div class="col-lg-4 col-12 order-2 order-lg-1">

            <div class="sidebar">
              <h3 class="sidebar-title">Tin nổi bật</h3>

              {{ render_widget('post-listing',['catalog':'category','category':[8],'limit':8],['viewsDir': widgets_volt,'view':'list-lefttintuc']) }}

          </div>

          </div>


        </div>

      </div>
    </div>
    <!--Service section end-->
  </div>

{% endblock %}