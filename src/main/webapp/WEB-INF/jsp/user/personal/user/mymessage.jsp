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
    <script src="static/user/person/js/amazeui.js" type="text/javascript"></script>
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
                        <li class="am-active"><a href="#tab1">未读消息</a></li>
                        <li><a href="#tab2">已读消息</a></li>
                        <%--<li><a href="#tab3">交易信息</a></li>--%>

                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                            <c:forEach items="${pageInfou.list}" var="myUnReadMessages" varStatus="status">
                            <div class="news-day panel panel-default" id="depal">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                            编号：${status.count}  <span style="float: right"><i class="date-desc">
                                     <fmt:formatDate value="${myUnReadMessages.messageDate}" pattern="yyyy-MM-dd HH:mm" type="date"/>
                                    </i></span>
                                    </h3>
                                    <div class="goods-date" data-date="2015-12-21">

                                    </div>
                                </div>



                                <!--消息 -->
                                <div class="s-msg-item s-msg-temp i-msg-downup">
                                    <div class="panel panel-default col-md-6">
                                        <div class="panel-body">
                                           ${myUnReadMessages.mymessageContent}
                                            <div class="checkbox" style="float:right;">
                                                <label>
                                                    <input type="button" onclick="readed(${myUnReadMessages.mymessageId})" value="标为已读">
                                                    <input type="button" onclick="deletereaded(${myUnReadMessages.mymessageId})" value="删除">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>

                            <%--分页开始--%>
                            <!--显示分页信息-->
                            <div class="row">
                                <!--文字信息-->
                                <div class="col-md-6">
                                    当前第 ${pageInfou.pageNum} 页.总共 ${pageInfou.pages} 页.一共 ${pageInfou.total} 条记录
                                </div>

                                <!--点击分页-->
                                <div class="col-md-6">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination">

                                            <li><a href="${pageContext.request.contextPath}/user/mymessage.action?curPageu=1">首页</a></li>

                                            <!--上一页-->
                                            <li>
                                                <c:if test="${pageInfor.hasPreviousPage}">
                                                    <a href="${pageContext.request.contextPath}/user/mymessage.action?curPageu=${pageInfor.pageNum-1}" aria-label="Previous">
                                                        <span aria-hidden="true">«</span>
                                                    </a>
                                                </c:if>
                                            </li>

                                            <!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
                                            <c:forEach items="${pageInfou.navigatepageNums}" var="page_num">
                                                <c:if test="${page_num == pageInfou.pageNum}">
                                                    <li class="active"><a href="#">${page_num}</a></li>
                                                </c:if>
                                                <c:if test="${page_num != pageInfou.pageNum}">
                                                    <li><a href="${pageContext.request.contextPath}/user/mymessage.action?curPageu=${page_num}">${page_num}</a></li>
                                                </c:if>
                                            </c:forEach>

                                            <!--下一页-->
                                            <li>
                                                <c:if test="${pageInfou.hasNextPage}">
                                                    <a href="${pageContext.request.contextPath}/user/mymessage.action?curPageu=${pageInfou.pageNum+1}"
                                                       aria-label="Next">
                                                        <span aria-hidden="true">»</span>
                                                    </a>
                                                </c:if>
                                            </li>

                                            <li><a href="${pageContext.request.contextPath}/user/mymessage.action?curPageu=${pageInfou.pages}">尾页</a></li>
                                        </ul>
                                    </nav>
                                </div>

                            </div>

                            <%--分页结束--%>



                        </div>

                        <div class="am-tab-panel am-fade" id="tab2">
                            <c:forEach items="${pageInfor.list}" var="myReadedMessages" varStatus="status">
                                <div class="news-day panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            编号：${status.count}  <span style="float: right"><i class="date-desc">  <fmt:formatDate value="${myReadedMessages.messageDate}" pattern="yyyy-MM-dd HH:mm" type="date"/></i></span>
                                        </h3>
                                        <div class="goods-date" data-date="2015-12-21">

                                        </div>
                                    </div>



                                    <!--消息 -->
                                    <div class="s-msg-item s-msg-temp i-msg-downup">
                                        <div class="panel panel-default col-md-6">
                                            <div class="panel-body">
                                                    ${myReadedMessages.mymessageContent}
                                                <div class="checkbox" style="float:right;">
                                                    <label>
                                                        <input type="button" onclick="deletereaded(${myReadedMessages.mymessageId})" value="删除">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            <!--显示分页信息-->
                            <div class="row">
                            <!--文字信息-->
                            <div class="col-md-6">
                            当前第 ${pageInfor.pageNum} 页.总共 ${pageInfor.pages} 页.一共 ${pageInfor.total} 条记录
                            </div>

                            <!--点击分页-->
                            <div class="col-md-6">
                            <nav aria-label="Page navigation">
                            <ul class="pagination">

                            <li><a href="${pageContext.request.contextPath}/user/mymessage.action?curPager=1">首页</a></li>

                            <!--上一页-->
                            <li>
                            <c:if test="${pageInfor.hasPreviousPage}">
                            <a href="${pageContext.request.contextPath}/user/mymessage.action?curPager=${pageInfor.pageNum-1}" aria-label="Previous">
                            <span aria-hidden="true">«</span>
                            </a>
                            </c:if>
                            </li>

                            <!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
                            <c:forEach items="${pageInfor.navigatepageNums}" var="page_num">
                            <c:if test="${page_num == pageInfor.pageNum}">
                            <li class="active"><a href="#">${page_num}</a></li>
                            </c:if>
                            <c:if test="${page_num != pageInfor.pageNum}">
                            <li><a href="${pageContext.request.contextPath}/user/mymessage.action?curPager=${page_num}">${page_num}</a></li>
                            </c:if>
                            </c:forEach>

                            <!--下一页-->
                            <li>
                            <c:if test="${pageInfor.hasNextPage}">
                            <a href="${pageContext.request.contextPath}/user/mymessage.action?curPager=${pageInfor.pageNum+1}"
                            aria-label="Next">
                            <span aria-hidden="true">»</span>
                            </a>
                            </c:if>
                            </li>

                            <li><a href="${pageContext.request.contextPath}/user/mymessage.action?curPager=${pageInfor.pages}">尾页</a></li>
                            </ul>
                            </nav>
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

<script type="text/javascript">
    // 初始化一个 WebSocket 对象
    // var websocket = null;
    // if ('WebSocket' in window) {
    //    alert('1');
    //     websocket = new WebSocket("ws://localhost:8088/ifashion/websocket/socketServer.action");
    //    // alert('11');
    // }
    // else if ('MozWebSocket' in window) {  alert('2');
    //
    //     websocket = new MozWebSocket("ws://localhost:8088/ifashion/websocket/socketServer.action");
    // }
    // else {
    //     //alert('3');
    //     websocket = new SockJS("http://localhost:8088/ifashion/websocket/socketServer.action");
    // }
    // websocket.onopen = onOpen;
    // websocket.onmessage = onMessage;
    // websocket.onerror = onError;
    // websocket.onclose = onClose;
    // // 建立 web socket 连接成功触发事件
    // function onOpen(openEvt) {
    //     //alert(openEvt.Data);
    // }
    // // 接收服务端数据时触发事件
    // function onMessage(evt) {
    //    // alert('22');
    //     alert(evt.data);
    // }
    // function onError() {}
    // // 断开 web socket 连接成功触发事件
    // function onClose() {}
    //
    // function doSend() {
    //     // 使用 send() 方法发送数据
    //     if (websocket.readyState == websocket.OPEN) {
    //         var msg = document.getElementById("inputMsg").value;
    //         websocket.send(msg);//调用后台handleTextMessage方法
    //         alert("发送成功!");
    //     } else {
    //         alert("连接失败!");
    //     }
    // }
    //
    //
    //
    // window.close=function()
    // {
    //     websocket.onclose();
    // }
    //


    //测试发送消息

    <%--setInterval("answers()",5000);--%>

    <%--function answers(){--%>
        <%--//alert("1");--%>
        <%--$.ajax({--%>

            <%--type: 'post',--%>
            <%--url: '${pageContext.request.contextPath}/user/send.action',--%>
            <%--traditional: true, //使json格式的字符串不会被转码--%>
            <%--data: 'null',--%>
            <%--success: function(data){--%>
               <%--alert("成功");--%>
            <%--}--%>
        <%--});--%>
    <%--}--%>


function readed(id) {

    alert(id);
    var datas={"mymessageId":id};

    $.ajax({
        type: 'POST',
        url: '${pageContext.request.contextPath}/user/ajaxReaded.action',
        dataType: 'json', //表示返回值的数据类型
        contentType: 'application/json;charset=UTF-8', //内容类型
        traditional: true, //使json格式的字符串不会被转码
        data: JSON.stringify(datas),
        success: function(data) {
            $.message(data.message);
            location.reload(true);
            //alert(data.message);
        },
        error: function(data) {
            alert("1");
        },
    });


}

    function deletereaded(id) {

        alert(id);
        var datas={"mymessageId":id};

        $.ajax({
            type: 'POST',
            url: '${pageContext.request.contextPath}/user/ajaxdeleteReaded.action',
            dataType: 'json', //表示返回值的数据类型
            contentType: 'application/json;charset=UTF-8', //内容类型
            traditional: true, //使json格式的字符串不会被转码
            data: JSON.stringify(datas),
            success: function(data) {
                $.message(data.message);
                location.reload(true);
            },
            error: function(data) {
                alert("1");
            },
        });


    }

</script>





</body>
</html>
