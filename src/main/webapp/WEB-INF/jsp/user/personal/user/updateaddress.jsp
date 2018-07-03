<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/4
  Time: 12:46
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
    <link href="static/user/person/css/addstyle.css" rel="stylesheet" type="text/css">
    <script src="static/user/person/Distpicker/js/distpicker.data.js"></script>
    <script src="static/user/person/Distpicker/js/distpicker.js"></script>
    <script src="static/user//Distpicker/js/main.js"></script>
    <!-- 收货地址 address -->
    <%--<link href="person/css/addstyle.css" rel="stylesheet" type="text/css">--%>
    <script src="static/user/person/js/amazeui.js" type="text/javascript"></script>


</head>
<body>

<%@ include file="../../header.jsp" %>

<b class="line"></b>

<div class="center">
    <div class="col-main">
        <!-- 公共内容填充在这里 -->
        <div class="main-wrap">

            <div class="user-address">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small></div>
                </div>
                <hr/>

                <div class="clear"></div>
                <a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">更新地址</a>
                <!--例子-->
                <div class="am-modal am-modal-no-btn" id="doc-modal-1">

                    <div class="add-dress">

                        <!--标题 -->
                        <div class="am-cf am-padding">
                            <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">更新地址</strong> / <small>Add&nbsp;address</small></div>
                        </div>
                        <hr/>

                        <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
                            <form class="am-form am-form-horizontal" action="user/updatehandleaddress.action" method="post">
                                <input type="hidden" name="addressId" value="${address.addressId}" >

                                <div class="am-form-group">
                                    <label for="user-name" class="am-form-label">收货人</label>
                                    <div class="am-form-content">
                                        <input type="text" name="receiverName" value="${address.receiverName}" id="user-name">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-form-label">手机号码</label>
                                    <div class="am-form-content">
                                        <input id="user-phone" name="addressTel" value="${address.addressTel}"  type="text">
                                    </div>
                                </div>
                                <%--<div class="am-form-group">--%>
                                    <%--<label  class="am-form-label">所在地</label>--%>
                                    <%--<div class="am-form-content address" data-toggle="distpicker">--%>
                                        <%--<!-- <select data-am-selected>--%>
                                                        <%--<option value="a">浙江省</option>--%>
                                                        <%--<option value="b" selected>湖北省</option>--%>
                                                    <%--</select>--%>
                                                    <%--<select data-am-selected>--%>
                                                        <%--<option value="a">温州市</option>--%>
                                                        <%--<option value="b" selected>武汉市</option>--%>
                                                    <%--</select>--%>
                                                    <%--<select data-am-selected>--%>
                                                        <%--<option value="a">瑞安区</option>--%>
                                                        <%--<option value="b" selected>洪山区</option>--%>
                                                    <%--</select> -->--%>

                                        <%--<select></select>--%>
                                        <%--<select></select>--%>
                                        <%--<select></select>--%>

                                    <%--</div>--%>
                                <%--</div>--%>

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-form-label">详细地址</label>
                                    <div class="am-form-content">
                                        <textarea class="" rows="3" name="addressContent" value="${address.addressContent}" id="user-intro" ></textarea>
                                        <%--<small>100字以内写出你的详细地址...</small>--%>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <div class="info-btn">
                                            <div style="width: 100px;margin-left:70px;margin-top:40px;"><input type="submit" name="submit" value="保存修改"></div>
                                        </div>
                                        <%--<a class="am-btn am-btn-danger" href="user/addaddress.action" style="margin-left: 30px;">保存</a>--%>
                                        <%--<a href="javascript: void(0)" class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a>--%>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </div>



            <script type="text/javascript">
                $(document).ready(function() {
                    $(".new-option-r").click(function() {
                        $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
                    });

                    var $ww = $(window).width();
                    if ($ww > 640) {
                        $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
                    }

                })
            </script>
            <div class="clear"></div>

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
