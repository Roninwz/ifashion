<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/21
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../header.jsp" %>


<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">
    <link rel="stylesheet" href="static/user/designer/css/style.css" />
    <link rel="stylesheet" href="static/user/designer/css/xuanxiangka.css">

    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <%--<script type="text/javascript" src="static/user/login/js/modal.js"></script>--%>
    <%--其它js--%>

</head>
<body style="background-color: white">
<c:set var="user" value="${sessionScope.user}"/>
<div id="back">
<div class="changePattern">
    <span id="pattern1"></span>
    <span id="pattern2"></span>
    <span id="pattern3"></span>
    <span id="pattern4"></span>
    <span id="pattern5"></span>
    <span id="pattern6"></span>
</div>

<header class="main_header">
    <div class="wrapper">
        <div class="logo1">
            <a href="#" title="${user.username}" style="float:left; margin-top:-10px">
                <img src="${user.userImgurl}" alt="${user.username}" width="100" height="100"/>
            </a>
            <a href="#" style="float:left; color:#999; margin-top:15px; font-size:30px; margin-left:20px">${user.username}</a>
        </div>
        <nav class="top_buttons">
            <ul>

                <li class="big_button">
                    <div class="big_count">
                        <span>7</span>
                    </div>
                    <div class="out_border">
                        <div class="button_wrapper">
                            <div class="in_border">
                                <a href="#" title="私信" class="the_button">
                                    <span class="i_32_support"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="big_button">
                    <div class="out_border">
                        <div class="button_wrapper">
                            <div class="in_border">
                                <a href="#" title="我的接单" class="the_button">
                                    <span class="i_32_delivery"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </nav>
    </div>
</header>

<div class="wrapper contents_wrapper">

    <aside class="sidebar">
        <ul class="tab_nav">
             <li class="active_tab i_32_dashboard">
            <a href="${pageContext.request.contextPath}/user/personalHome.action" title="General Info">
                <span class="tab_label">设计之家</span>

            </a>
            </li>
            <li class="i_32_inbox">
                <a href="${pageContext.request.contextPath}/user/mycollections.action" title="Your Messages">
                    <span class="tab_label">我的收藏</span>

                </a>
            </li>
            <li class="i_32_charts">
                <a href="${pageContext.request.contextPath}/user/designUp.action" title="Visual Data">
                    <span class="tab_label">设计上传</span>

                </a>
            </li>
            <li class="i_32_ui">
                <a href="${pageContext.request.contextPath}/user/myAttention.action" title="Kit elements">
                    <span class="tab_label">关注&粉丝</span>

                </a>
            </li>
            <li class="i_32_tables">
                <a href="${pageContext.request.contextPath }/designer/myPublish.action" title="我的发表">
                    <span class="tab_label">我的发表</span>

                </a>
            </li>
            <li class="i_32_forms">
                <a href="${pageContext.request.contextPath }/designer/personalInfo.action" title="个人信息">
                    <span class="tab_label">个人信息</span>
                </a>
            </li>
        </ul>
    </aside>

    <div class="contents">
        <div class="grid_wrapper">

            <div class="con clearfix" id="one" style="display: block;">
                <c:forEach var="goods" items="${goods}">
                    <div class="exp-lf noMleft">
                            <%--static/user/article/news/image/liDUq8dHh1EJ2.png--%>
                        <a href="" title="“源自运动，融和时尚”-JOMA发布2018秋冬新品" target="_blank">
                            <span class="img-txt1">￥${goods.goodsPrice}</span>
                            <c:forEach var="goodsImgList" items="${goods.goodsImgList}" begin="0" end="0">
                            <img src="${goodsImgList.goodsImgurl}" alt="${goods.goodsIntroduce}" width="250" height="300"/>
                            </c:forEach>
                            <span class="img-txt">${goods.goodsName}</span>

                        </a>
                    </div>
                </c:forEach>
                <div class="exp-center">
                    <a href="" title="“源自运动，融和时尚”-JOMA发布2018秋冬新品" target="_blank">
                        <span class="img-txt1">￥200</span>
                        <img src="static/user/article/news/image/liz57SeFT8dRA.jpg" alt="“源自运动，融和时尚”-JOMA发布2018秋冬新品" width="250" height="300"/>
                        <span class="img-txt">“源自运动，融和时尚”-JOMA发布2018秋冬新品</span>
                    </a>
                </div>
            </div>


        </div>
    </div>

</div>



    <%@ include file="../../footer.jsp" %>
</div>
</body>
</html>

