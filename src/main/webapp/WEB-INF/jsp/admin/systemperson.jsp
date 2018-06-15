<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--fmt  国际化格式--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <!-- 个人设置 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/css/system-person.css">



</head>
<body>
<%@ include file="left.jsp"%>
<%--<c:set var="admin" value="${sessionScope.admin}"/>--%>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <!-- <span class="c-999 en">&gt;</span> -->
        <!-- <span class="c-666">我的桌面</span>  -->
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <!-- 内容填充 -->
    <div class="Hui-article">
        <article class="cl pd-20">

            <div id="tab_demo" class="HuiTab">
                <div class="tabBar clearfix"><span>个人信息设置</span><span>修改密码</span></div>
                <div class="tabCon">
                    <form class="form form-horizontal" id="form-article-add" action="admin/updateAdminInfo.action" method="POST">
                      <%--获取不到值--%>
                          <input type="text" name="adminId" value="${admin.adminId}" hidden>
                        <%--<input type="hidden" name="adminId"  value="${admin.adminId}">--%>
                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>管理员名：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="text" class="input-text" value="${admin.adminName}"   name="adminName">
                            </div>
                        </div>

                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>管理员简介：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="text" class="textarea radius" value="${admin.introduce}" placeholder="请输入个人简介-1000字以内" name="introduce">
                            </div>
                        </div>


                        <div class="row cl">
                            <label class="form-label col-xs-10 col-sm-2"></label>
                            <div class="col-xs-8 col-sm-9">
                                <input class=" btn btn-default radius" type="submit" value="确认修改">
                            </div>

                        </div>
                    </form>
                </div>




                <div class="tabCon">


                    <form class="form form-horizontal" id="form-article-add2" action="admin/updateadminpassword.action" method="POST">
                        <input type="hidden" name="adminId"  value="${admin.adminId}" >
                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>当前密码：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="text" class="input-text" value="" placeholder="" name="beforepass">
                            </div>
                        </div>
                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>新密码：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="password" class="input-text" value="" placeholder="" name="newpass">
                            </div>
                        </div>
                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>确认密码：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="password" class="input-text" value="" placeholder=""  name="newpass2">
                            </div>
                        </div>


                        <div class="row cl">
                            <label class="form-label col-xs-10 col-sm-2"></label>
                            <div class="col-xs-8 col-sm-9">
                                <input class=" btn btn-default radius" type="submit" value="确认修改">
                            </div>

                        </div>
                    </form>
                </div>
            </div>


        </article>

    </div>
</section>



<!-- 个人设置 -->
<script src="${pageContext.request.contextPath }/static/admin/js/system-person.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<!-- 选项卡 -->
<script type="text/javascript">
    $(function() {
        $.Huitab("#tab_demo .tabBar span", "#tab_demo .tabCon", "current", "click", "0")
    });
</script>

</body>
</html>