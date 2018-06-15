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


            <form class="form form-horizontal" id="form-article-add" enctype='multipart/form-data' action="admin/updatehandleuser.action" method="post">
                <input type="text" name="userId" value="${user.userId}" hidden>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>用户名：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="${user.username}" placeholder=""  name="username">
                    </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>手机号：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="${user.tel}" placeholder=""  name="tel">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>邮箱：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="${user.email}" placeholder=""  name="email">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>性别：</label>

                        <div class="radio-box">
                            <input type="radio" id="radio-2" value="M" name="sex"
                            <c:if test="${user.sex=='M'}">
                                   checked
                            </c:if>

                                   >
                            <label for="radio-2">男</label>
                        </div>


                    <div class="radio-box ">
                        <input type="radio" id="radio-3" value="F" name="sex"

                        <c:if test="${user.sex=='F'}">
                               checked
                        </c:if>
                        >
                        <label for="radio-2">女</label>
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>年龄：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="${user.age}" placeholder="" id="" name="age">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>用户介绍：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <textarea type="text" class="input-text" value="${user.userIntroduce}" placeholder=""  name="userIntroduce"></textarea>
                    </div>
                </div>


                <!-- <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>分类栏目：</label>
                    <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
                                    <select name="" class="select">
                                        <option value="0">身份选择</option>

                                        <option value="11">├行业动态</option>
                                        <option value="12">├行业资讯</option>
                                        <option value="13">├行业新闻</option>
                                    </select>
                                    </span> </div>
                </div> -->
                <div class="row cl">
                    <label class="form-label col-xs-10 col-sm-2"></label>
                    <div class="col-xs-8 col-sm-9">
                        <input class=" btn btn-default radius" type="submit" value="确认更新">
                    </div>

                </div>

            </form>

        </article>

    </div>
</section>
</body>
</html>