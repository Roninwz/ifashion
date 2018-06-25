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
                <ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
                <c:if test="${empty addresses}">
                    您还没有收货地址，请去添加。
                </c:if>
            <c:if test="${not empty addresses}">
                <c:forEach items="${addresses}" var="addresses">


                    <c:if test="${addresses.addressState =='0'}">
                    <li class="user-addresslist defaultAddr">

                            <span class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>

                        <input type="hidden" id="addId" name="addressId" value="${addresses.addressId}">
                        <p class="new-tit new-p-re">
                            <span class="new-txt">${addresses.receiverName}</span>
                            <span class="new-txt-rd2">${addresses.addressTel}</span>
                        </p>
                        <div class="new-mu_l2a new-p-re">
                            <p class="new-mu_l2cw">
                                <span class="title">地址：</span>
                                <span class="province">${addresses.addressContent}</span>
                                <%--<span class="city">武汉</span>市--%>
                                <%--<span class="dist">洪山</span>区--%>
                                <%--<span class="street">雄楚大道666号(中南财经政法大学)</span></p>--%>
                        </div>
                        <div class="new-addr-btn">
                            <a href="user/updateaddress.action?addressId=${addresses.addressId}"><i class="am-icon-edit"></i>编辑</a>
                            <span class="new-addr-bar">|</span>
                            <a href="user/deleteaddress.action?addressId=${addresses.addressId}"><i class="am-icon-trash"></i>删除</a>
                        </div>
                    </li>
                    </c:if>
                    <c:if test="${addresses.addressState =='1'}">

                        <li class="user-addresslist">
                            <span class="new-option-r"><i class="am-icon-check-circle"></i>设为默认</span>
                            <input type="hidden"  name="addressId" value="${addresses.addressId}">

                            <p class="new-tit new-p-re">
                                <span class="new-txt">${addresses.receiverName}</span>
                                <span class="new-txt-rd2">${addresses.addressTel}</span>
                            </p>
                            <div class="new-mu_l2a new-p-re">
                                <p class="new-mu_l2cw">
                                    <span class="title">地址：</span>
                                    <span class="province">${addresses.addressContent}</span>
                                        <%--<span class="city">武汉</span>市--%>
                                        <%--<span class="dist">洪山</span>区--%>
                                        <%--<span class="street">雄楚大道666号(中南财经政法大学)</span></p>--%>
                            </div>
                            <div class="new-addr-btn">
                                <a href="user/updateaddress.action?addressId=${addresses.addressId}"><i class="am-icon-edit"></i>编辑</a>
                                <span class="new-addr-bar">|</span>
                                <a href="user/deleteaddress.action?addressId=${addresses.addressId}"><i class="am-icon-trash"></i>删除</a>
                            </div>
                        </li>

                    </c:if>
                </c:forEach>
                    </c:if>
                    <%--<li class="user-addresslist">--%>
                        <%--<span class="new-option-r"><i class="am-icon-check-circle"></i>设为默认</span>--%>
                        <%--<p class="new-tit new-p-re">--%>
                            <%--<span class="new-txt">小叮当</span>--%>
                            <%--<span class="new-txt-rd2">159****1622</span>--%>
                        <%--</p>--%>
                        <%--<div class="new-mu_l2a new-p-re">--%>
                            <%--<p class="new-mu_l2cw">--%>
                                <%--<span class="title">地址：</span>--%>
                                <%--<span class="province">湖北</span>省--%>
                                <%--<span class="city">武汉</span>市--%>
                                <%--<span class="dist">洪山</span>区--%>
                                <%--<span class="street">雄楚大道666号(中南财经政法大学)</span></p>--%>
                        <%--</div>--%>
                        <%--<div class="new-addr-btn">--%>
                            <%--<a href="#"><i class="am-icon-edit"></i>编辑</a>--%>
                            <%--<span class="new-addr-bar">|</span>--%>
                            <%--<a href="javascript:void(0);" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="user-addresslist">--%>
                        <%--<span class="new-option-r"><i class="am-icon-check-circle"></i>设为默认</span>--%>
                        <%--<p class="new-tit new-p-re">--%>
                            <%--<span class="new-txt">小叮当</span>--%>
                            <%--<span class="new-txt-rd2">159****1622</span>--%>
                        <%--</p>--%>
                        <%--<div class="new-mu_l2a new-p-re">--%>
                            <%--<p class="new-mu_l2cw">--%>
                                <%--<span class="title">地址：</span>--%>
                                <%--<span class="province">湖北</span>省--%>
                                <%--<span class="city">武汉</span>市--%>
                                <%--<span class="dist">洪山</span>区--%>
                                <%--<span class="street">雄楚大道666号(中南财经政法大学)</span></p>--%>
                        <%--</div>--%>
                        <%--<div class="new-addr-btn">--%>
                            <%--<a href="#"><i class="am-icon-edit"></i>编辑</a>--%>
                            <%--<span class="new-addr-bar">|</span>--%>
                            <%--<a href="javascript:void(0);" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                </ul>
                <div class="clear"></div>
                <a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
                <!--例子-->
                <div class="am-modal am-modal-no-btn" id="doc-modal-1">

                    <div class="add-dress" style="">

                        <!--标题 -->
                        <div class="am-cf am-padding">
                            <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg"><a href="user/addaddress.action">新增地址</a></strong></div>
                        </div>
                        <hr/>
                    </div>

                </div>

            </div>



            <script type="text/javascript">
                $(document).ready(function() {
                    $(".new-option-r").click(function() {
                        var addId=$(this).next().val();
                        alert(addId);
                        var datas={"addressId":addId};
                        $.ajax({
                            type: 'POST',
                            url: '${pageContext.request.contextPath}/user/ajaxdefultaddress.action',
                            dataType: 'json', //表示返回值的数据类型
                            //contentType: 'application/json;charset=UTF-8', //内容类型--后台用实体类接收的时候用这个
                            traditional: true, //使json格式的字符串不会被转码
                           // data: JSON.stringify(datas),
                            data:datas,
                            success: function(data) {
                                alert(data);
                            },
                            error: function(data) {
                                alert('1');

                            },
                        });






                        $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
                        $(".new-option-r").html("设置默认");
                        $(this).html("默认地址");
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
