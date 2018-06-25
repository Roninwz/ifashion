<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: gxy
  Date: 2018/6/6
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<base href="<%=basePath%>">
<head>
    <meta charset="utf-8">
    <title>设计师列表</title>

    <link href="static/user/online/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="static/user/online/js/jquery.js"></script>
    <script src="static/user/online/js/bootstrap.min.js"></script>


    <!--导航栏-->
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css" />
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css"/>
    <script type="text/javascript" src="static/user/common/top/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="static/user/common/top/js/index_search.js"></script>
    <!--导航栏-->

    <link href="static/user/online/css/designer.css" rel="stylesheet"/>


    <link rel="stylesheet" href="static/user/online/css/public.css" />
    <!--  <link rel="stylesheet" href="Css/reset.css" />-->
    <link rel="stylesheet" type="text/css" href="static/user/online/css/site.css" />
    <link rel="stylesheet" type="text/css" href="static/user/online/css/member.css" />
    <!--  <link rel="stylesheet" type="text/css" href="Css/architect.css" />-->

    <!--导航栏-->
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css" />
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css"/>
   <%-- <script type="text/javascript" src="static/user/common/top/js/jquery-1.11.2.min.js"></script>
--%>
    <!--底部-->
    <link href="static/user/common/foot/css/foot.css" rel="stylesheet" type="text/css">

    <style>
        #myCarousel{
            width:100%;
            margin-left:auto;
            margin-right:auto;

        }
        .item img.lunbo{
            height:450px;

        }
        #content-list{
            width:90%;
            margin-left:auto;
            margin-right:auto;
        }
        #content-list .listing-content .listing-author-box .myimg{
            width:50px;
            height:50px;
        }
        .listingworks img{
            width: 130px;
            height: 130px;
        }

    </style>
</head>
<body>

<%@ include file="../header.jsp" %>

<!--crazy end-->
<div id="myCarousel" class="carousel slide">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- Carousel items -->
    <div class="carousel-inner">
        <div class="active item"><img class="lunbo"  src="static/user/online/images/des_lunbo_p1.jpg"/></div>
        <div class="item"><img class="lunbo"  src="static/user/online/images/des_lunbo_p2.jpg"/></div>
        <div class="item"><img class="lunbo"  src="static/user/online/images/5f67450a-126e-441a-a52d-066acfa908a7.png"/></div>
    </div>
    <!-- Carousel nav -->
    <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>


<div class="wrp clearfix" id="content-list">
    <!--    <div class="list-goods" style=" float:none; margin-top:0px; margin-left:120px; width:980px">-->
    <div class="listing-content">
        <c:forEach items="${userList}" var="user">
            <div class="listing-author-box">
            <div class="listing-author clearfix">
                <div class="listing-author-img">
                    <a href="user/online_designerMainPage.action?id=${user.userId}">
                        <img class="myimg" src="${user.userImgurl}" />
                    </a>
                </div>
                <div class="listing-author-left" style="width:625px">
                    <p class="listing-author-name">${user.truename}原创设计</p>
                    <p class="listing-author-icon">
                        ${fn:split(user.userIntroduce,"。")[0]}
                       <%-- ${user.userIntroduce}--%>
                    </p>
                </div>
            </div>
            <div class="listing-works clearfix">
                <c:forEach var="goods" items="${map[user]}">
                    <div class="listingworks">
                        <p class="fd_bg">
                            <a href="${pageContext.request.contextPath }/user/online_buy.action?id=${goods.goodsId}&userId=${user.userId}" target="_blank">
                                <img  src="${goods.goodsImgList[0].goodsImgurl}"/>
                            </a>
                        </p>
                        <p class="idx-more"><a href="${pageContext.request.contextPath }/user/online_buy.action?id=${goods.goodsId}&userId=${user.userId}" target="_blank">${goods.goodsName}</a></p>
                        <p class="price">￥${goods.goodsPrice}</p>
                    </div>
                </c:forEach>

            </div>
            </div>
        </c:forEach>


    <!--MvcPager 1.5 for ASP.NET MVC 3.0 © 2009-2011 Webdiyer (http://www.webdiyer.com)-->
    <%--<div class="idx-page"><span class="page"><a disabled="disabled">&lt;&lt;上一页</a></span>&nbsp;&nbsp;<span class="page cur">1</span>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=2'>2</a></span>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=3'>3</a></span>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=4'>4</a></span>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=5'>5</a></span>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=6'>6</a></span>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=7'>7</a></span>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=8'>8</a></span>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=9'>9</a></span>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=10'>10</a></span>&nbsp;&nbsp;<a href='/Designer/Designerlist?orderType=1&page=11'>...</a>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=158'>158</a></span>&nbsp;&nbsp;<span class="page"><a href='/Designer/Designerlist?orderType=1&page=2'>下一页&gt;&gt;</a></span></div>--%>
    <!--MvcPager 1.5 for ASP.NET MVC 3.0 © 2009-2011 Webdiyer (http://www.webdiyer.com)-->
</div>
</div>
</div>
<script>
    $('.carousel').carousel({
        interval: 2000
    });
</script>
<script>

    $(".community").mouseover(function(){

        $("#list").css("background-color","#F2F2F2").css("width","145px").css("margin-left","330px").css("visibility","visible").css("text-align","center");
    });

    $(".community").mouseout(function(){
        $("#list").css("background-color","#F2F2F2").css("width","145px").css("margin-left","220px").css("visibility","hidden");
    });


    $(".myorder").mouseover(function(){

        $("#order").css("background-color","#F2F2F2").css("width","217px").css("margin-left","440px").css("visibility","visible").css("text-align","center");
        $("#order li").css("margin-top","-6px");
    });


    $(".myorder").mouseout(function(){
        $("#order").css("background-color","#F2F2F2").css("width","140px").css("margin-left","430px").css("visibility","hidden");
    });

</script>
<%--<div class="footer" style="margin-top:50px; height:440px" >
    <div class="footer-wrap">
        <div class="footer-info">
            <div class="footer-address col-md-6">
                <div class="footer-logo">
                    <span></span>
                    <h3>iFashion</h3>
                </div>
                <p>郑州航空工业管理学院东校区</p>
                <p>客服电话：000-000-0000</p>
                <p>邮箱：11111111@qq.com</p>
            </div>
            <div class="footer-nav col-md-6 clearfix">
                <dl class="col-md-4">
                    <dt><span>关于iFashion</span></dt>
                    <dd><a href="">网站地图</a></dd>
                    <dd><a href="">版权声明</a></dd>
                    <dd><a href="">加入我们</a></dd>
                    <dd><a href="">联系我们</a></dd>
                </dl>
                <dl class="col-md-4">
                    <dt><span>iFashion产品</span></dt>
                    <dd><a href="">穿衣搭配</a></dd>
                    <dd><a href="">社区精选</a></dd>
                    <dd><a href="">私人订制</a></dd>
                    <dd><a href="">资讯</a></dd>
                </dl>
                <dl class="col-md-4">
                    <dt><span>商业合作</span></dt>
                    <dd><a href="" target="_blank">设计师合作</a></dd>
                    <dd><a class="kol-join">杂志合作</a></dd>
                    <dd><a class="kol-join">媒体合作</a></dd>
                </dl>
            </div>
        </div>
        <div class="copyright">
            <p>Copyright ©2016 京 ICP 备 16021078 号</p>
            <p>ICP 号: 京 B2-20170261</p>
        </div>
    </div>
</div>--%>
<%@ include file="../footer.jsp" %>

</body>


</html>
