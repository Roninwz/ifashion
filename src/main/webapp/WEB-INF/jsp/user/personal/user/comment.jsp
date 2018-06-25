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
    <%--<link href="static/user/person/raty/demo/css/application.css" rel="stylesheet" type="text/css">--%>


    <link href="static/user/person/css/appstyle.css" rel="stylesheet" type="text/css">
    <link href="static/user/person/raty/star-rating.css" rel="stylesheet" type="text/css">
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>
    <!-- 日期插件 -->
    <script src="${pageContext.request.contextPath }/static/user/person/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <%--<script src="static/user/person/js/amazeui.js" type="text/javascript"></script>--%>
    <script src="static/admin/bootstrap/js/bootstrap.min.js"></script>

    <script src="static/user/person/message/js/message.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/common/sockjs.js"></script>
    <script type="text/javascript" src="static/user/person/raty/jquery.raty.min.js"></script>
    <script type="text/javascript" src="static/user/person/raty/star-rating.js"></script>

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
            <div class="user-comment">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">发表评论</strong> / <small>Make&nbsp;Comments</small></div>
                </div>
                <hr/>

                <div class="comment-main">
                    <!--多个商品评论-->
                    <form  id="form-article-add" enctype='multipart/form-data' action="user/goodsOrdercommentInsert.action" method="post">
                        <input type="hidden" name="goodsId" value="${goods.goodsId}">
                        <input type="text" name="ordersId" value="${orders.ordersId}">
                        <div class="comment-list">
                        <div class="item-title" style="display: block">


                            <div class="item-info">
                                <div class="item-price">
                                    商品：<strong>${goods.goodsName}</strong>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="item-comment" style="margin-top: 60px;">
                            <textarea name="comment" placeholder="请写下对宝贝的感受吧，对他人帮助很大哦！"></textarea>
                        </div>
                        <%--<div class="filePic">--%>
                            <%--<input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*" >--%>
                            <%--<span>晒照片(0/5)</span>--%>
                            <%--<img src="../images/image.jpg" alt="">--%>
                        <%--</div>--%>
                        <div class="item-opinion">
                            <%--<div style="width: 200px;float:left;">--%>
                            <%--<div id="star" data-number="1" ></div>--%>
                            <%--</div>--%>
                                <div class="clearfix"></div>
                                <hr>
                                <input id="rating-input" type="text" title=""/>
                            </div>
                    </div>
                        <input type="hidden" name="sstar" value="" id="sstar">
                    <div class="info-btn" style="margin-top:150px;">
                        <div><input type="submit" value="发表评论"  class="am-btn am-btn-danger"></div>
                    </div>
                    </form>

                    <script type="text/javascript">
                        // $(document).ready(function() {
                        //     $(".comment-list .item-opinion li").click(function() {
                        //         $(this).prevAll().children('i').removeClass("active");
                        //         $(this).nextAll().children('i').removeClass("active");
                        //         $(this).children('i').addClass("active");
                        //         $(this).children('input[name="review"]').prop('checked','checked');
                        //         //alert($(this).children('input[name="review"]').prop("checked"));
                        //     });
                        // })
                    </script>



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


<%--<script>--%>

  <%--function signin(id) {--%>
      <%--alert(id);--%>
      <%--var datas={"userId":id};--%>

      <%--$.ajax({--%>
          <%--type: 'POST',--%>
          <%--url: '${pageContext.request.contextPath}/user/ajaxSignin.action',--%>
          <%--dataType: 'json', //表示返回值的数据类型--%>
          <%--contentType: 'application/json;charset=UTF-8', //内容类型--%>
          <%--traditional: true, //使json格式的字符串不会被转码--%>
          <%--data: JSON.stringify(datas),--%>
          <%--success: function(data) {--%>
              <%--$.message(data.message);--%>

              <%--$("#signins").html("签到成功");--%>
             <%--// location.reload(true);--%>
              <%--//alert(data.message);--%>
          <%--},--%>
          <%--error: function(data) {--%>
              <%--alert("1");--%>
          <%--},--%>
      <%--});--%>
  <%--}--%>



<%--</script>--%>

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

<script>

    jQuery(document).ready(function () {
        $("#input-21f").rating({
            starCaptions: function (val) {
                if (val < 3) {
                    return val;
                } else {
                    return 'high';
                }
            },
            starCaptionClasses: function (val) {
                if (val < 3) {
                    return 'label label-danger';
                } else {
                    return 'label label-success';
                }
            },
            hoverOnClear: false
        });
        var $inp = $('#rating-input');

        $inp.rating({
            min: 0,
            max: 5,
            step: 1,
            size: 'lg',
            showClear: false
        });

        $('#btn-rating-input').on('click', function () {
            $inp.rating('refresh', {
                showClear: true,
                disabled: !$inp.attr('disabled')
            });
        });


        $('.btn-danger').on('click', function () {
            $("#kartik").rating('destroy');
        });

        $('.btn-success').on('click', function () {
            $("#kartik").rating('create');
        });

        $inp.on('rating.change', function () {
           // alert('1');
            //alert($('#rating-input').val());
            $('#sstar').val($('#rating-input').val());
        });


        $('.rb-rating').rating({
            'showCaption': true,
            'stars': '3',
            'min': '0',
            'max': '3',
            'step': '1',
            'size': 'xs',
            'starCaptions': {0: 'status:nix', 1: 'status:wackelt', 2: 'status:geht', 3: 'status:laeuft'}
        });
        $("#input-21c").rating({
            min: 0, max: 8, step: 0.5, size: "xl", stars: "8"
        });
    });
</script>


</body>
</html>
