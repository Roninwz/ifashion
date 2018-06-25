<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/4
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<%@ include file="header.jsp" %>--%>

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
    <link rel="stylesheet" href="static/user/login/header.css">
    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>

</head>
<body>


<%--头部--%>


<div class='w1180 ad' id="OL_SYS_925_51">
</div>

<div class='w1180 logoAndlogin'>
    <h1 class='logo'>
        <a href="">
            <img src='${pageContext.request.contextPath }/static/user/common/top/images/top.png' style='padding-left:200px' alt='iFashion' title='iFashion' />
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
            <button class="btn btn_primary radius">
                <a href="user/personal.action" target="_self" rel="nofollow" style="color: #000">个人中心</a>
            </button>
            <button class="btn btn_primary radius">
                <a href="user/userlogout.action" target="_self" rel="nofollow" style="color: #000">注销</a>
            </button>

            <div id="message" style="float: right">
            <span data-type="1" class="message-bell-btn" title="99条新消息"><i class="fa fa-bell-o "></i>
                <!-- <span class="badge-dot"></span> -->

            </span>
            </div>


        </c:if>
    </div>
</div>


<div class='navSearch'>
    <div class="navBg"></div>
    <div class="w1180">
        <div class="nav1">
            <a href="index.html" class="here">首页</a>
            <a href="clothes.html">穿衣搭配</a>
            <a href="community.html">社区精选</a>
            <a href="information.html">资讯</a>
            <a href="online.html">私人定制</a>
            <a href="javascript:void(0);" class="searchBt"></a>
        </div>
        <div class="navChilren">
            <ul>
                <li></li>
                <li></li>
                <li>
                    <a href="forum.html" target="_blank">论坛</a>
                    <a href="community">社区</a>
                </li>
                <li></li>

            </ul>
        </div>
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
        <input name="uname" type="text" placeholder="手机号/邮箱：">
        <input name="password" type="password" placeholder="密码：">
        <input name="code" type="text" placeholder="验证码：" style="width: 180px;float: left;">
        <img id="codeValidateImg" onClick="javascript:flushValidateCode();"  alt="验证码" style="width: 100px;float: left;"/>
        <input type="submit" name="type" class="button-blue login" value="登录">
        <input type="hidden" name="return-url" value="">
        <div class="clearfix"></div>
        <label class="remember"><input name="remember" type="checkbox" checked/>记住密码</label>
        <a class="forgot" id="forgot">忘记密码？</a>
    </form>
</div>




<div class="modal" id="forgetform">
    <a class="close" data-dismiss="modal">×</a>
    <h1>忘记密码</h1>
    <form class="forgot-form" method="post" action="http://www.jb51.net">
        <input name="email" value="" placeholder="注册邮箱：">
        <div class="clearfix"></div>
        <input type="submit" name="type" class="forgot button-blue" value="发送重设密码邮件">
    </form>
</div>
<script type="text/javascript">
    // $(document).ready(function() {
    //     flushValidateCode();//进入页面就刷新生成验证码
    // });
    $(document).ready(function() {
        $("#login-modal").modal({show:!0});
    });
    window.onload=flushValidateCode;




    /* 刷新生成验证码 */
    function flushValidateCode(){
        var validateImgObject = document.getElementById("codeValidateImg");
        validateImgObject.src = "${pageContext.request.contextPath }/getSysManageLoginCode.action?time=" + new Date();
    }




</script>

<%@ include file="footer.jsp" %>
</body>
</html>
