
<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/4
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <%--登录模态框js--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/person/message/css/mess.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/login/header.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/user/common/plugin/font-awesome/css/font-awesome.min.css">
    <script src="${pageContext.request.contextPath}/static/user/common/plugin/jquery.cookie.js"></script>

</head>
<body>
<%--头部--%>


<div class='w1180 ad' id="OL_SYS_925_51">
</div>

<div class='w1180 logoAndlogin'>
    <h1 class='logo'>
        <a href="user/index.action">
            <img src='${pageContext.request.contextPath}/static/user/common/top/images/top.png' style='padding-left:200px' alt='iFashion' title='iFashion' />
        </a>
    </h1>
    <div class="login">

        <c:set var="uname" value="${sessionScope.uname}"/>
        <c:if test="${empty uname}">
            <a  data-toggle="modal" href="#login-modal">
            <button class="btn btn_primary radius">
               登录
            </button></a>&nbsp;&nbsp;|
            <a href="user/register.action" target="_self" rel="nofollow">
            <button class="btn btn_primary radius">
                注册
            </button></a>

        </c:if>

        <c:if test="${not empty uname}">
            <span><button class="btn btn_primary radius">
                       欢迎您 ${uname}
            </button></span>
            <a href="user/personal.action" target="_self" rel="nofollow" style="color: #000">
            <button class="btn btn_primary radius">
                个人中心
            </button></a>
            <a href="user/userlogout.action" target="_self" rel="nofollow" style="color: #000">
            <button class="btn btn_primary radius">
               注销
            </button></a>

            <div id="message" style="float: right;margin-left: 10px;">
                <a href="user/mymessage.action"><span data-type="1" class="message-bell-btn" title="" id="message-bell-btn"><i class="fa fa-bell-o "></i>
                 <span class="badge-dot" style="top:-10px;" id="badge"></span>

            </span></a>
            </div>


        </c:if>

        <!-- 个人中心 -->
        <!-- <a href="" target="_self" rel="nofollow">个人中心</a> -->
    </div>
</div>


<div class='navSearch'>
    <div class="navBg"></div>
    <div class="w1180">
        <div class="nav1">
            <a href="user/index.action" class="here">首页</a>
            <a href="user/clothes.action">穿衣搭配</a>
            <a href="user/forum.action">社区精选</a>
            <a href="user/newsHome.action">资讯</a>
            <a href="user/online_list.action">私人定制</a>
            <a href="javascript:void(0);" class="searchBt"></a>
        </div>
        <%--<div class="navChilren">--%>
            <%--<ul>--%>
                <%--<li></li>--%>
                <%--<li></li>--%>
                <%--<li>--%>
                    <%--<a href="user/forum.action" target="_blank">论坛</a>--%>
                    <%--<a href="usre/community.action">社区</a>--%>
                <%--</li>--%>
                <%--<li></li>--%>

            <%--</ul>--%>
        <%--</div>--%>
    </div>
    <div class='w1180 search'>
        <form id="searchPage" target="_blank" method="get" action="user/search" accept-charset="utf8">
            <div class="mainsearch">
                <input onkeyup="selBrand('searchpro','auto_brand')" type="text" class="main_input" id="searchpro" autocomplete="off" name="q" value="请输入名称">
                <div class="c1_se_2_c" id="auto_brand" style="display: none;"></div>
            </div>
            <input type="hidden" name="s" value="15679544665037353740">
            <input type="hidden" name="nsid" value="1" class="aritcleType">
            <input type="button" class="mainbtn" id="J_search_sub" value="">
            <input type="button" title='关闭搜索框' class="closeSearchbtn" value="">
        </form>
        <div class='hotpro'>
            <a href="" title="资讯-夏纳电影节" target="_blank">资讯-夏纳电影节</a>
            <a href="" title="定制-裙子" target="_blank">定制-裙子</a>
            <a href="" title="定制-运动鞋" target="_blank">定制-运动鞋</a>
            <!-- 设计师 -->
            <a href="" title="设计师-房莹" target="_blank">设计师-房莹</a>
            <a href="" title="话题" target="_blank">话题-PVC</a>
            <!-- <a href="" title="?????" target="_blank"></a> -->
        </div>
    </div>



</div>

<!--crazy start-->
<div id="crazynavdown">
    <div id="OL_SYS_938_51" class="w1180 s"></div>
    <div class="b">
        <div id="OL_SYS_943_51" class="b1"></div>
        <div id="OL_SYS_448_51" class="b2"></div>
    </div>
</div>
<!--crazy end-->


<%--头部结束--%>





<%--登录模态框--%>


<div class="modal" id="login-modal">
    <a class="close" data-dismiss="modal">×</a>
    <h1>登录</h1>
    <form class="login-form clearfix" method="post" action="user/logincheck.action">
        <div class="form-arrow">	</div>
        <c:if test="${not  empty isError}">
            <div class="error">${isError}</div>
        </c:if>
        <input name="uname" id="uname" type="text" placeholder="手机号/邮箱：">
        <input name="password" id="password" type="password" placeholder="密码：">
        <input name="code" type="text" placeholder="验证码：" style="width: 180px;float: left;">
        <img id="codeValidateImg" onClick="javascript:flushValidateCode();"  alt="验证码" style="width: 100px;float: left;"/>
        <input type="submit" name="type" class="button-blue login" value="登录">
        <input type="hidden" name="return-url" value="">
        <div class="clearfix"></div>
        <label class="remember"><input name="remember" type="checkbox"  id="remember-password" onclick="remeber()"/>记住密码</label>
        <a class="forgot" id="forgot">忘记密码？</a>
    </form>
</div>




<div class="modal" id="forgetform">
    <a class="close" data-dismiss="modal">×</a>
    <h1>忘记密码</h1>
    <form class="forgot-form" method="post" action="user/updateResetPass.action">
            <div class="error" id="error"></div>
        <input type="text" name="tel" value="" placeholder="注册手机号：" id="tel">
        <input type="text" name="resetcode" value="" placeholder="验证码：" style="width: 140px;" id="resetcode">
        <input type="button" name="" value="获取手机号验证码" placeholder=""  style="width: 140px;" onclick="getCode()" id="getcodes">
        <%--<a href="javascript:void(0)" style="width:180px;color: black;">获取手机号验证码</a>--%>
        <input type="password" name="newpass" value="" placeholder="新密码">
        <div class="clearfix"></div>
        <%--<a class="sendCode" id="sendCode">发送手机号验证码</a>--%>
        <input type="submit" name="type" class="forgot button-blue" value="确认修改密码">
    </form>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        flushValidateCode();//进入页面就刷新生成验证码
    });
    // window.onload=flushValidateCode;




    /* 刷新生成验证码 */
    function flushValidateCode(){
        var validateImgObject = document.getElementById("codeValidateImg");
        validateImgObject.src = "${pageContext.request.contextPath}/getSysManageLoginCode.action?time=" + new Date();
    }


    //jquery-cookie实现记住用户名和密码
    $(function () {

        var uname = $.cookie('uname');
        var password = $.cookie('password');

        //页面加载的时候从cookie中取出用户名和密码填充对应的输入框
        $('#uname').val(uname);
        $("#password").val(password)
        //选中保存秘密的复选框　
        // if(uname != null && uname != '' && password != null && password != ''){
        //     $("#remember-password").attr('checked',true);
        // }
    });

    function remeber(){

        var uname = $("#uname").val();
        var password = $("#password").val();

        //判断复选框的选择状态添加cookie
        if ($("#remember-password").is(":checked")) {
            //存储一个带7天期限的cookie
            $.cookie("uname", uname, { expires: 7 });
            $.cookie("password", password, { expires: 7 });
        }
        else {
            $.cookie("uname", "", { expires: -1 });
            $.cookie("password", "", { expires: -1 });
        }
    }


    function getCode() {
        //alert('11');
       var tel=$("input[id='tel']").val();
        var datas={"tel":tel};
        $.ajax({
            type: 'POST',
            url: '${pageContext.request.contextPath}/user/ajaxgetresetPasscode.action',
            dataType: 'json', //表示返回值的数据类型
            contentType: 'application/json;charset=UTF-8', //内容类型
            traditional: true, //使json格式的字符串不会被转码
            data: JSON.stringify(datas),
            success: function (data) {
                // alert(data);
                //alert("e");
                $("#getcodes").val("已发送");
            }
        });
    }



    //websocket
    // 初始化一个 WebSocket 对象
    var websocket = null;
    if ('WebSocket' in window) {
    // alert('1');
    websocket = new WebSocket("ws://localhost:8088/ifashion/websocket/socketServer.action");
    // alert('11');
    }
    else if ('MozWebSocket' in window) {  alert('2');

    websocket = new MozWebSocket("ws://localhost:8088/ifashion/websocket/socketServer.action");
    }
    else {
    //alert('3');
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
    // // 接收服务端数据时触发事件
    function onMessage(evt) {
    // alert('22');
    //alert(evt.data);


    //showNotice(evt.data);
       // var ss="您有"+evt.data+"条未读消息";

        if(evt.data=="您没有未读消息"){
            $("#message-bell-btn").attr("title",evt.data);
            $("#badge").hide();
        }else if(evt.data=="您收到一条新消息"){
            $("#message-bell-btn").attr("title","您收到新消息了");
            showNotice(evt.data);
        }else if(evt.data.length==1){
            $("#message-bell-btn").attr("title","您有"+evt.data+"条未读消息");
            showNotice("您有"+evt.data+"条未读消息");
        }else {
            $("#message-bell-btn").attr("title",evt.data);
            // showNotice(evt.data);
        }



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

    function showNotice(content) {
    Notification.requestPermission(function (perm) {
    if (perm == "granted") {
    var notification = new Notification("iFashion:", {
    dir: "auto",
    lang: "hi",
    tag: "testTag",
    icon: "${pageContext.request.contextPath}/static/admin/images/logo.png",
    body: content
    });
    }
    })
    }


    window.close=function()
    {
    websocket.onclose();
    }






    <%--$("#resetcode").blur(function () {--%>
        <%--var resetcode=$("input[id='resetcode']").val();--%>
        <%--var datas={"resetcode":resetcode};--%>
        <%--$.ajax({--%>
            <%--type: 'POST',--%>
            <%--url: '${pageContext.request.contextPath}/user/ajaxResetGetCode.action',--%>
            <%--dataType: 'json', //表示返回值的数据类型--%>
            <%--traditional: true, //使json格式的字符串不会被转码--%>
            <%--data: datas,--%>
            <%--success: function (data) {--%>
                <%--if(data.message=="验证码错误"){--%>
                    <%--$("#error").html(data.message);--%>
                    <%--$("input[id='resetcode']").focus();--%>
                <%--}--%>
                <%--//alert("111");--%>
                <%--//alert("e");--%>
            <%--}--%>
        <%--});--%>
    <%--})--%>

// function test() {
//    $("#message-bell-btn").attr("title","您好");
// }
//     test();
<%--function  getMessage() {--%>
    <%--var datas={"id":1};--%>
    <%--$.ajax({--%>
    <%--type: 'POST',--%>
    <%--url: '${pageContext.request.contextPath}/user/ajaxGetMessages.action',--%>
    <%--dataType: 'json', //表示返回值的数据类型--%>
    <%--traditional: true, //使json格式的字符串不会被转码--%>
    <%--data: datas,--%>
    <%--success: function (data) {--%>
        <%--if(data.message=='0'){--%>
           <%--// alert(data.message);--%>
            <%--$("#message-bell-btn").attr("title","您没有未读消息");--%>
            <%--$("#badge").hide();--%>
        <%--}else {--%>
            <%--//alert(data.message);--%>
            <%--var ss="您有"+data.message+"条未读消息";--%>
            <%--$("#message-bell-btn").attr("title",ss);--%>
        <%--}--%>
    <%--//alert("111");--%>
    <%--//alert("e");--%>
    <%--}--%>
<%--})--%>
<%--}--%>
    //getMessage();
    // setInterval("getMessage()",5000);
</script>


</body>
</html>
