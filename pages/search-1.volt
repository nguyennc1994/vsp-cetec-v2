% extends 'layouts/default.volt' %}
{% block content %}
<div class="container base">
          <div class="RegForm formyc">
            
                <div class="RegForm-wizard--form">
                  
                  <div class="reg-step-container ctn_search">
                    

<div id="divsearchtitle">
    <h2>
        <span id="ctl00_ctl00_cphContent_cphPageBody_registerInterestWizard_ucRegisterInterestHeader_lblRegTitle">Kết quả tìm kiếm</span></h2>
</div>

<ul class="result_search">
        {% for post in items %}
            <li>
                <a href="/{{ language }}/p/{{ post.slug | getAttribute(language) }}.html">{{ post.data.title | getAttribute(language) }}</a>
            </li>
        {% endfor %}
    </ul>

{% if(pages > 0) %}
        {% for i in 1..pages %}
            <a class="ptrang" href="/{{ language }}/s/{{ slug }}-p{{ i }}.html">{{ i }}</a>
        {% endfor %}
    {% endif %}

<div class="clear"></div>
</div>
</div>
</div>
 </div>
</div>
{% endblock %}
