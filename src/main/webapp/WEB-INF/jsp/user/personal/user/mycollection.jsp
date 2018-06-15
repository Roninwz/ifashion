<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>Title</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script src="static/user/login/js/login.js"></script>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>


    <!-- 公用css  -->
    <link href="static/user/person/css/admin.css" rel="stylesheet" type="text/css">
    <link href="static/user/person/css/amazeui.css" rel="stylesheet" type="text/css">
    <!--  个人中心共用的 -->
    <link href="static/user/person/css/personal.css" rel="stylesheet" type="text/css">
    <!-- 个人信息 info -->
    <link href="static/user/person/css/infstyle.css" rel="stylesheet" type="text/css">
    <!-- 订单 order -->
    <link href="static/user/person/css/orstyle.css" rel="stylesheet" type="text/css">
    <!-- 修改密码 password -->
    <link href="static/user/person/css/stepstyle.css" rel="stylesheet" type="text/css">
    <link href="static/user/person/css/newstyle.css" rel="stylesheet" type="text/css">
    <script src="static/user/person/js/amazeui.js" type="text/javascript"></script>
    <!-- 日期插件 -->
    <script src="${pageContext.request.contextPath }/static/user/person/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <%--<script src="static/user/person/js/amazeui.js" type="text/javascript"></script>--%>
    <style>

        /*.person-right{*/
            /*position: absolute;*/
            /*margin-left: 300px;*/
            /*margin-top:300px;*/
        /*}*/
    </style>

</head>
<body>

<%@ include file="../../header.jsp" %>

<b class="line"></b>

<div class="center">
    <div class="col-main">
        <!-- 公共内容填充在这里 -->
        <div class="main-wrap">

            <div class="user-news">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的收藏</strong> / <small>News</small></div>
                </div>
                <hr/>

                <div class="am-tabs am-tabs-d2" data-am-tabs>
                    <ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">文章收藏</a></li>
                        <li><a href="#tab2">话题收藏</a></li>
                        <%--<li><a href="#tab3">交易信息</a></li>--%>

                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                                <%--<div class="goods-date" data-date="2015-12-21">--%>
                                    <%--<span><i class="month-lite">12</i>.<i class="day-lite">21</i>	<i class="date-desc">今天</i></span>--%>
                                <%--</div>--%>

                                <!--消息 -->
                                <c:forEach items="${myCollectionVosa}" var="myCollectionVosa">
                                <div class="s-msg-item s-msg-temp i-msg-downup">
                                    <h6 class="s-msg-bar"><span class="s-name"></span></h6>
                                    <div class="s-msg-content i-msg-downup-wrap">
                                        <div class="i-msg-downup-con">
                                            <a class="i-markRead" target="_blank" href="blog.html">
                                                <%--<img src="static/user/article/news/image/2c138362d83f7937da0b09fe5212684a.jpg" style="width: 100px;height:100px;">--%>
                                                <img src="${myCollectionVosa.imgurl}" style="width: 100px;height:100px;">
                                                <p class="s-main-content">
                                                    ${myCollectionVosa.articleTitle}
                                                </p>
                                                <p class="s-row s-main-content">
                                                    <a href="blog.html">
                                                        阅读全文 <i class="am-icon-angle-right"></i>
                                                    </a>
                                                </p>
                                            </a>
                                        </div>
                                    </div>
                                    <a class="i-btn-forkout" href="user/article?articleId=${myCollectionVosa.articleId}"><i class="am-icon-close am-icon-fw"></i></a>
                                </div>
                            </c:forEach>

                        </div>

                        <div class="am-tab-panel am-fade" id="tab2">
                            <c:forEach items="${myCollectionVost}" var="myCollectionVost">
                            <div class="s-msg-item s-msg-temp i-msg-downup">
                                <h6 class="s-msg-bar"><span class="s-name">每日新鲜事</span></h6>
                                <div class="s-msg-content i-msg-downup-wrap">
                                    <div class="i-msg-downup-con">
                                        <a class="i-markRead" target="_blank" href="blog.html">
                                                <%--<img src="static/user/article/news/image/2c138362d83f7937da0b09fe5212684a.jpg" style="width: 100px;height:100px;">--%>
                                            <img src="${myCollectionVost.imgurl}" style="width: 100px;height:100px;">
                                            <p class="s-main-content">
                                                    ${myCollectionVost.articleTitle}
                                            </p>
                                            <p class="s-row s-main-content">
                                                <a href="blog.html">
                                                    阅读全文 <i class="am-icon-angle-right"></i>
                                                </a>
                                            </p>
                                        </a>
                                    </div>
                                </div>
                                <a class="i-btn-forkout" href="user/topic.action?topicId=${myCollectionVost.articleId}"><i class="am-icon-close am-icon-fw"></i></a>
                            </div>
                            </c:forEach>
                        </div>


                    </div>
                </div>
            </div>


        </div>
        <%@ include file="../../footer.jsp" %>
        <!--底部-->

    <!--  左侧公用侧边栏  -->
    <%--<aside class="menu">--%>
        <%--<ul>--%>
            <%--<li class="person">--%>
                <%--<a href="index.html" class="per">个人中心</a>--%>
            <%--</li>--%>
            <%--<li class="person">--%>
                <%--<a href="#" class="person-detail">个人资料</a>--%>
                <%--<ul>--%>
                    <%--<li> <a href="persondetail.html">个人信息</a></li>--%>
                    <%--<li> <a href="safety.html">安全设置</a></li>--%>
                    <%--<li> <a href="address.html">收货地址</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
            <%--<li class="person">--%>
                <%--<a href="#" class="person-detail">我的交易</a>--%>
                <%--<ul>--%>
                    <%--<li><a href="order.html">订单管理</a></li>--%>
                    <%--<li> <a href="change.html">退款售后</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>


            <%--<li class="person">--%>
                <%--<a href="#" class="person-detail">我的小窝</a>--%>
                <%--<ul>--%>
                    <%--<li> <a href="publish.html">我的发表</a></li>--%>
                    <%--<li> <a href="collection.html">我的收藏</a></li>--%>
                    <%--<li> <a href="attention.html">我的关注</a></li>--%>
                    <%--<li> <a href="message.html">我的消息</a></li>--%>

                <%--</ul>--%>
            <%--</li>--%>

        <%--</ul>--%>
    <%--</aside>--%>

<%@ include file="./aside.jsp" %>
</div>






</body>
</html>
