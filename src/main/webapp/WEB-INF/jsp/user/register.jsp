<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/8
  Time: 10:29
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
<head>
    <meta charset="utf-8">
    <base href="<%=basePath%>">
    <title>Title</title>



    <%--导航栏css--%>
    <%--<link rel="stylesheet" href="static/user/login/css/newindex_v201607.css">--%>
    <%--<link rel="stylesheet" href="static/user/login/css/newconment_v201607.css">--%>
    <%--<link rel="stylesheet" href="static/user/login/css/login.css">--%>
    <%--注册csss--%>
    <link rel="stylesheet" type="text/css" href="static/user/login/baidu.css" />
    <%--底部css--%>
    <%--<link rel="stylesheet" href="static/user/common/foot/css/foot.css">--%>

    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>
    <script src="static/user/login/reg.js" type="text/javascript"></script>




</head>
<body>
<%--<%@ include file="header.jsp" %>--%>
<!--header开始-->
<div class="header">
    <div>
        <a href="#" class="baidu"></a>
    </div>
    <div>
        <a href="#" class="logo"></a>
    </div>
    <div class="login">
        <span>我已注册，现在就</span>
        <a href="#" class="login_icon">登录</a>
    </div>
    <div class="hr"></div>
</div>
<!--header结束-->

<!--content开始-->
<div class="content">
    <div class="reg">
        <!-- method="post" -->
        <form action="success.html">
            <dl>
                <dt>用户名</dt>
                <dd class="ipt_box">
                    <input id="usr" name="usr" type="text" placeholder="请设置用户名" />
                    <span class="clear"></span>
                </dd>
                <dd class="mes">
                    <div class="tip">设置后不可更改<br>中英文均可，最长14个英文或7个汉字</div>
                    <div class="error">
                        <span class="error_icon"></span>
                        <span>6666666666666</span>
                    </div>
                </dd>
            </dl>

            <dl>
                <dt>手机号</dt>
                <dd class="ipt_box">
                    <input id="tel" name="tel" type="text" placeholder="可用于登录和找回密码" />
                    <span class="clear"></span>
                </dd>
                <dd class="mes">
                    <div class="tip">请输入中国大陆手机号,其他用户不可见</div>
                    <div class="error">
                        <span class="error_icon"></span>
                        <span></span>
                    </div>
                </dd>
            </dl>

            <dl class="yanzhengmashow">
                <dt>验证码</dt>
                <dd class="ipt_box">
                    <input id="yzm" name="yzm" class="c_code_msg" type="text" placeholder="请输入验证码" />
                    <span class="clear"></span>
                </dd>
                <dd class="ipt_box">

                    <span class="msgs">获取短信验证码</span>
                    <span class="clear"></span>
                </dd>

                <dd class="mes">
                    <div class="error">
                        <span class="error_icon"></span>
                        <span></span>
                    </div>
                </dd>
            </dl>

            <dl>
                <dt>密码</dt>
                <dd class="ipt_box">
                    <input id="pwd" name="pwd" type="password" placeholder="请设置登录密码" />
                    <span class="clear"></span>
                </dd>
                <dd class="mes">
                    <div class="error">
                        <span class="error_icon"></span>
                        <span></span>
                    </div>
                    <ul>
                        <li>
                            <span class="pwd_icon">○</span><span class="pwd_tip">长度为6~14个字符</span>
                        </li>
                        <li>
                            <span class="pwd_icon">○</span><span class="pwd_tip">支持数字、大小写字母和标点符号</span>
                        </li>
                        <li>
                            <span class="pwd_icon">○</span><span class="pwd_tip">不允许有空格</span>
                        </li>
                    </ul>
                </dd>
            </dl>

            <dl>
                <!-- <dt></dt>
            <dd class="ipt_box pro">
                <input id="agree" type="checkbox" checked />
                <span>阅读并接受<a href="#">《XX用户协议》</a></span>
            </dd>   -->
            </dl>
            <dl>
                <dt></dt>
                <dd>
                    <input class="regBtn" type="button" value="注册" />
                </dd>
                <!-- <dd class="mes">
                <div class="error agreeErr">
                    <span class="error_icon"></span>
                    <span>您还未接受百度用户协议</span>
                </div>
            </dd>   -->
            </dl>
        </form>
    </div>
    <!--
    <div class="right">
        <h3 class="phoneReg">手机快速注册</h3>
        <div>
            <p class="p1">请使用中国大陆手机号，编辑短信：</p>
            <p class="p2">6-14位字符（支持数字/字母/符号）</p>
            <p class="p1">作为登录密码，发送至：</p>
            <p class="p2">0000 00000 00000</p>
            <p class="p3">即可注册成功，手机号即为登录帐号。</p>
        </div>
    </div>   -->


</div>
<!--content结束-->







</body>
</html>
