<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/4
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>Title</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">



    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="static/user/home/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="static/user/home/css/home1.css" rel="stylesheet">
    <!--Custom-Theme-files-->
    <link href="static/user/home/css/style.css" rel='stylesheet' type='text/css' />
    <!--/script-->
    <link href="static/user/home/css/font-awesome.css" rel="stylesheet">


    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>

    <script src="${pageContext.request.contextPath}/static/user/common/plugin/jquery.cookie.js"></script>


</head>
<body>
<%@ include file="header.jsp" %>

<%--头部--%>


<%--<div class='w1180 ad' id="OL_SYS_925_51">--%>
<%--</div>--%>

<%--<div class='w1180 logoAndlogin'>--%>
    <%--<h1 class='logo'>--%>
        <%--<a href="user/home.action">--%>
            <%--<img src='${pageContext.request.contextPath}/static/user/common/top/images/top.png' style='padding-left:200px' alt='iFashion' title='iFashion' />--%>
        <%--</a>--%>
    <%--</h1>--%>
    <%--<div class="login">--%>

        <%--<c:set var="uname" value="${sessionScope.uname}"/>--%>
        <%--<c:if test="${empty uname}">--%>
            <%--<a  data-toggle="modal" href="#login-modal">登录</a> |--%>
            <%--<a href="user/register.action" target="_self" rel="nofollow">注册</a>--%>
        <%--</c:if>--%>

        <%--<c:if test="${not empty uname}">--%>
            <%--<span>欢迎您${uname}</span>--%>
            <%--<a href="user/personal.action" target="_self" rel="nofollow" style="color: #000">个人中心</a>--%>
            <%--<a href="user/userlogout.action" target="_self" rel="nofollow" style="color: #000">注销</a>--%>
        <%--</c:if>--%>
        <%--<!-- 个人中心 -->--%>
        <%--<!-- <a href="" target="_self" rel="nofollow">个人中心</a> -->--%>
    <%--</div>--%>
<%--</div>--%>


<%--<div class='navSearch'>--%>
    <%--<div class="navBg"></div>--%>
    <%--<div class="w1180">--%>
        <%--<div class="nav1">--%>
            <%--<a href="user/index.action" class="here">首页</a>--%>
            <%--<a href="user/clothes.action">穿衣搭配</a>--%>
            <%--<a href="user/forum.action">社区精选</a>--%>
            <%--<a href="user/information.action">资讯</a>--%>
            <%--<a href="user/online_list.action">私人定制</a>--%>
            <%--<a href="javascript:void(0);" class="searchBt"></a>--%>
        <%--</div>--%>
        <%--<div class="navChilren">--%>
            <%--<ul>--%>
                <%--<li></li>--%>
                <%--<li></li>--%>
                <%--<li>--%>
                    <%--<a href="user/forum.action" target="_blank">论坛</a>--%>
                    <%--<a href="usre/community.action">社区</a>--%>
                <%--</li>--%>
                <%--<li></li>--%>

            <%--</ul>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class='w1180 search'>--%>
        <%--<form id="searchPage" target="_blank" method="get" action="user/search" accept-charset="utf8">--%>
            <%--<div class="mainsearch">--%>
                <%--<input onkeyup="selBrand('searchpro','auto_brand')" type="text" class="main_input" id="searchpro" autocomplete="off" name="q" value="请输入名称">--%>
                <%--<div class="c1_se_2_c" id="auto_brand" style="display: none;"></div>--%>
            <%--</div>--%>
            <%--<input type="hidden" name="s" value="15679544665037353740">--%>
            <%--<input type="hidden" name="nsid" value="1" class="aritcleType">--%>
            <%--<input type="button" class="mainbtn" id="J_search_sub" value="">--%>
            <%--<input type="button" title='关闭搜索框' class="closeSearchbtn" value="">--%>
        <%--</form>--%>
        <%--<div class='hotpro'>--%>
            <%--<a href="" title="资讯-夏纳电影节" target="_blank">资讯-夏纳电影节</a>--%>
            <%--<a href="" title="定制-裙子" target="_blank">定制-裙子</a>--%>
            <%--<a href="" title="定制-运动鞋" target="_blank">定制-运动鞋</a>--%>
            <%--<!-- 设计师 -->--%>
            <%--<a href="" title="设计师-房莹" target="_blank">设计师-房莹</a>--%>
            <%--<a href="" title="话题" target="_blank">话题-PVC</a>--%>
            <%--<!-- <a href="" title="?????" target="_blank"></a> -->--%>
        <%--</div>--%>
    <%--</div>--%>



<%--</div>--%>

<!--crazy start-->
<%--<div id="crazynavdown">--%>
    <%--<div id="OL_SYS_938_51" class="w1180 s"></div>--%>
    <%--<div class="b">--%>
        <%--<div id="OL_SYS_943_51" class="b1"></div>--%>
        <%--<div id="OL_SYS_448_51" class="b2"></div>--%>
    <%--</div>--%>
<%--</div>--%>
<!--crazy end-->


<%--头部结束--%>





<%--登录模态框--%>


<%--<div class="modal" id="login-modal" style="height: 400px;margin-left: 500px;margin-top: 50px">--%>
    <%--<a class="close" data-dismiss="modal">×</a>--%>
    <%--<h1>登录</h1>--%>
    <%--<form class="login-form clearfix" method="post" action="user/logincheck.action">--%>
        <%--<div class="form-arrow">	</div>--%>
        <%--<c:if test="${not  empty isError}">--%>
            <%--<div class="error">${isError}</div>--%>
        <%--</c:if>--%>
        <%--<input name="uname" id="uname" type="text" placeholder="手机号/邮箱：">--%>
        <%--<input name="password" id="password" type="password" placeholder="密码：">--%>
        <%--<input name="code" type="text" placeholder="验证码：" style="width: 180px;float: left;">--%>
        <%--<img id="codeValidateImg" onClick="javascript:flushValidateCode();"  alt="验证码" style="width: 100px;float: left;"/>--%>
        <%--<input type="submit" name="type" class="button-blue login" value="登录">--%>
        <%--<input type="hidden" name="return-url" value="">--%>
        <%--<div class="clearfix"></div>--%>
        <%--<label class="remember"><input name="remember" type="checkbox"  id="remember-password" onclick="remeber()"/>记住密码</label>--%>
        <%--<a class="forgot" id="forgot">忘记密码？</a>--%>
    <%--</form>--%>
<%--</div>--%>




<%--<div class="modal" id="forgetform">--%>
    <%--<a class="close" data-dismiss="modal">×</a>--%>
    <%--<h1>忘记密码</h1>--%>
    <%--<form class="forgot-form" method="post" action="http://www.jb51.net">--%>
        <%--<input name="email" value="" placeholder="注册邮箱：">--%>
        <%--<div class="clearfix"></div>--%>
        <%--<input type="submit" name="type" class="forgot button-blue" value="发送重设密码邮件">--%>
    <%--</form>--%>
<%--</div>--%>
<%--<script type="text/javascript">--%>
    <%--// $(document).ready(function() {--%>
    <%--//     flushValidateCode();//进入页面就刷新生成验证码--%>
    <%--// });--%>
    <%--window.onload=flushValidateCode;--%>




    <%--/* 刷新生成验证码 */--%>
    <%--function flushValidateCode(){--%>
        <%--var validateImgObject = document.getElementById("codeValidateImg");--%>
        <%--validateImgObject.src = "${pageContext.request.contextPath }/getSysManageLoginCode.action?time=" + new Date();--%>
    <%--}--%>


    <%--//jquery-cookie实现记住用户名和密码--%>
    <%--$(function () {--%>

        <%--var uname = $.cookie('uname');--%>
        <%--var password = $.cookie('password');--%>

        <%--//页面加载的时候从cookie中取出用户名和密码填充对应的输入框--%>
        <%--$('#uname').val(uname);--%>
        <%--$("#password").val(password)--%>
        <%--//选中保存秘密的复选框　--%>
        <%--if(uname != null && uname != '' && password != null && password != ''){--%>
            <%--$("#remember-password").attr('checked',true);--%>
        <%--}--%>
    <%--});--%>

    <%--function remeber(){--%>

        <%--var uname = $("#uname").val();--%>
        <%--var password = $("#password").val();--%>

        <%--//判断复选框的选择状态添加cookie--%>
        <%--if ($("#remember-password").is(":checked")) {--%>
            <%--//存储一个带7天期限的cookie--%>
            <%--$.cookie("uname", uname, { expires: 7 });--%>
            <%--$.cookie("password", password, { expires: 7 });--%>
        <%--}--%>
        <%--else {--%>
            <%--$.cookie("uname", "", { expires: -1 });--%>
            <%--$.cookie("password", "", { expires: -1 });--%>
        <%--}--%>
    <%--}--%>

<%--</script>--%>


<div class="trent-slider" >
    <div class="t-slide current-t-slide">
        <img src="static/user/home/images/hunli.jpg" alt="" />
    </div>
    <div class="t-slide">
        <img src="static/user/home/images/party.jpg" alt="" />
    </div>
    <div class="t-slide">
        <img src="static/user/home/images/3.jpg" alt="" />
    </div>
    <div class="t-slide">
        <img src="static/user/home/images/4.jpg" alt="" />
    </div>
    <div class="t-slider-controls" >

        <div class="t-load-bar">
            <div class="inner-load-bar"></div>
        </div>
        <div class="t-dots-container">
            <div class="t-slide-dots-wrap">
                <div class="t-slide-dots">

                </div>
            </div>
        </div>
    </div>
</div>
<!--/start-banner-->
<div class="banner">
    <div class="container">
        <div class="banner-inner">
            <div class="callbacks_container">
                <ul class="rslides callbacks callbacks1" id="slider4">
                    <li>
                        <div class="para-wthree">
                            <p>让iFashion来为你量身打造最适合你的装扮~这里有经验最丰富的设计师，最新鲜热门的资讯，以及各种时尚大V，
                                让不懂穿搭的你也能成为街头潮人，快来pick我们吧。</p>
                        </div>
                        <div class="banner-info-w3l-agile">
                            <h3>Women</h3>
                            <p>时尚时尚最时尚</p>
                        </div>
                        <div class="clearfix"></div>
                    </li>

                    <li>
                        <div class="para-wthree">
                            <p>热烈庆祝中国一线设计师：王振
                                入驻iFashion时尚平台，他将会把中国时尚潮流推进至世界一流水平~快来关注我们吧</p>
                        </div>
                        <div class="banner-info-w3l-agile">
                            <h3>Fashion</h3>
                            <p>引领时尚潮流</p>
                        </div>
                        <div class="clearfix"></div>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</div>
<!--//end-banner-->
<!--/about-->
<div class="about-section" id="about">
    <div class="container">
        <div class="ab-top-agileites-w3layouts">
            <div class="col-md-5 about-img">
                <img src="static/user/home/images/ab.jpg" alt=""/>

            </div>
            <div class="col-md-7 about-top">
                <h2>Hello ! Welcome to iFashion web.... </h2>
                <p>iFashion主打时尚穿搭、私人订制，网站成立以来已获得各界时尚达人的关注。2018年5月更是吸引了一大批中国著名设计师入驻网站：王振等人已在国内获得多项设计大奖。</p>
                <p class="sub">这里有最专业的设计师、最权威的穿搭指南、最热门的讨论话题、最新鲜的一手资讯。即使你是穿衣小白也能让你快速学习穿衣搭配技巧，了解时尚潮流发展趋势，与志趣相投的人徜徉在学习的海洋。更重要的是可以让那些忙于工作无暇思虑穿搭的高端人士拥有自己的私人订制产品，既能保证穿衣水准，又能节省时间。毫无疑问iFashion是你们的不二之选。</p>
                <p>想了解更多？点击下方read more按钮，快快收藏我们吧~</p>
                </p>
                <a href="#news" class="hvr-outline-out scroll">Read More</a>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//about-->
<!--//services-->
<div class="services" id="services">
    <div class="container">
        <h3 class="tittle">Latest Designs</h3>
        <div class="grid">
            <div class="col-md-6 serve-agileinfo">
                <figure class="effect-julia">
                    <img src="static/user/home/images/s1.jpg" alt="img21"/>
                    <figcaption>
                        <h4>iFashion  <span>designs</span></h4>
                        <div>
                            <p>设计师：中国一流设计师王振</p>
                            <p>2018年6月23日最新作品展示</p>
                            <p>结合当下最热门元素和材质打造</p>
                        </div>
                        <a class="scroll" href="#news">View more</a>
                    </figcaption>
                </figure>
                <p class="ser-para-wthree">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, consectetur adipiscing elit.Duo suas ocurreret imperdiet ad. Eum in porro scripta. Mea an ceteros fierent<p>
            </div>
            <div class="col-md-6 serve-agileinfo">
                <figure class="effect-julia">
                    <img src="static/user/home/images/s2.jpg" alt="img22"/>
                    <figcaption>
                        <h4>iFashion <span>designs </span></h4>
                        <div>
                            <p>设计师：中国一流设计师梁子</p>
                            <p>2018年6月18日最新作品展示</p>
                            <p>结合当下最热门元素和材质打造</p>
                        </div>
                        <a class="scroll" href="#news">View more</a>
                    </figcaption>
                </figure>
                <p class="ser-para-wthree">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, consectetur adipiscing elit.Duo suas ocurreret imperdiet ad. Eum in porro scripta. Mea an ceteros fierent<p>
            </div>
            <div class="col-md-6 serve-agileinfo two">
                <figure class="effect-julia">
                    <img src="static/user/home/images/s4.jpg" alt="img22"/>
                    <figcaption>
                        <h4>iFashion <span>designs </span></h4>
                        <div>
                            <p>设计师：中国一流设计师邓皓</p>
                            <p>2018年6月20日最新作品展示</p>
                            <p>结合当下最热门元素和材质打造</p>
                        </div>
                        <a class="scroll" href="#news">View more</a>
                    </figcaption>
                </figure>
                <p class="ser-para-wthree">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, consectetur adipiscing elit.Duo suas ocurreret imperdiet ad. Eum in porro scripta. Mea an ceteros fierent<p>
            </div>
            <div class="col-md-6 serve-agileinfo two">
                <figure class="effect-julia">
                    <img src="static/user/home/images/s3.jpg" alt="img22"/>
                    <figcaption>
                        <h4>iFashion <span>designs </span></h4>
                        <div>
                            <p>设计师：中国一流设计师范晓玉</p>
                            <p>2018年6月18日最新作品展示</p>
                            <p>结合当下最热门元素和材质打造</p>
                        </div>
                        <a class="scroll" href="#news">View more</a>
                    </figcaption>
                </figure>
                <p class="ser-para-wthree">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, consectetur adipiscing elit.Duo suas ocurreret imperdiet ad. Eum in porro scripta. Mea an ceteros fierent<p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--//services-->
<!--/video-->
<div id="video" class="video">
    <h3 class="tittle vd">LATEST FASHION SHOW RUNWAY WALKING</h3>
    <a class="play-icon popup-with-zoom-anim" href="#small-dialog"><span> </span></a>
</div>

<div id="small-dialog" class="mfp-hide">
    <iframe src=""></iframe>

</div>
<!--team-starts-->
<!-- team -->
<div class="team" id="team">
    <div class="container">
        <h3 class="tittle">Our Designers</h3>
        <div class="agile_team_grids">
            <div class="col-md-3 agile_team_grid team-left-w3l-agile">
                <div class="agile_team_grid_main">
                    <img src="static/user/home/images/t1.jpg" alt=" " class="img-responsive" />
                    <div class="p-mask">
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li> <a href="#"><i class="fa fa-twitter"></i></a>  </li>

                            <li><a href="#"><i class="fa fa-dribbble"></i></a> </li>

                        </ul>
                    </div>
                </div>
                <div class="agile_team_grid1">
                    <h3>王振</h3>
                    <p>中国一流设计师</p>
                </div>
            </div>
            <div class="col-md-3 agile_team_grid team-left-w3l-agile">
                <div class="agile_team_grid_main">
                    <img src="static/user/home/images/t2.jpg" alt=" " class="img-responsive" />
                    <div class="p-mask">
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li> <a href="#"><i class="fa fa-twitter"></i></a>  </li>

                            <li><a href="#"><i class="fa fa-dribbble"></i></a> </li>

                        </ul>
                    </div>
                </div>
                <div class="agile_team_grid1">
                    <h3>梁子</h3>
                    <p>中国一流设计师</p>
                </div>
            </div>
            <div class="col-md-3 agile_team_grid team-left-w3l-agile">
                <div class="agile_team_grid_main">
                    <img src="static/user/home/images/t3.jpg" alt=" " class="img-responsive" />
                    <div class="p-mask">
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li> <a href="#"><i class="fa fa-twitter"></i></a>  </li>

                            <li><a href="#"><i class="fa fa-dribbble"></i></a> </li>

                        </ul>
                    </div>
                </div>
                <div class="agile_team_grid1">
                    <h3>邓皓</h3>
                    <p>中国一流设计师</p>
                </div>
            </div>
            <div class="col-md-3 agile_team_grid team-left-w3l-agile">
                <div class="agile_team_grid_main">
                    <img src="static/user/home/images/t4.jpg" alt=" " class="img-responsive" />
                    <div class="p-mask">
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li> <a href="#"><i class="fa fa-twitter"></i></a>  </li>

                            <li><a href="#"><i class="fa fa-dribbble"></i></a> </li>

                        </ul>
                    </div>
                </div>
                <div class="agile_team_grid1">
                    <h3>范晓玉</h3>
                    <p>中国一流设计师</p>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //team -->

<div class="gallery" id="gallery">
    <div class="container">
        <h3 class="tittle">Our Matchs</h3>

        <div class="gallery-grids">
            <section>
                <ul id="da-thumbs" class="da-thumbs">
                    <li>
                        <a href="images/g1.jpg" class="b-link-stripe b-animate-go  thickbox">
                            <img src="static/user/home/images/g1.jpg" alt="" />
                            <div>
                                <h5><span>穿衣搭配 </span>造型</h5>
                                <p>non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="images/g2.jpg" class="b-link-stripe b-animate-go  thickbox">
                            <img src="static/user/home/images/g2.jpg" alt="" />
                            <div>
                                <h5><span>穿衣搭配 </span>Trendz</h5>
                                <p>non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="images/g3.jpg" class="b-link-stripe b-animate-go  thickbox">
                            <img src="static/user/home/images/g3.jpg" alt="" />
                            <div>
                                <h5><span>穿衣搭配 </span>Trendz</h5>
                                <p>non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="images/g4.jpg" class="b-link-stripe b-animate-go  thickbox">
                            <img src="static/user/home/images/g4.jpg" alt="" />
                            <div>
                                <h5><span>穿衣搭配 </span>Trendz</h5>
                                <p>non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="images/g4.jpg" class="b-link-stripe b-animate-go  thickbox">
                            <img src="static/user/home/images/g5.jpg" alt="" />
                            <div>
                                <h5><span>穿衣搭配 </span>Trendz</h5>
                                <p>non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="images/g6.jpg" class="b-link-stripe b-animate-go  thickbox">
                            <img src="static/user/home/images/g6.jpg" alt="" />
                            <div>
                                <h5><span>穿衣搭配</span>Trendz</h5>
                                <p>non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                            </div>
                        </a>
                    </li>
                    <!-- 	<li>
                            <a href="images/g6.jpg" class="b-link-stripe b-animate-go  thickbox">
                                <img src="static/user/home/images/g6.jpg" alt="" />
                                <div>
                                    <h5><span>穿衣搭配 </span>Trendz</h5>
                                    <p>non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="images/g3.jpg" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g3.jpg" alt="" />
                                <div>
                                    <h5><span>穿衣搭配 </span>Trendz</h5>
                                    <p>non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="images/g1.jpg" class="b-link-stripe b-animate-go  thickbox">
                                <img src="images/g1.jpg" alt="" />
                                <div>
                                    <h5><span>穿衣搭配 </span>Trendz</h5>
                                    <p>non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                                </div>
                            </a>
                        </li> -->
                </ul>
            </section>
        </div>
        <!--script-->
    </div>
</div>
<!--//gallery-->
<!--news-starts-->
<div class="news" id="news">
    <div class="container">
        <h3 class="tittle">Our News</h3>
        <div class="news-bottom">
            <div class="news-one-wthree-agile">
                <div class="col-md-6 news-left">
                    <div class="biseller-column">
                        <a class="lightbox" href="#one">
                            <img src="static/user/home/images/n1.jpg" alt=""/>
                        </a>
                        <div class="lightbox-target" id="one">
                            <img src="static/user/home/images/n1.jpg" alt=""/>
                            <p class="pop">Duis bibendum pellentesque nisi eget volutpat. Nunc rhoncus ultrices lectus.Aliquam eu dui quis orci ultrices eleifend ut non massa.non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                            <a class="lightbox-close" href="#"> </a>

                            <div class="clearfix"> </div>

                        </div>
                    </div>

                </div>
                <div class="col-md-6 news-right">
                    <a href="#one"><h4>Pellentesque mollis malesuada</h4></a>
                    <h5>30.03.2016</h5>
                    <p class="one">Duis bibendum pellentesque nisi eget volutpat. Nunc rhoncus ultrices lectus.Aliquam eu dui quis orci ultrices eleifend ut non massa. Duis commodo, ante in vulputate iaculis, libero ex fringilla dolor id laoreet augue. Maecenas dui diam, pellentesque et.</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="news-one-wthree-agile">
                <div class="col-md-6 news-right">
                    <a href="#three"><h4>Pellentesque mollis malesuada</h4></a>
                    <h5>12.09.2016</h5>
                    <p class="one">Duis bibendum pellentesque nisi eget volutpat. Nunc rhoncus ultrices lectus.Aliquam eu dui quis orci ultrices eleifend ut non massa. Duis commodo, ante in vulputate iaculis, libero ex fringilla dolor id laoreet augue. Maecenas dui diam, pellentesque et.</p>
                </div>
                <div class="col-md-6 news-left">
                    <div class="biseller-column">
                        <a class="lightbox" href="#three">
                            <img src="static/user/home/images/n2.jpg" alt=""/>
                        </a>
                        <div class="lightbox-target" id="three">
                            <img src="static/user/home/images/n2.jpg" alt=""/>
                            <p class="pop">Duis bibendum pellentesque nisi eget volutpat. Nunc rhoncus ultrices lectus.Aliquam eu dui quis orci ultrices eleifend ut non massa.non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                            <a class="lightbox-close" href="#"> </a>

                            <div class="clearfix"> </div>
                        </div>
                    </div>

                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="news-one-wthree-agile">
                <div class="col-md-6 news-left">
                    <div class="biseller-column">
                        <a class="lightbox" href="#two">
                            <img src="static/user/home/images/n3.jpg" alt=""/>
                        </a>
                        <div class="lightbox-target" id="two">
                            <img src="static/user/home/images/n3.jpg" alt=""/>
                            <p class="pop">Duis bibendum pellentesque nisi eget volutpat. Nunc rhoncus ultrices lectus.Aliquam eu dui quis orci ultrices eleifend ut non massa.non suscipit leo fringilla non suscipit leo fringilla molestie</p>
                            <a class="lightbox-close" href="#"> </a>

                            <div class="clearfix"> </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6 news-right">
                    <a href="#two"><h4>Pellentesque mollis malesuada</h4></a>
                    <h5>30.08.2016</h5>
                    <p class="one">Duis bibendum pellentesque nisi eget volutpat. Nunc rhoncus ultrices lectus.Aliquam eu dui quis orci ultrices eleifend ut non massa. Duis commodo, ante in vulputate iaculis, libero ex fringilla dolor id laoreet augue. Maecenas dui diam, pellentesque et.</p>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!--news-end-->
<!--Testimonials-->
<div class="friends-section" id="test">
    <div class="container">
        <h3 class="tittle two">TEAM</h3>


        <div  class="callbacks_container">
            <ul class="rslides" id="slider3">
                <li>
                    <div class="testimonial-content">
                        <p> <img src="static/user/home/images/quote.png" class="img-responsive" alt="">Fusce feugiat malesuada odio orbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna onece accumsan malesuada orci. <img src="static/user/home/images/quote1.png" class="img-responsive" alt=""> </p>
                    </div>
                    <div  class="test"> <img src="static/user/home/images/t1.jpg" class="img-responsive" alt=""><h5>王振</h5></div>
                </li>
                <li>
                    <div class="testimonial-content">
                        <p> <img src="static/user/home/images/quote.png" class="img-responsive" alt="">Lorem malesuada odio orbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna onece accumsan malesuada orci. <img src="static/user/home/images/quote1.png" class="img-responsive" alt=""> </p>
                    </div>
                    <div  class="test">  <img src="static/user/home/images/t3.jpg" class="img-responsive" alt=""><h5>高鑫宇</h5></div>
                </li>
                <li>
                    <div class="testimonial-content">
                        <p> <img src="static/user/home/images/quote.png" class="img-responsive" alt="">Dosis malesuada odio orbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna onece accumsan malesuada orci. <img src="static/user/home/images/quote1.png" class="img-responsive" alt=""> </p>
                    </div>
                    <div  class="test"> <img src="static/user/home/images/t4.jpg" class="img-responsive" alt=""><h5>李莉莉</h5></div>

                </li>
                <li>
                    <div class="testimonial-content">
                        <p> <img src="static/user/home/images/quote.png" class="img-responsive" alt="">Dosis malesuada odio orbi nunc odio gravida at cursus nec luctus a lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna onece accumsan malesuada orci. <img src="static/user/home/images/quote1.png" class="img-responsive" alt=""> </p>
                    </div>
                    <div  class="test"> <img src="static/user/home/images/t4.jpg" class="img-responsive" alt=""><h5>常珂</h5></div>

                </li>
            </ul>
        </div>


    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        /*
        var defaults = {
              containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
         };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


<!-- dropdown -->
<script src="static/user/home/js/jquery.easydropdown.js"></script>
<link href="static/user/home/css/nav.css" rel="stylesheet" type="text/css" media="all"/>
<script src="static/user/home/js/modernizr.custom.js"></script>
<script src="static/user/home/js/jquery-1.11.1.min.js"></script>
<!--banner-Slider-->
<script src="static/user/home/js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
        // Slideshow 4
        $("#slider4").responsiveSlides({
            auto: true,
            pager: true,
            nav:false,
            speed: 500,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

    });
</script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
        // Slideshow 3
        $("#slider3").responsiveSlides({
            auto: true,
            pager:false,
            nav:true,
            speed: 500,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

    });
</script>
<script type="text/javascript" src="static/user/home/js/move-top.js"></script>
<script type="text/javascript" src="static/user/home/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
        });
    });
</script>
<!--/script-->
<script src="static/user/home/js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="static/user/home/css/chocolat.css" type="text/css" media="screen">
<!--light-box-files -->
<script type="text/javascript">
    $(function() {
        $('.gallery a').Chocolat();
    });
</script>
<script type="text/javascript" src="static/user/home/js/jquery.hoverdir.js"></script>
<script type="text/javascript">
    $(function() {

        $(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

    });
</script>
<!-- //gallery -->
<!-- pop-up-box -->
<link href="static/user/home/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<script src="static/user/home/js/jquery.magnific-popup.js" type="text/javascript"></script>
<script>
    $(document).ready(function() {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });
    });
</script>

<!--//pop-up-box -->
<!--JS-->
<script type="text/javascript" src="static/user/home/js/bootstrap-3.1.1.min.js"></script>

<!--//JS-->



<%@ include file="footer.jsp" %>
</body>
</html>
