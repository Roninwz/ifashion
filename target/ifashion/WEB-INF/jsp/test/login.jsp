<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/2
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>login</title>

    <link rel="stylesheet" type="text/css" href="static/user/login/css/198zone.css">


</head>
<body>

<a class="btn01" data-toggle="modal" href="#login-modal">登录</a>




<div class="modal" id="login-modal">
    <a class="close" data-dismiss="modal">×</a>
    <h1>登录</h1>
    <form class="login-form clearfix" method="post" action="http://www.jb51.net">
        <div class="form-arrow">	</div>
        <div class="error">用户名或密码错误</div>
        <input name="email" type="text" placeholder="用户名/手机号/邮箱：">
        <input name="password" type="password" placeholder="密码：">
        <input name="password" type="password" placeholder="验证码：">
        <input type="submit" name="type" class="button-blue login" value="登录">
        <input type="hidden" name="return-url" value="">
        <div class="clearfix"></div>
        <label class="remember"><input name="remember" type="checkbox" checked/>下次自动登录 </label>
        <a class="forgot">忘记密码？</a>
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
<script type="text/javascript" src="static/user/login/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="static/user/login/js/modal.js"></script>
<script type="text/javascript">
    $(document).ready(function(){

        $("a.forgot").click(function(){
            $("#login-modal").modal("hide");
            $("#forgetform").modal({show:!0})
        });

        $("#signup-modal").modal("hide");
        $("#forgetform").modal("hide");
        $("#login-modal").modal("hide");
        $("#activation-modal").modal("hide");
        $("#setpassword-modal").modal("hide");

    });
</script>

</body>
</html>



