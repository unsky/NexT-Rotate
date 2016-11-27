<!doctype html>

{% set html_class = 'theme-next ' + theme.scheme %}
{% if theme.use_motion %}
  {% set html_class = html_class + ' use-motion' %}
{% endif %}

<html class="{{ html_class | lower }}">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
</head>

<body itemscope itemtype="//schema.org/WebPage" lang="{{ config.language }}">


  {% include '_scripts/third-party/analytics.swig' %}

  {% set container_class = "container one-collumn " %}
  {% if theme.sidebar.position %}
    {% set container_class = container_class + 'sidebar-position-' + theme.sidebar.position %}
  {% endif %}

  <div class="{{ container_class }} {% block page_class %}{% endblock %} ">

    <div class="headband"></div>
    <div style="float:left;width:170px;height:170px;" >
      <div>

    <style type="text/css">
    *{margin: 0;padding: 0;}
    html,body{height: 100%;background: white;}
    .wrap{
    	  height: 100%;position: relative;
    	  -webkit-transform-style:preserve-3d;
    	  -webkit-perspective:0px;

    	  -moz-transform-style:preserve-3d;
    	  -moz-perspective:0px;

    	  -webkit-animation:mydhua 5s ease infinite;
    	  -moz-animation:mydhua 5s ease infinite;



    }
    .box{width: 150px;height: 150px;position: absolute;top: 50%;left: 50%;
    	 margin:-100px 0 0 -100px; line-height: 150px;text-align: center;font-size: 20px;color: white;
    		}
    .box1{
    	-webkit-transform:rotatey(90deg) translatez(-100px);
    	-moz-transform:rotatey(90deg) translatez(-100px);
    	background: white;
    }
    .box2{
    	-webkit-transform:rotatey(90deg) translatez(100px);
    	-moz-transform:rotatey(90deg) translatez(100px);
    	background: rgba(255,0,255,.5);
    }
    .box3{
    	-webkit-transform:rotatex(90deg) translatez(100px);
    	-moz-transform:rotatex(90deg) translatez(100px);
    	background: rgba(255,153,204,.5);
    }
    .box4{
    	-webkit-transform:rotatex(90deg) translatez(-100px);
    	-moz-transform:rotatex(90deg) translatez(-100px);
    	background: rgba(0,204,255,.5);
    }
    .box5{
    	-webkit-transform: translatez(-100px);
    	-moz-transform:translatez(-100px);
    	background: rgba(153,204,255,.5);
    }
    .box6{
    	-webkit-transform: translatez(100px);
    	-moz-transform:translatez(100px);
    	background: rgba(0,255,255,.5);
    }

    @-webkit-keyframes mydhua{

    	0%{-webkit-transform:rotateX(0deg) rotateY(0deg) rotateZ(0deg);-webkit-transform-origin: center center;}
    	100%{-webkit-transform:rotateX(180deg) rotateY(180deg) rotateZ(180deg);-webkit-transform-origin: center center; }
    }
    @-moz-keyframes mydhua{

    	0%{-moz-transform:rotateX(0deg) rotateY(0deg) rotateZ(0deg);-webkit-transform-origin: center center;}
    	100%{-moz-transform:rotateX(180deg) rotateY(180deg) rotateZ(180deg); -webkit-transform-origin: center center;}
    }
    </style>


    <div class="wrap" style="margin-top:100px;margin-left:200px;">
    	<div class="box1 box"><img   src="{{ url_for( theme.avatar | default(theme.images + '/avatar.gif') ) }}"></div>
    	<div class="box2 box">coding</div>
    	<div class="box3 box">unsky</div>
    	<div class="box4 box">deepdim</div>
    	<div class="box5 box">thought</div>
    	<div class="box6 box"><img   src="{{ url_for( theme.avatar | default(theme.images + '/avatar.gif') ) }}"></div>
    </div>

       </div>

    </div>

    <header id="header" class="header" style="background-color:white;" itemscope itemtype="//schema.org/WPHeader">

      <div class="header-inner">

                <div style="display:block;margin-top:30px;"> {%- include '_partials/header.swig' %}
                </div><br/>

                  <div class="header-inner" style="margin-top:20px;" >



                    {% if theme.social %}
                      {% for name, link in theme.social %}
                        <span class="links-of-author-item">
                          <a href="{{ link }}" target="_blank" title="{{ name }}">
                            {% if theme.social_icons.enable %}
                              <i class="fa fa-fw fa-{{ theme.social_icons[name] | default('globe') | lower }}"></i>
                            {% endif %}
                            {{ name }}
                          </a>
                        </span>
                      {% endfor %}
                    {% endif %}


                  </div>

      </div>





    </header>

    <main id="main" class="main" >

      <div class="main-inner">
        <div class="content-wrap">
          <div id="content" class="content">
            {% block content %}{% endblock %}
          </div>
          {% include '_partials/duoshuo-hot-articles.swig' %}
          {% include '_partials/comments.swig' %}
        </div>
        {% if theme.sidebar.display !== 'remove' %}
          {% block sidebar %}{% endblock %}
        {% endif %}
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        {% include '_partials/footer.swig' %}
        {% include '_scripts/third-party/analytics/busuanzi-counter.swig' %}
        {% block footer %}{% endblock %}
      </div>
    </footer>

    <div class="back-to-top">
      <i class="fa fa-arrow-up"></i>
    </div>
  </div>

  {% include '_scripts/vendors.swig' %}
  {% include '_scripts/commons.swig' %}

  {% set scheme_script = '_scripts/schemes/' + theme.scheme | lower + '.swig' %}
  {% include scheme_script %}

  {% block script_extra %}{% endblock %}

  {% include '_scripts/boostrap.swig' %}

  {% include '_scripts/third-party/comments.swig' %}
  {% include '_scripts/third-party/tinysou.swig' %}
  {% include '_scripts/third-party/mathjax.swig' %}
  {% include '_scripts/third-party/lean-analytics.swig' %}
  {% include '_scripts/baidu-push.swig' %}
  {% include '_scripts/third-party/schedule.swig' %}
<!-- �������� -->
<script type="text/javascript" src="/js/src/particle.js"></script>


</body>
</html>
