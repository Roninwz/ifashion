<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--fmt  国际化格式--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
</head>
<body>
<%@ include file="left.jsp"%>

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <!-- <span class="c-999 en">&gt;</span> -->
        <!-- <span class="c-666">我的桌面</span>  -->
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <!-- 内容填充 -->
    <div class="Hui-article">
        <article class="cl pd-20">


            <form class="form form-horizontal" id="form-article-add" enctype='multipart/form-data' action="admin/addhandleuser.action" method="post">
                <input type="hidden" name="token" value="${token}">
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>用户名：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="" placeholder=""  name="username">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>登录密码：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="password" class="input-text" value="" placeholder=""  name="password">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>手机号：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="" placeholder=""  name="tel">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>邮箱：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="" placeholder=""  name="email">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>性别：</label>
                    <div class="radio-box">
                        <input type="radio" id="radio-2" value="M" name="sex">
                        <label for="radio-2">男</label>
                    </div>
                    <div class="radio-box ">
                        <input type="radio" id="radio-3" value="F" name="sex" checked>
                        <label for="radio-2">女</label>
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>年龄：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="" placeholder="" id="" name="age">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>用户介绍：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <textarea type="text" class="input-text" value="" placeholder=""  name="userIntroduce"></textarea>
                    </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-10 col-sm-2"></label>
                    <div class="col-xs-8 col-sm-9">
                        <input class=" btn btn-default radius" type="submit" value="确认添加">
                    </div>

                </div>

            </form>
        </article>

    </div>
</section>
</body>
</html>