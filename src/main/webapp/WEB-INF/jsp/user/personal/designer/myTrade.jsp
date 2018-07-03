<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/21
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li class="active_tab big_button">
                    <div class="out_border">
                        <div class="button_wrapper">
                            <div class="in_border">
                                <a href="${pageContext.request.contextPath }/designer/myTrade.action" title="我的接单" class="the_button">
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
            <li class="i_32_dashboard">
                <a href="${pageContext.request.contextPath }/designer/design.action" title="General Info">
                    <span class="tab_label">设计之家</span>

                </a>
            </li>
            <li class="i_32_inbox">
                <a href="${pageContext.request.contextPath }/user/mycollections.action" title="Your Messages">
                    <span class="tab_label">我的收藏</span>

                </a>
            </li>
            <li class="i_32_charts">
                <a href="${pageContext.request.contextPath }/user/designUp.action" title="Visual Data">
                    <span class="tab_label">设计上传</span>

                </a>
            </li>
            <li class="i_32_ui">
                <a href="${pageContext.request.contextPath }/user/myAttention.action" title="Kit elements">
                    <span class="tab_label">关注&粉丝</span>

                </a>
            </li>
            <li class="i_32_tables">
                <a href="${pageContext.request.contextPath }/designer/myPublish.action" title="Some Rows">
                    <span class="tab_label">我的发表</span>

                </a>
            </li>
            <li class="i_32_forms">
                <a href="${pageContext.request.contextPath }/designer/personalInfo.action" title="Some Fields">
                    <span class="tab_label">个人信息</span>
                </a>
            </li>
        </ul>
    </aside>

    <div class="contents">
        <div class="grid_wrapper">

            <div class="rt_content">
                <div class="page_title">
                    <h2 class="fl">订单列表示例</h2>
                </div>
                <%--<section class="mtb">--%>
                    <%--<select class="select">--%>
                        <%--<option>订单状态</option>--%>
                        <%--<option>待付款</option>--%>
                        <%--<option>待发货</option>--%>
                        <%--<option>待评价</option>--%>
                    <%--</select>--%>
                    <%--<input class="textbox textbox_225" placeholder="输入订单编号或收件人姓名/电话..." type="text">--%>
                    <%--<input value="查询" class="group_btn" type="button">--%>
                <%--</section>--%>
                <table class="table">
                    <tbody>
                    <tr>
                        <th>订单编号</th>
                        <th>收件人</th>
                        <th>联系电话</th>
                        <th>收件人地址</th>
                        <th>订单金额</th>
                        <th>配送方式</th>
                        <th>快递编号</th>
                        <th>操作</th>
                    </tr>
                    <c:forEach var="roInfos" items="${roInfos}">
                        <tr>
                            <td class="center">${roInfos.orderNumber}</td>
                            <td>${roInfos.receiveUserName}</td>
                            <td>${roInfos.tel}</td>
                            <td>
                                <address>${roInfos.addressContent}</address>
                            </td>
                            <td class="center"><strong class="rmb_icon">${roInfos.goodsPrice}</strong></td>
                            <c:choose>
                                <c:when test="${roInfos.ordersState=='0'}">
                                    <td class="center">未发货</td>
                                </c:when>
                                <c:otherwise>
                                    <td class="center">已发货</td>
                                </c:otherwise>
                            </c:choose>
                            <td class="center">${roInfos.trueOrder}</td>
                            <td class="center">
                                <a href="${pageContext.request.contextPath }/designer/myTradeInfo.action?orderNumber=${roInfos.orderNumber}" title="查看订单" class="link_icon" target="_blank">查看订单</a>

                            </td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td class="center">201602011207</td>
                        <td>DeathGhost</td>
                        <td>18300000000</td>
                        <td>
                            <address>陕西省西安市未央区幸福路222号</address>
                        </td>
                        <td class="center"><strong class="rmb_icon">59.00</strong></td>
                        <td class="center">圆通快递</td>
                        <td class="center"></td>
                        <td class="center">
                            <a href="" title="查看订单" class="link_icon" target="_blank">查看订单</a>

                        </td>
                    </tr>
                    </tbody>
                </table>

            </div>


        </div>
    </div>

</div>
</div>
</body>
</html>
