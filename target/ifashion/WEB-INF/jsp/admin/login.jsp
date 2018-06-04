<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/3
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>IFshion后台登录页面</title>
    <link rel="stylesheet" type="text/css" href="static/admin/login/css/style2.0.css">
    <style type="text/css">
        ul li{font-size: 30px;color:#2ec0f6;}
        .tyg-div{z-index:-1000;float:left;position:absolute;left:5%;top:20%;}
        .tyg-p{
            font-size: 14px;
            font-family: 'microsoft yahei';
            position: absolute;
            top: 135px;
            left: 60px;
        }
        .tyg-div-denglv{
            z-index:1000;float:right;position:absolute;right:3%;top:10%;
        }
        .tyg-div-form{
            background-color: #23305a;
            width:300px;
            height:auto;
            margin:120px auto 0 auto;
            color:#2ec0f6;
        }
        .tyg-div-form form {padding:10px;}
        .tyg-div-form form input[type="text"]{
            width: 270px;
            height: 30px;
            margin: 25px 10px 0px 0px;
        }
        .tyg-div-form form button {
            cursor: pointer;
            width: 270px;
            height: 44px;
            margin-top: 25px;
            padding: 0;
            background: #2ec0f6;
            -moz-border-radius: 6px;
            -webkit-border-radius: 6px;
            border-radius: 6px;
            border: 1px solid #2ec0f6;
            -moz-box-shadow:
                    0 15px 30px 0 rgba(255,255,255,.25) inset,
                    0 2px 7px 0 rgba(0,0,0,.2);
            -webkit-box-shadow:
                    0 15px 30px 0 rgba(255,255,255,.25) inset,
                    0 2px 7px 0 rgba(0,0,0,.2);
            box-shadow:
                    0 15px 30px 0 rgba(255,255,255,.25) inset,
                    0 2px 7px 0 rgba(0,0,0,.2);
            font-family: 'PT Sans', Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-weight: 700;
            color: #fff;
            text-shadow: 0 1px 2px rgba(0,0,0,.1);
            -o-transition: all .2s;
            -moz-transition: all .2s;
            -webkit-transition: all .2s;
            -ms-transition: all .2s;


        }

        .contPar #page1 .imgGroug .myimg{
            border-radius:50%;
            border:2px solid;

        }
    </style>
<body>
<div class="tyg-div">
    <ul>
        <li>让</li>
        <li><div style="margin-left:20px;">时</div></li>
        <li><div style="margin-left:40px;">尚</div></li>
        <li><div style="margin-left:60px;">引</div></li>
        <li><div style="margin-left:80px;">领</div></li>
        <li><div style="margin-left:100px;">潮</div></li>
        <li><div style="margin-left:120px;">流</div></li>
    </ul>
</div>
<div id="contPar" class="contPar">
    <div id="page1"  style="z-index:1;">
        <div class="title0">追求时尚的IFashion</div>
        <div class="title1">时尚、潮流、个性、新颖</div>
        <div class="imgGroug">
            <ul>
                <img alt="" class="img0 png myimg" src="static/admin/login/img/p1.jpg">
                <img alt="" class="img1 png myimg" src="static/admin/login/img/p2.jpg">
                <img alt="" class="img2 png myimg" src="static/admin/login/img/p4.jpg">
            </ul>
        </div>
        <img alt="" class="img3 png" src="./img/page1_3.jpg">
    </div>
</div>
<div class="tyg-div-denglv">
    <div class="tyg-div-form">
        <form action="admin/logincheck.action" method="post">
            <h2>登录</h2><p class="tyg-p">欢迎访问  时尚引领平台Ifashion</p>
            <p><c:if test="${not empty error}">${error}</c:if></p>
            <div style="margin:5px 0px;">
                <input type="text" name="adminName" placeholder="请输入账号..."/>
            </div>
            <div style="margin:5px 0px;">
                <input type="text" name="password" placeholder="请输入密码..."/>
            </div>
            <div style="margin:5px 0px;">
                <input type="text" style="width:150px;" name="code" placeholder="请输入验证码..."/>
                <img id="codeValidateImg" onClick="javascript:flushValidateCode();" style="vertical-align:botto;" alt="验证码"/>
            </div>
            <button type="submit" >登<span style="width:20px;"></span>录</button>
        </form>
    </div>
</div>


<script type="text/javascript" src="static/admin/login/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="static/admin/login/js/com.js"></script>
<!--[if IE 6]>
<script language="javascript" type="text/javascript" src="static/admin/login/script/ie6_png.js"></script>
<script language="javascript" type="text/javascript">
    DD_belatedPNG.fix(".png");
</script>
<![endif]-->

<script type="text/javascript">
    $(document).ready(function() {
        flushValidateCode();//进入页面就刷新生成验证码
    });

    /* 刷新生成验证码 */
    function flushValidateCode(){
        var validateImgObject = document.getElementById("codeValidateImg");
        validateImgObject.src = "${pageContext.request.contextPath }/getSysManageLoginCode.action?time=" + new Date();
    }


</script>

</body>
</html>