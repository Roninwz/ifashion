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
    <script src="static/user/person/js/amazeui.js" type="text/javascript"></script>
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

            <div class="user-news">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的消息</strong> / <small>News</small></div>
                </div>
                <hr/>

                <div class="am-tabs am-tabs-d2" data-am-tabs>
                    <ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">通知消息</a></li>
                        <li><a href="#tab2">系统消息</a></li>
                        <%--<li><a href="#tab3">交易信息</a></li>--%>

                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">

                            <div class="news-day">
                                <div class="goods-date" data-date="2015-12-21">
                                    <span><i class="month-lite">12</i>.<i class="day-lite">21</i>	<i class="date-desc">今天</i></span>
                                </div>

                                <!--消息 -->
                                <div class="s-msg-item s-msg-temp i-msg-downup">
                                    <h6 class="s-msg-bar"><span class="s-name">每日新鲜事</span></h6>
                                    <div class="s-msg-content i-msg-downup-wrap">
                                        <div class="i-msg-downup-con">
                                            请输入：<textarea rows="5" cols="10" id="inputMsg" name="inputMsg"></textarea>
                                            <button onclick="doSend();">发送</button>
                                        </div>
                                    </div>
                                    <a class="i-btn-forkout" href="#"><i class="am-icon-close am-icon-fw"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="am-tab-panel am-fade" id="tab2">
                            <!--消息 -->
                            <div class="s-msg-item s-msg-temp i-msg-downup">
                                <h6 class="s-msg-bar"><span class="s-name">订单已签收</span></h6>
                                <div class="s-msg-content i-msg-downup-wrap">
                                    <div class="i-msg-downup-con">
                                        <a class="i-markRead" target="_blank" href="logistics.html">
                                            <div class="m-item">
                                                <div class="item-pic">
                                                    <img src="../images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                </div>
                                                <div class="item-info">
                                                    您购买的美康粉黛醉美唇膏已签收，
                                                    快递单号:373269427868
                                                </div>

                                            </div>

                                            <p class="s-row s-main-content">
                                                查看详情 <i class="am-icon-angle-right"></i>
                                            </p>
                                        </a>
                                    </div>
                                </div>
                                <a class="i-btn-forkout" href="#"><i class="am-icon-close am-icon-fw"></i></a>
                            </div>
                        </div>

                    </div>
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
<%--<script type="text/javascript" src="http://cdn.bootcss.com/jquery/3.1.0/jquery.min.js"></script>--%>
<script type="text/javascript" src="http://cdn.bootcss.com/sockjs-client/1.1.1/sockjs.js"></script>
<script type="text/javascript">
    // 初始化一个 WebSocket 对象
    var websocket = null;
    if ('WebSocket' in window) {
        alert('1');
        websocket = new WebSocket("ws://localhost:8088/ifashion/websocket/socketServer.action");
        alert('11');
    }
    else if ('MozWebSocket' in window) {  alert('2');

        websocket = new MozWebSocket("ws://localhost:8088/ifashion/websocket/socketServer.action");
    }
    else {
        alert('3');
        websocket = new SockJS("http://localhost:8088/ifashion/websocket/socketServer.action");
    }
    websocket.onopen = onOpen;
    websocket.onmessage = onMessage;
    websocket.onerror = onError;
    websocket.onclose = onClose;
    // 建立 web socket 连接成功触发事件
    function onOpen(openEvt) {
        //alert(openEvt.Data);
    }
    // 接收服务端数据时触发事件
    function onMessage(evt) {
        alert('22');
        alert(evt.data);
    }
    function onError() {}
    // 断开 web socket 连接成功触发事件
    function onClose() {}

    function doSend() {
        // 使用 send() 方法发送数据
        if (websocket.readyState == websocket.OPEN) {
            var msg = document.getElementById("inputMsg").value;
            websocket.send(msg);//调用后台handleTextMessage方法
            alert("发送成功!");
        } else {
            alert("连接失败!");
        }
    }
    window.close=function()
    {
        websocket.onclose();
    }

</script>





</body>
</html>
