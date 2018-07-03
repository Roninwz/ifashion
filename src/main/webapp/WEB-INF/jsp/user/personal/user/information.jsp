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
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>
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

                <!--头像 -->
                <div class="user-infoPic">
                    <%--<form class="am-form am-form-horizontal" action="user/updateuserImgurl.action" method="post">--%>
                    <div class="filePic">
                        <input type="file" name="userImgurl" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
                    <c:if test="${not empty user.userImgurl}">
                        <img class="am-circle am-img-thumbnail" src="${user.userImgurl}" alt="" />
                    </c:if>
                        <c:if test="${empty user.userImgurl}">
                            <img class="am-circle am-img-thumbnail" src="static/user/online/images/p9.jpg" alt="" />
                        </c:if>
                    </div>

                    <p class="am-form-help">修改头像</p>
                    <%--</form>--%>
                    <div class="info-m">
                        <div><b>用户名：<i>${user.username}</i></b></div>
                        <div class="u-level">
                                <span class="rank r2">
							            用户等级： <s class="vip1"></s><a class="classes" href="#">${rank.rankName}</a>
						            </span>
                        </div>
                        <%--<div class="u-safety">--%>
                            <%--<a href="safety.html">--%>
                                <%--账户安全--%>
                                <%--<span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">60分</i></span>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                    </div>
                </div>

                <!--个人信息 -->
                <div class="info-main">

                    <form class="am-form am-form-horizontal" action="user/updateuserinfo.action" method="post">
                        <div class="am-form-group">
                            <label for="user-name2" class="am-form-label">用户名</label>
                            <div class="am-form-content">
                                <input type="text" name="username" value="${user.username}" id="user-name2" placeholder="nickname">

                            </div>
                        </div>

                        <%--<div class="am-form-group">--%>
                            <%--<label for="user-name" class="am-form-label">姓名</label>--%>
                            <%--<div class="am-form-content">--%>
                                <%--<input type="text" id="user-name2" placeholder="name">--%>

                            <%--</div>--%>
                        <%--</div>--%>

                        <div class="am-form-group">
                            <label class="am-form-label">性别</label>
                            <div class="am-form-content sex">

                                <label class="am-radio-inline">
                                    <input type="radio" name="sex" value="M" data-am-ucheck
                                    <c:if test="${user.sex=='M'}">
                                           checked
                                    </c:if>

                                    > 男
                                </label>
                                <label class="am-radio-inline">
                                    <input type="radio" name="sex" value="F" data-am-ucheck
                                    <c:if test="${user.sex == 'F'}">
                                           checked
                                    </c:if>
                                    > 女
                                </label>
                                <%--<label class="am-radio-inline">--%>
                                    <%--<input type="radio" name="radio10" value="secret" data-am-ucheck> 保密--%>
                                <%--</label>--%>
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-birth" class="am-form-label">生日</label>

                            <div class="am-form-content">
                                <%--<fmt:formatDate value="${users.registerDate}" pattern="yyyy-MM-dd" />--%>
                                <%--<fmt:parseDate value="${user.birth}" var="birth" pattern="yyyy/MM/dd" type="date"/>--%>
                                <input type="text" id="user-name2" name="birth" value='<fmt:formatDate value="${user.birth}" pattern="yyyy-MM-dd" />' onClick="WdatePicker()" readonly>
                            </div>

                        </div>
                        <div class="am-form-group">
                            <label for="user-phone" class="am-form-label">电话</label>
                            <div class="am-form-content">
                                <input id="user-phone" name="tel" value="${user.tel}" placeholder="telephonenumber" type="tel">

                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-email" class="am-form-label">电子邮件</label>
                            <div class="am-form-content">
                                <input id="user-email" name="email"  value="${user.email}" placeholder="Email" type="email">

                            </div>
                        </div>


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
    <%@ include file="./aside.jsp" %>
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

</div>

</body>
</html>
