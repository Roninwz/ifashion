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


    <%--&lt;%&ndash;导航栏css&ndash;%&gt;--%>

    <link rel="stylesheet" href="static/user/login/baidu.css">
    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>


    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <script type="text/javascript" src="static/user/login/reg.js"></script>
    <%--其它js--%>



</head>
<body>
<!--header开始-->
<div class="header">
    <%--<div>--%>
        <%--<a href="#" class="baidu"></a>--%>
    <%--</div>--%>
    <div>
        <a href="#" class="logo"></a>
    </div>
    <div class="login">
        <span>我已注册，现在就</span>
        <a href="user/index.action" class="login_icon">登录</a>
    </div>
    <div class="hr"></div>
</div>
<!--header结束-->

<!--content开始-->
<div class="content">
    <div class="reg">
        <form action="user/registercheck.action" method="post">
            <dl>
                <dt>用户名</dt>
                <dd class="ipt_box">
                    <input id="usr" name="username" type="text" placeholder="请设置用户名" />
                    <span class="clear"></span>
                </dd>
                <dd class="mes">
                    <div class="tip">设置后不可更改<br>中英文均可，最长14个英文或7个汉字</div>
                    <div class="error">
                        <span class="error_icon"></span>
                        <span></span>
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

            <dl>
                <dt>验证码</dt>
                <dd class="ipt_box">
                    <input id="yzm" name="code" type="text" placeholder="请输入验证码" style="width: 200px;"/>
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
                    <input id="pwd" name="password" type="password" placeholder="请设置登录密码" />
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
                <dt></dt>
                <%--<dd class="ipt_box pro">--%>
                    <%--<input id="agree" type="checkbox" checked />--%>
                    <%--<span>阅读并接受<a href="#">《XX用户协议》</a></span>--%>
                <%--</dd>--%>
            </dl>
            <dl>
                <dt></dt>
                <dd>
                    <input class="regBtn" type="submit" value="注册" />
                </dd>
                <%--<dd class="mes">--%>
                    <%--<div class="error agreeErr">--%>
                        <%--<span class="error_icon"></span>--%>
                        <%--<span>您还未接受百度用户协议</span>--%>
                    <%--</div>--%>
                <%--</dd>--%>
            </dl>
        </form>
    </div>


</div>
<!--content结束-->

<!--footer开始-->
<div class="footer">
    <p>2017 ©XXXXXX</p>
</div>
<!--footer结束-->






</body>
</html>
