<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/4
  Time: 12:46
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
<head>
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


    <%--<script src="static/user/person/js/amazeui.js" type="text/javascript"></script>--%>


</head>
<body>

<%@ include file="../../header.jsp" %>

<b class="line"></b>

<div class="center">
    <div class="col-main">
        <!-- 公共内容填充在这里 -->
        <div class="main-wrap">

            <!--标题 -->
            <div class="user-safety">
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">账户安全</strong> / <small>Set&nbsp;up&nbsp;Safety</small></div>
                </div>
                <hr/>

                <!--头像 -->
                <div class="user-infoPic">

                    <div class="filePic">
                        <img class="am-circle am-img-thumbnail" src="../images/getAvatar.do.jpg" alt="" />
                    </div>

                    <p class="am-form-help">头像</p>

                    <div class="info-m">
                        <div><b>用户名：<i>小叮当</i></b></div>
                        <div class="u-level">
													<span class="rank r2">
														 <s class="vip1"></s><a class="classes" href="#">铜牌会员</a>
													</span>
                        </div>
                        <div class="u-safety">
                            <a href="safety.html">
                                账户安全
                                <span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">60分</i></span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="check">
                    <ul>
                        <li>
                            <i class="i-safety-lock"></i>
                            <div class="m-left">
                                <div class="fore1">登录密码</div>
                                <div class="fore2"><small>为保证您购物安全，建议您定期更改密码以保护账户安全。</small></div>
                            </div>
                            <div class="fore3">
                                <a href="password.html">
                                    <div class="am-btn am-btn-secondary">修改</div>
                                </a>
                            </div>
                        </li>
                        <!-- <li>
                            <i class="i-safety-wallet"></i>
                            <div class="m-left">
                                <div class="fore1">支付密码</div>
                                <div class="fore2"><small>启用支付密码功能，为您资产账户安全加把锁。</small></div>
                            </div>
                            <div class="fore3">
                                <a href="setpay.html">
                                    <div class="am-btn am-btn-secondary">立即启用</div>
                                </a>
                            </div>
                        </li> -->
                        <li>
                            <i class="i-safety-iphone"></i>
                            <div class="m-left">
                                <div class="fore1">手机验证</div>
                                <div class="fore2"><small>您验证的手机：186XXXXXXXX 若已丢失或停用，请立即更换</small></div>
                            </div>
                            <div class="fore3">
                                <a href="bindphone.html">
                                    <div class="am-btn am-btn-secondary">换绑</div>
                                </a>
                            </div>
                        </li>
                        <li>
                            <i class="i-safety-mail"></i>
                            <div class="m-left">
                                <div class="fore1">邮箱验证</div>
                                <div class="fore2"><small>您验证的邮箱：5831XXX@qq.com 可用于快速找回登录密码</small></div>
                            </div>
                            <div class="fore3">
                                <a href="email.html">
                                    <div class="am-btn am-btn-secondary">换绑</div>
                                </a>
                            </div>
                        </li>
                        <!-- <li>
                            <i class="i-safety-idcard"></i>
                            <div class="m-left">
                                <div class="fore1">实名认证</div>
                                <div class="fore2"><small>用于提升账号的安全性和信任级别，认证后不能修改认证信息。</small></div>
                            </div>
                            <div class="fore3">
                                <a href="idcard.html">
                                    <div class="am-btn am-btn-secondary">认证</div>
                                </a>
                            </div>
                        </li> -->

                    </ul>
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
