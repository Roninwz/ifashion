
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/login2/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/person/message/css/mess.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/login/header.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/user/common/plugin/font-awesome/css/font-awesome.min.css">
    <script src="${pageContext.request.contextPath}/static/user/common/plugin/jquery.cookie.js"></script>
    <style>
        .tc_login  .right .remember-code{
            width:30px;height:30px;margin-top:20px;margin-right:150px;
        }

        .tc_login  .right .span-code{
            width:200px;height:30px;margin-top:-40px;
        }

    </style>
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
        <input type="text" name="uuname" id="uuname" value="${uname}" hidden>
        <c:if test="${empty uname}">
            <a  href="javascript:void(0)" class="tc">
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
    <%--<div class='w1180 search'>--%>
        <%--<form id="searchPage" target="_blank" method="get" action="user/search" accept-charset="utf8">--%>
            <%--<div class="mainsearch">--%>
                <%--<input onkeyup="selBrand('searchpro','auto_brand')" type="text" class="main_input" id="searchpro" autocomplete="off" name="q" value="请输入名称">--%>
                <%--<div class="c1_se_2_c" id="auto_brand" style="display: none;"></div>--%>
            <%--</div>--%>
            <%--<input type="hidden" name="s" value="15679544665037353740">--%>
            <%--<input type="hidden" name="nsid" value="1" class="aritcleType">--%>
            <%--<input type="button" class="mainbtn" id="J_search_sub" value="">--%>
            <%--<input type="button" title='关闭搜索框' class="closeSearchbtn" value="">--%>
        <%--</form>--%>
        <%--<div class='hotpro'>--%>
            <%--<a href="" title="资讯-夏纳电影节" target="_blank">资讯-夏纳电影节</a>--%>
            <%--<a href="" title="定制-裙子" target="_blank">定制-裙子</a>--%>
            <%--<a href="" title="定制-运动鞋" target="_blank">定制-运动鞋</a>--%>
            <%--<!-- 设计师 -->--%>
            <%--<a href="" title="设计师-房莹" target="_blank">设计师-房莹</a>--%>
            <%--<a href="" title="话题" target="_blank">话题-PVC</a>--%>
            <%--<!-- <a href="" title="?????" target="_blank"></a> -->--%>
        <%--</div>--%>
    <%--</div>--%>



</div>


<div id="gray"></div>
<div class="popup" id="popup">

    <div class="top_nav" id='top_nav'>
        <div align="center">
            <i></i>
            <span>登录账号</span>
            <c:if test="${not  empty isError}">
                <div class="error">${isError}</div>
            </c:if>
            <a class="guanbi"></a>
        </div>
    </div>

    <div class="min">

        <div class="tc_login">

            <div class="left">
                <h4 align="center">微信扫描，关注一下</h4>
                <div align="center"><img src="${pageContext.request.contextPath}/static/user/login2/wei.jpg" width="150" height="150" /></div>
                <dd>
                    <div align="center">欢迎您关注我们的微信公众号</div>
                </dd>
            </div>

            <div class="right">
                <form method="POST" name="form_login"  action="user/logincheck.action">
                    <div align="center">
                        <%--<a href="">短信快捷登录</a>--%>
                        <i class="icon-mobile-phone"></i>
                        <input type="text" name="uname" id="uname" required="required" placeholder="用户名" autocomplete="off" class="input_yh">
                        <input type="password" name="password" id="password" required="required" placeholder="密码" autocomplete="off" class="input_mm">
                        <input type="text" name="code" id="pass" required="required" placeholder="验证码" style="width: 130px;float:left;margin-left:5px;" class="input_mm">
                            <img id="codeValidateImg" onClick="javascript:flushValidateCode();"  alt="验证码" style="width: 100px;height:40px;margin-top: 20px;float: left;"/>
                            <%--<input type="checkbox" name="remember" id="remember-password"   onclick="remeber()" class="remember-code">--%>
                            <%--<span class="span-code">记住密码</span>--%>
                            <%--<input type="checkbox" name="remember" id="remember-password"   onclick="remeber()" class="remember-code">--%>
                            <div id="codered" style="width:240px;height:40px;">
                                <input type="checkbox" name="remember" id="remember-password"   onclick="remeber()" class="remember-code">
                                <span style="width:200px;height:30px;margin-top:-40px;">记住密码</span>
                            </div>
                    </div>

                    <div align="center">
                        <input type="submit" class="button" title="Sign In" value="登录">
                    </div>
                </form>
                <dd>

                    <div><a href="javascript:void(0)" style="float: left;" onclick="forgetPassWord()">忘记密码</a><span style="width: 200px;"></span><a href="user/register.action" target="_blank">立即注册</a></div>
                    <%--<div align="right"><a href="#" target="_blank">忘记密码</a></div>--%>

                </dd>
                <dd>

                    <%--<div style="width: 130px;height: 30px;"><input type="checkbox" name="red" style="width: 30px;height: 30px;margin-top:-4px;margin-right: 160px;"> <span style="margin-left:120px;margin-top:-30px;width: 100px;height: 30px;">记住密码</span></div>--%>
                    <%--<div align="right"><a href="#" target="_blank">忘记密码</a></div>--%>
                </dd>
                <hr align="center" />
                <%--<div align="center">期待更多功能 </div>--%>
            </div>

        </div>

    </div>

</div>


<script type="text/javascript">
    function clearAllCookie() {
        var keys = document.cookie.match(/[^ =;]+(?=\=)/g);
        if(keys) {
            for(var i = keys.length; i--;)
                document.cookie = keys[i] + '=0;expires=' + new Date(0).toUTCString()
        }
    }
    var wrap= document.getElementById("codered");
    wrap.onclick=function(){
        $("#remember-password").prop("checked",$("#remember-password").is(':checked')?false:true);

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

        remeber();
    }

    // var check=document.getElementById("remember-password");
    // check.onclick=function(){
    //     return true;
    // }





    //窗口效果
    //点击登录class为tc 显示
    $(".tc").click(function(){
        $("#gray").show();
        $("#popup").show();//查找ID为popup的DIV show()显示#gray
        tc_center();
    });
    //点击关闭按钮
    $("a.guanbi").click(function(){
        $("#gray").hide();
        $("#popup").hide();//查找ID为popup的DIV hide()隐藏
    })

    //窗口水平居中
    $(window).resize(function(){
        tc_center();
    });

    function tc_center(){
        var wtop= document.body.clientWidth;
        var wleft= document.body.clientHeight;
        // var _top=($(window).height()-$(".popup").height())/2;
        // var _left=($(window).width()-$(".popup").width())/2;
         var _top=($(body).height()-$(".popup").height())/2;
        var _left=($(body).width()-$(".popup").width())/2;

        $(".popup").css({top:_top,left:_left});
    }



    $(document).ready(function() {
        flushValidateCode();//进入页面就刷新生成验证码
    });
    // window.onload=flushValidateCode;




    /* 刷新生成验证码 */
    function flushValidateCode(){
        var validateImgObject = document.getElementById("codeValidateImg");
        validateImgObject.src = "${pageContext.request.contextPath}/getSysManageLoginCode.action?time=" + new Date();
    }


   // jquery-cookie实现记住用户名和密码
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
        // if (!$("#remember-password").is(":checked")){
        //     clearAllCookie();
        // }
    });







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
var uuname=$("#uuname").val();
//alert(uname);
if(uuname!=null&&uuname!=''){
    //websocket
    // 初始化一个 WebSocket 对象
    var websocket = null;
    if ('WebSocket' in window) {
        //alert('1');
        websocket = new WebSocket("ws://localhost:8081/ifashion/websocket/socketServer.action");
        // alert('11');
    }
    else if ('MozWebSocket' in window) {  alert('2');

        websocket = new MozWebSocket("ws://localhost:8081/ifashion/websocket/socketServer.action");
    }
    else {
        //alert('3');
        websocket = new SockJS("http://localhost:8081/ifashion/websocket/socketServer.action");
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


}


function forgetPassWord() {
    alert("请联系qq1947914887,或关注微信公众号找回密码");
}



</script>

<script type="text/javascript">
    // $(document).ready(function(){
    //
    //     $(".top_nav").mousedown(function(e){
    //         $(this).css("cursor","move");//改变鼠标指针的形状
    //         var offset = $(this).offset();//DIV在页面的位置
    //         var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离
    //         var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离
    //         $(document).bind("mousemove",function(ev){ //绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件
    //
    //             $(".popup").stop();//加上这个之后
    //
    //             var _x = ev.pageX - x;//获得X轴方向移动的值
    //             var _y = ev.pageY - y;//获得Y轴方向移动的值
    //
    //             $(".popup").animate({left:_x+"px",top:_y+"px"},10);
    //         });
    //
    //     });
    //
    //     $(document).mouseup(function() {
    //         $(".popup").css("cursor","default");
    //         $(this).unbind("mousemove");
    //     });
    // })
</script>


</body>
</html>
