<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/5
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
</head>
<body>
<aside class="menu">
    <ul>
        <li class="person">
            <a href="user/personal.action" class="per">个人中心</a>
        </li>
        <li class="person">
            <a href="user/information.action" class="person-detail">个人资料</a>
            <ul>
                <li> <a href="user/information.action">个人信息</a></li>
                <li> <a href="user/safety.action">安全设置</a></li>
                <li> <a href="user/address.action">收货地址</a></li>

            </ul>
        </li>
        <li class="person">
            <a href="user/orders.action" class="person-detail">我的交易</a>
            <ul>
                <li><a href="user/orders.action">订单管理</a></li>
                <%--<li> <a href="user/information.action">退款售后</a></li>--%>
            </ul>
        </li>

        <li class="person">
            <a href="user/authstate.action" class="person-detail">认证中心</a>
            <ul>
                <li> <a href="user/designerauth.action">设计师认证</a></li>
                <li> <a href="user/authstate.action">认证状态</a></li>
            </ul>
        </li>
        <li class="person">
            <a href="user/mymessage.action" class="person-detail">我的小窝</a>
            <ul>
                <li> <a href="user/mypublish.action">我的发表</a></li>
                <li> <a href="user/mycollection.action">我的收藏</a></li>
                <li> <a href="user/myattention.action">我的关注</a></li>
                <li> <a href="user/mymessage.action">我的消息<span>
                </span></a></li>

            </ul>
        </li>
        <li class="person">
            <a href="http://wpa.qq.com/msgrd?v=3&uin=1597895998&site=qq&menu=yes" class="person-detail">在线帮助</a>
            <ul>
                <%--<li> <a href="user/mypublish.action">意见反馈</a></li>--%>
                <li> <a href="http://wpa.qq.com/msgrd?v=3&uin=1597895998&site=qq&menu=yes">QQ客服</a></li>
                </span></a></li>

            </ul>
        </li>
    </ul>
</aside>
</body>
</html>
