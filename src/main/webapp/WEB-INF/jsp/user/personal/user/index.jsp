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

    <link rel="stylesheet" href="static/admin/bootstrap/css/bootstrap.min.css">
    <%--消息提示--%>
    <link rel="stylesheet" href="static/user/person/message/css/message.css">
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
    <link href="static/user/person/css/point.css" rel="stylesheet" type="text/css">
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>

    <!-- 日期插件 -->
    <script src="${pageContext.request.contextPath }/static/user/person/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <%--<script src="static/user/person/js/amazeui.js" type="text/javascript"></script>--%>
    <script src="static/admin/bootstrap/js/bootstrap.min.js"></script>

    <script src="static/user/person/message/js/message.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/sockjs.js"></script>
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
<c:set var="userId" value="${sessionScope.userId}"/>
<b class="line"></b>
<div class="center">
    <div class="col-main">
        <!-- 公共内容填充在这里 -->
        <div class="main-wrap">
            <div class="user-info">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人中心</strong> / <small>My&nbsp;首页</small></div>
                </div>
                <hr/>
                <div class="pointsTitle">
                    <div class="usable">我的消息</div>
                    <div class="pointshop" id="mymessage"><a href="user/mymessage.action"><i><img src="static/user/person/images/YXARdXxj5.png" /></i>您有${n}条消息未读</a></div>
                    <%--<div class="signIn" id="signins"><a href="javascript:void(0)" onclick="signin(${userId})"><i class="am-icon-calendar"></i><em>+5</em>每日签到</a></div>--%>
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


<script>

  function signin(id) {
      alert(id);
      var datas={"userId":id};

      $.ajax({
          type: 'POST',
          url: '${pageContext.request.contextPath}/user/ajaxSignin.action',
          dataType: 'json', //表示返回值的数据类型
          contentType: 'application/json;charset=UTF-8', //内容类型
          traditional: true, //使json格式的字符串不会被转码
          data: JSON.stringify(datas),
          success: function(data) {
              $.message(data.message);

              $("#signins").html("签到成功");
             // location.reload(true);
              //alert(data.message);
          },
          error: function(data) {
              alert("1");
          },
      });
  }

  function onMessage(evt) {
      alert('22');
      alert(evt.data);


      showNotice(evt.data);


  }


</script>

<%-- websocket--%>
<%--<script type="text/javascript">--%>
    <%--// 初始化一个 WebSocket 对象--%>
    <%--var websocket = null;--%>
    <%--if ('WebSocket' in window) {--%>
        <%--// alert('1');--%>
        <%--websocket = new WebSocket("ws://localhost:8088/ifashion/websocket/socketServer.action");--%>
        <%--// alert('11');--%>
    <%--}--%>
    <%--else if ('MozWebSocket' in window) {  alert('2');--%>

        <%--websocket = new MozWebSocket("ws://localhost:8088/ifashion/websocket/socketServer.action");--%>
    <%--}--%>
    <%--else {--%>
        <%--//alert('3');--%>
        <%--websocket = new SockJS("http://localhost:8088/ifashion/websocket/socketServer.action");--%>
    <%--}--%>
    <%--websocket.onopen = onOpen;--%>
    <%--websocket.onmessage = onMessage;--%>
    <%--websocket.onerror = onError;--%>
    <%--websocket.onclose = onClose;--%>
    <%--// 建立 web socket 连接成功触发事件--%>
    <%--function onOpen(openEvt) {--%>
        <%--//alert(openEvt.Data);--%>
    <%--}--%>
    <%--// 接收服务端数据时触发事件--%>
    <%--function onMessage(evt) {--%>
        <%--// alert('22');--%>
        <%--//alert(evt.data);--%>
        <%--showNotice(evt.data);--%>
        <%--$("#mymessage").html('<a href="user/mymessage.action"><i><img src="static/user/person/images/YXARdXxj5.png" /></i>'+evt.data+'</a>');--%>

    <%--}--%>
    <%--function onError() {}--%>
    <%--// 断开 web socket 连接成功触发事件--%>
    <%--function onClose() {}--%>

    <%--function doSend() {--%>
        <%--// 使用 send() 方法发送数据--%>
        <%--if (websocket.readyState == websocket.OPEN) {--%>
            <%--var msg = document.getElementById("inputMsg").value;--%>
            <%--websocket.send(msg);//调用后台handleTextMessage方法--%>
            <%--alert("发送成功!");--%>
        <%--} else {--%>
            <%--alert("连接失败!");--%>
        <%--}--%>
    <%--}--%>

    <%--function showNotice(content) {--%>
        <%--Notification.requestPermission(function (perm) {--%>
            <%--if (perm == "granted") {--%>
                <%--var notification = new Notification("iFashion:", {--%>
                    <%--dir: "auto",--%>
                    <%--lang: "hi",--%>
                    <%--tag: "testTag",--%>
                    <%--icon: "${pageContext.request.contextPath}/static/admin/images/logo.png",--%>
                    <%--body: content--%>
                <%--});--%>
            <%--}--%>
        <%--})--%>
    <%--}--%>


    <%--window.close=function()--%>
    <%--{--%>
        <%--websocket.onclose();--%>
    <%--}--%>



    <%--//测试发送消息--%>

    <%--&lt;%&ndash;setInterval("answers()",5000);&ndash;%&gt;--%>

    <%--&lt;%&ndash;function answers(){&ndash;%&gt;--%>
    <%--&lt;%&ndash;//alert("1");&ndash;%&gt;--%>
    <%--&lt;%&ndash;$.ajax({&ndash;%&gt;--%>

    <%--&lt;%&ndash;type: 'post',&ndash;%&gt;--%>
    <%--&lt;%&ndash;url: '${pageContext.request.contextPath}/user/send.action',&ndash;%&gt;--%>
    <%--&lt;%&ndash;traditional: true, //使json格式的字符串不会被转码&ndash;%&gt;--%>
    <%--&lt;%&ndash;data: 'null',&ndash;%&gt;--%>
    <%--&lt;%&ndash;success: function(data){&ndash;%&gt;--%>
    <%--&lt;%&ndash;alert("成功");&ndash;%&gt;--%>
    <%--&lt;%&ndash;}&ndash;%&gt;--%>
    <%--&lt;%&ndash;});&ndash;%&gt;--%>
    <%--&lt;%&ndash;}&ndash;%&gt;--%>





<%--</script>--%>


</body>
</html>
