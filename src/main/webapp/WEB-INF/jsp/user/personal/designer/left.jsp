<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/8
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--fmt  国际化格式--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>


<%@ include file="../../header.jsp" %>


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



    <link rel="stylesheet" type="text/css" href="static/user/designer/css/layout.css">
    <link rel="stylesheet" type="text/css" href="static/user/designer/css/hurst.css">
    <script src="static/user/designer/js/jquery.cookie.js" type="text/javascript"></script>
</head>
<body>

<!-- 左侧导航栏 -->
<div id="about">
    <div class="mTags wrap">
        <a href="#">iFashion</a>>
        <a href="/member/index/channel/7.html">设计师个人中心</a>
    </div>
    <div class="mebBox">
        <div class="meb-cont clearfix wrap">
            <div class="meb-nav left dInline">
                <ul class="clearfix">
                    <li class="on">
                        <a href="user/designer.action">设计师首页</a>
                    </li>
                    <li>
                        <a href="user/account.action">账户管理</a>
                    </li>
                    <li>
                        <a href="user/trade.action">交易中心</a>
                        <!-- 消息提醒，我的交易， -->
                    </li>
                    <li>
                        <a href="user/design.action">设计之家</a>
                        <!-- 我的作品  -->
                    </li>
                    <li>
                        <a href="user/other.action">其它</a>
                    </li>
                </ul>
            </div>
            <div class="meb-right right dInline">
                <div class="mr-top">
                    <div class="mr-top-div clearfix">
                        <!-- 设计师头像 -->
                        <span class="left">
                                <img src="images/photo.png" />
                            </span>
                        <!-- 设计师信息 -->
                        <div class="mr-infor left dInline">
                            <h2>中午好，尊敬的会员
                                <b>董平运</b>
                            </h2>
                            <p>
                                手机：15138911875 邮箱： | [
                                <a href="/Member/manage/channel/7/list/15">管理账户信息</a> ]
                            </p>
                        </div>
                    </div>
                </div>
                <div class="mr-detail">
                    <div class="me-box">
                        <div class="mx-a">
                            <ul class="clearfix">
                                <li>
                                    <img src="images/hu1.png"/>
                                    <span>您目前有 <a href="/Member/need/channel/7/list/11"><b>1</b></a> 个订单未付定金</span>
                                </li>
                                <li>
                                    <img src="images/hu2.png"/>
                                    <span>您共有 <a href="/Member/need/channel/7/list/11/tpl/4"><b>1</b></a> 个收藏的车型</span>
                                </li>
                            </ul>
                        </div>
                        <!-- <div class="mx-b">
                        <ul>
                            <li class="clearfix">
                                <span class="left">
                                    <img src="images/hu3.png"/>
                                </span>
                                <div class="mb-txt left dInline">
                                    <h2>马上参加 <a href="/Tailor/index/channel/4.html">私人定制</a> </h2>
                                    <p>没有您满意的车型吗，马上参加量身定制可预订指定车型，亿金名车为您量身定制</p>
                                </div>
                            </li>
                            <li class="clearfix last">
                                <span class="left">
                                    <img src="images/hu4.png"/>
                                </span>
                                <div class="mb-txt left dInline">
                                    <h2>您可以定制 <a href="#">到车通知</a> </h2>
                                    <p>不想在每天数以万计的车源中错过自己满意的二手车吗？亿金收集您的需求，第一时间为您推送符合您的信息</p>
                                </div>
                            </li>
                        </ul>
                    </div> -->
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- 左侧导航栏  -->




<%@ include file="../../footer.jsp" %>
</body>
</html>
