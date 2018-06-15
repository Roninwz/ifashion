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
            <form class="form form-horizontal" id="form-article-add" enctype='multipart/form-data' action="admin/addhandleadmin.action" method="post">

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>管理员名：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="" placeholder="" id="" name="adminName">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>角色名：</label>
                    <c:forEach items="${roles}" var="roles">
                        <%--　如果checkbox都留空（不选择），那么Controller会报错。解决办法：①前端js判断；②前端加一个hidden的checkbox--%>
                        <input type="checkbox" name="roleId" value="emptyroleId" id="checkbox-2" hidden checked>
                    <div class="check-box">
                        <input type="checkbox" name="roleId" value="${roles.roleId}" id="checkbox-1">
                        <label for="checkbox-1">${roles.roleName}</label>
                    </div>
                    </c:forEach>

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