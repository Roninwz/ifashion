<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--fmt  国际化格式--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/bootstrap/css/bootstrap.min.css">
</head>
<body>
<%@ include file="left.jsp" %>

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <!-- <span class="c-999 en">&gt;</span> -->
        <!-- <span class="c-666">我的桌面</span>  -->
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
           href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <!-- 内容填充 -->
    <div class="Hui-article">
        <article class="cl pd-20">


            <div class="cl pd-5 bg-1 bk-gray mt-20">
                    <span class="l">

                                    <a class="btn btn-primary radius" data-title="添加用户" href="admin/addmodule.action"><i
                                            class="Hui-iconfont">&#xe600;</i> 添加功能模块</a>
                                    </span>
                <span class="r">共有数据：<strong>${n}</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="40">ID</th>
                        <th width="80">管理员名</th>
                        <%--<th width="80">添加时间</th>--%>
                        <th width="60">拥有角色</th>
                        <th width="120">操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${modules}" var="modules">
                        <tr class="text-c">

                            <td>${modules.moduleId}</td>
                            <td>${modules.moduleName}</td>


                                <%--<td class="td-status"><span class="label label-success radius">${admins.adminId}</span></td>--%>
                            <td class="td-status"><span class="label label-success radius">
                                <c:if test="${modules.pId==0}">
                                    一级菜单
                                </c:if>
                                    <c:if test="${modules.pId!=0}">
                                        二级菜单
                                    </c:if>

                        </span></td>

                            <td class="f-14 td-manage">
                                <a style="text-decoration:none" class="ml-5" href="admin/updatemodule.action?moduleId=${modules.moduleId}" title="编辑"><i
                                        class="Hui-iconfont">&#xe6df;编辑</i></a>
                                <a style="text-decoration:none" class="ml-5" onClick="article_del(this,${modules.moduleId})"
                                   href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;删除</i></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>


                <!--显示分页信息-->
                <%--<div class="row">--%>
                    <%--<!--文字信息-->--%>
                    <%--<div class="col-md-6">--%>
                        <%--当前第 ${pageInfo.pageNum} 页.总共 ${pageInfo.pages} 页.一共 ${pageInfo.total} 条记录--%>
                    <%--</div>--%>

                    <%--<!--点击分页-->--%>
                    <%--<div class="col-md-6">--%>
                        <%--<nav aria-label="Page navigation">--%>
                            <%--<ul class="pagination">--%>

                                <%--<li><a href="${pageContext.request.contextPath}/admin/modulemanage.action?curPage=1">首页</a></li>--%>

                                <%--<!--上一页-->--%>
                                <%--<li>--%>
                                    <%--<c:if test="${pageInfo.hasPreviousPage}">--%>
                                        <%--<a href="${pageContext.request.contextPath}/admin/modulemanage.action?curPage=${pageInfo.pageNum-1}" aria-label="Previous">--%>
                                            <%--<span aria-hidden="true">«</span>--%>
                                        <%--</a>--%>
                                    <%--</c:if>--%>
                                <%--</li>--%>

                                <%--<!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->--%>
                                <%--<c:forEach items="${pageInfo.navigatepageNums}" var="page_num">--%>
                                    <%--<c:if test="${page_num == pageInfo.pageNum}">--%>
                                        <%--<li class="active"><a href="#">${page_num}</a></li>--%>
                                    <%--</c:if>--%>
                                    <%--<c:if test="${page_num != pageInfo.pageNum}">--%>
                                        <%--<li><a href="${pageContext.request.contextPath}/admin/modulemanage.action?curPage=${page_num}">${page_num}</a></li>--%>
                                    <%--</c:if>--%>
                                <%--</c:forEach>--%>

                                <%--<!--下一页-->--%>
                                <%--<li>--%>
                                    <%--<c:if test="${pageInfo.hasNextPage}">--%>
                                        <%--<a href="${pageContext.request.contextPath}/admin/modulemanage.action?curPage=${pageInfo.pageNum+1}"--%>
                                           <%--aria-label="Next">--%>
                                            <%--<span aria-hidden="true">»</span>--%>
                                        <%--</a>--%>
                                    <%--</c:if>--%>
                                <%--</li>--%>

                                <%--<li><a href="${pageContext.request.contextPath}/admin/modulemanage.action?curPage=${pageInfo.pages}">尾页</a></li>--%>
                            <%--</ul>--%>
                        <%--</nav>--%>
                    <%--</div>--%>

                <%--</div>--%>
            </div>

        </article>

    </div>
</section>


<script>






    /*资讯-删除*/
    function article_del(obj, id) {
// alert('g');
       // alert(id);
        var moduleId = id;
        var datas = {"moduleId": moduleId};
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/admin/ajaxdeletemodule.action',
                dataType: 'json', //表示返回值的数据类型
                contentType: 'application/json;charset=UTF-8', //内容类型
                traditional: true, //使json格式的字符串不会被转码
                data: JSON.stringify(datas),
                success: function (data) {
                    alert(data);
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!', {
                        icon: 1,
                        time: 1000
                    });
                },
                error: function (data) {
                    //alert("data");
                    //alert('1');
                    console.log(data.msg);
                },
            });
        });
    }


</script>


</body>
</html>