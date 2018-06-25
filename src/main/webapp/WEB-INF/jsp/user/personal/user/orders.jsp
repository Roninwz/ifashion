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

    <!-- 日期插件 -->
    <script src="${pageContext.request.contextPath}/static/user/person/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <script src="static/user/person/js/amazeui.js" type="text/javascript"></script>
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


            <div class="user-order">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
                </div>
                <hr/>

                <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

                    <ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">待付款</a></li>
                        <li><a href="#tab2">待发货</a></li>
                        <li><a href="#tab3">待收货</a></li>
                        <li><a href="#tab4">待评价</a></li>
                        <li><a href="#tab5">已评价</a></li>
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price" style="margin-left:10px;">
                                    <td class="td-inner">价钱</td>
                                </div>
                                <%--<div class="th th-number">--%>
                                    <%--<td class="td-inner">数量</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-operation">--%>
                                    <%--<td class="td-inner">商品操作</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-amount">--%>
                                    <%--<td class="td-inner">合计</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-status">--%>
                                    <%--<td class="td-inner">交易状态</td>--%>
                                <%--</div>--%>
                                <div class="th th-change" style="float: right;" >
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">

                                    <!--交易成功-->
                                    <c:forEach items="${orders0}" var="orders0">
                                    <div class="order-status5">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">${orders0.orderNumber}</a></div>
                                            <span>成交时间：${orders0.ordersDate}</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="${orders0.goodschildImg}" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>${orders0.goodsName}</p>
                                                                    <p class="info-little">颜色：${orders0.color}
                                                                    </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                                ${orders0.goodsPrice}
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">

                                                <div class="move-right">
                                                    <%--<li class="td td-status">--%>
                                                        <%--<div class="item-status">--%>
                                                            <%--<p class="Mystatus">待支付</p>--%>
                                                        <%--</div>--%>
                                                    <%--</li>--%>
                                                    <li class="td td-change" style="float: right;">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            一键支付</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    </c:forEach>
                                    <!--交易失败-->
                                    <!--待发货-->
                                </div>

                            </div>

                        </div>
                        <div class="am-tab-panel am-fade" id="tab2">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price" style="margin-left:10px;">
                                    <td class="td-inner">价钱</td>
                                </div>
                                <%--<div class="th th-number">--%>
                                <%--<td class="td-inner">数量</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-operation">--%>
                                <%--<td class="td-inner">商品操作</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-amount">--%>
                                <%--<td class="td-inner">合计</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-status">--%>
                                <%--<td class="td-inner">交易状态</td>--%>
                                <%--</div>--%>
                                <div class="th th-change" style="float: right;" >
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">

                                    <!--交易成功-->
                                    <c:forEach items="${orders1}" var="orders1">
                                        <div class="order-status5">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：<a href="javascript:;">${orders1.orderNumber}</a></div>
                                                <span>成交时间：${orders1.ordersDate}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${orders1.goodschildImg}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                        <p>${orders1.goodsName}</p>
                                                                        <p class="info-little">颜色：${orders1.color}
                                                                        </p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${orders1.goodsPrice}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">

                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">

                                                    <div class="move-right">
                                                            <%--<li class="td td-status">--%>
                                                            <%--<div class="item-status">--%>
                                                            <%--<p class="Mystatus">待支付</p>--%>
                                                            <%--</div>--%>
                                                            <%--</li>--%>
                                                        <li class="td td-change" style="float: right;">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                提醒发货</div>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </c:forEach>
                                    <!--交易失败-->
                                    <!--待发货-->
                                </div>

                            </div>

                        </div>
                        <div class="am-tab-panel am-fade" id="tab3">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price" style="margin-left:10px;">
                                    <td class="td-inner">价钱</td>
                                </div>
                                <%--<div class="th th-number">--%>
                                <%--<td class="td-inner">数量</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-operation">--%>
                                <%--<td class="td-inner">商品操作</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-amount">--%>
                                <%--<td class="td-inner">合计</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-status">--%>
                                <%--<td class="td-inner">交易状态</td>--%>
                                <%--</div>--%>
                                <div class="th th-change" style="float: right;" >
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">

                                    <!--交易成功-->
                                    <c:forEach items="${orders2}" var="orders2">
                                        <div class="order-status5">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：<a href="javascript:;">${orders2.orderNumber}</a></div>
                                                <span>成交时间：${orders2.ordersDate}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${orders2.goodschildImg}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                        <p>${orders2.goodsName}</p>
                                                                        <p class="info-little">颜色：${orders2.color}
                                                                        </p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${orders2.goodsPrice}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">

                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">

                                                    <div class="move-right">
                                                            <%--<li class="td td-status">--%>
                                                            <%--<div class="item-status">--%>
                                                            <%--<p class="Mystatus">待支付</p>--%>
                                                            <%--</div>--%>
                                                            <%--</li>--%>
                                                        <li class="td td-change" style="float: right;">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                确认收货</div>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </c:forEach>
                                    <!--交易失败-->
                                    <!--待发货-->
                                </div>

                            </div>
                        </div>
                        <div class="am-tab-panel am-fade" id="tab4">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price" style="margin-left:10px;">
                                    <td class="td-inner">价钱</td>
                                </div>
                                <%--<div class="th th-number">--%>
                                <%--<td class="td-inner">数量</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-operation">--%>
                                <%--<td class="td-inner">商品操作</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-amount">--%>
                                <%--<td class="td-inner">合计</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-status">--%>
                                <%--<td class="td-inner">交易状态</td>--%>
                                <%--</div>--%>
                                <div class="th th-change" style="float: right;" >
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">

                                    <!--交易成功-->
                                    <c:forEach items="${orders3}" var="orders3">
                                        <div class="order-status5">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：<a href="javascript:;">${orders3.orderNumber}</a></div>
                                                <span>成交时间：${orders3.ordersDate}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${orders3.goodschildImg}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                        <p>${orders3.goodsName}</p>
                                                                        <p class="info-little">颜色：${orders3.color}
                                                                        </p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${orders3.goodsPrice}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">

                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">

                                                    <div class="move-right">
                                                            <%--<li class="td td-status">--%>
                                                            <%--<div class="item-status">--%>
                                                            <%--<p class="Mystatus">待支付</p>--%>
                                                            <%--</div>--%>
                                                            <%--</li>--%>
                                                        <li class="td td-change" style="float: right;">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                <a href="user/goodsOrdercomment.action?orderNumber=${orders3.orderNumber}">去评价</a> </div>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </c:forEach>
                                    <!--交易失败-->
                                    <!--待发货-->
                                </div>

                            </div>
                        </div>

                        <div class="am-tab-panel am-fade" id="tab5">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price" style="margin-left:10px;">
                                    <td class="td-inner">价钱</td>
                                </div>
                                <%--<div class="th th-number">--%>
                                <%--<td class="td-inner">数量</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-operation">--%>
                                <%--<td class="td-inner">商品操作</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-amount">--%>
                                <%--<td class="td-inner">合计</td>--%>
                                <%--</div>--%>
                                <%--<div class="th th-status">--%>
                                <%--<td class="td-inner">交易状态</td>--%>
                                <%--</div>--%>
                                <div class="th th-change" style="float: right;" >
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">

                                    <!--交易成功-->
                                    <c:forEach items="${orders4}" var="orders4">
                                        <div class="order-status5">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：<a href="javascript:;">${orders4.orderNumber}</a></div>
                                                <span>成交时间：${orders4.ordersDate}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${orders4.goodschildImg}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                        <p>${orders4.goodsName}</p>
                                                                        <p class="info-little">颜色：${orders4.color}
                                                                        </p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${orders4.goodsPrice}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">

                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">

                                                    <div class="move-right">
                                                            <%--<li class="td td-status">--%>
                                                            <%--<div class="item-status">--%>
                                                            <%--<p class="Mystatus">待支付</p>--%>
                                                            <%--</div>--%>
                                                            <%--</li>--%>
                                                        <li class="td td-change" style="float: right;">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                您已评价</div>
                                                        </li>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </c:forEach>
                                    <!--交易失败-->
                                    <!--待发货-->
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!--底部-->



        <%@ include file="../../footer.jsp" %>


    </div>
    <%@ include file="aside.jsp" %>
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
