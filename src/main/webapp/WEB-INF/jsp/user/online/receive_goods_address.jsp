<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gxy
  Date: 2018/6/25
  Time: 20:49
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
<base href="<%=basePath%>">
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="static/user/online/receivegoods/css/base.css">
    <script type="text/javascript" src="static/user/online/receivegoods/js/jquery_cart.js"></script>
    <link rel="stylesheet" type="text/css" href="static/user/online/receivegoods/css/checkOut.css">

</head>
<body>
<div class="banner_red_top">


</div>


<!--收货地址body部分开始-->
<div class="border_top_cart">
    <script type="text/javascript">
        var checkoutConfig={
            addressMatch:'common',
            addressMatchVarName:'data',
            hasPresales:false,
            hasBigTv:false,
            hasAir:false,
            hasScales:false,
            hasGiftcard:false,
            totalPrice:244.00,
            postage:10,//运费
            postFree:true,//活动是否免邮了
            bcPrice:150,//计算界值
            activityDiscountMoney:0.00,//活动优惠
            showCouponBox:0,
            invoice:{
                NA:"0",
                personal:"1",
                company:"2",
                electronic:"4"
            }
        };
        var miniCartDisable=true;
    </script>
    <div class="container">
        <div class="checkout-box">
            <form id="checkoutForm" action="user/online_pay.action" method="post">
                <div class="checkout-box-bd">
                    <!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
                    <input name="Checkout[addressState]" id="addrState" value="0" type="hidden">
                    <!-- 收货地址 -->
                    <div class="xm-box">
                        <div class="box-hd ">
                            <h2 class="title">收货地址</h2>
                            <!---->
                        </div>
                        <div class="box-bd">
                            <div class="clearfix xm-address-list" id="checkoutAddrList">
                                <c:forEach var="address" items="${addressList}">
                                    <dl class="item">
                                        <dt>
                                            <strong class="itemConsignee">${address.receiverName}</strong>
                                            <%--<span class="itemTag tag">家</span>--%>
                                        </dt>
                                        <dd>
                                            <p class="tel itemTel">${address.addressTel}</p>
                                            <p class="itemRegion">${address.addressContent}</p>
                                        </dd>
                                        <dd style="display:none">
                                            <input name="Checkout[address]" class="addressId" value="${address.addressId}" type="radio">
                                        </dd>
                                    </dl>
                                </c:forEach>
                            </div>


                            </div>
                            <!--点击弹出新增/收货地址界面end-->
                            <div class="xm-edit-addr-backdrop" id="J_editAddrBackdrop"></div>
                        </div>
                    </div>
                    <div class="checkout-count clearfix">

                        <!-- checkout-count-extend -->
                        <div class="checkout-price">
                            <ul>

                                <li>
                                    订单总额：<span>${goodsNum*goodsPrice}</span>
                                </li>

                            </ul>

                        </div>
                        <input class="btn btn-primary" value="立即下单" id="checkoutToPay" type="submit">

                    </div>
                </div>

            </form>
        </div>


    </div>
    <!-- 禮品卡提示 S-->

    <!--  预售提示 E-->


    <script id="newAddrTemplate" type="text/x-dot-template">

    </script>


    <!-- 保险弹窗 -->
    <!-- 保险弹窗 -->




    <script src="static/user/online/receivegoods/js/base.js"></script>

    <script type="text/javascript" src="static/user/online/receivegoods/js/address_all.js"></script>
    <script type="text/javascript" src="static/user/online/receivegoods/js/checkout.js"></script>

    <!--收货地址body部分结束-->




    <script src="static/user/online/receivegoods/js/jquery-1.js" type="text/javascript"></script>
    <script src="static/user/online/receivegoods/js/unslider.js" type="text/javascript"></script>
    <script src="static/user/online/receivegoods/js/index.js" type="text/javascript"></script>

</body>
</html>
