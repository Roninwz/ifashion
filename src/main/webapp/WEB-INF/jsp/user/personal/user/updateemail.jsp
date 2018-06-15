<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/4
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--fmt  国际化格式--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <meta charset="utf-8">
    <base href="<%=basePath%>">
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
            <div class="user-info">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
                </div>
                <%--<hr style="width:100%;"/>--%>

                <!--个人信息 -->
                <div class="info-main">
                    <form class="am-form am-form-horizontal" action="user/updateemailcheck.action" method="post">


                        <c:if test="${empty isError}">
                           <div>${isError}</div>
                        </c:if>
                        <div class="am-form-group">
                            <label for="user-name2" class="am-form-label">原邮箱</label>
                            <div class="am-form-content">
                                <input type="text" name="beforEmail" id="user-name1" placeholder="请输入原邮箱">

                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-name2" class="am-form-label">新邮箱</label>
                            <div class="am-form-content">
                                <input type="text" name="email" id="user-name2" placeholder="请输入新邮箱">

                            </div>
                        </div>
                        <%--<div class="am-form-group">--%>
                            <%--<label for="user-name2" class="am-form-label">确认密码</label>--%>
                            <%--<div class="am-form-content">--%>
                                <%--<input type="password" name="surePass" id="user-name3" placeholder="nickname">--%>

                            <%--</div>--%>
                        <%--</div>--%>

                        <div class="info-btn">
                            <div style="width: 100px;margin-left:70px;"><input type="submit" name="submit" value="保存修改"></div>
                        </div>

                    </form>
                </div>

            </div>

        </div>

        <!--底部-->



        <%@ include file="../../footer.jsp" %>



    </div>
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
    <%@ include file="aside.jsp" %>
</div>

</body>
</html>
