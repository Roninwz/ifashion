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

            <div class="text-c">

                <form  name="forms" action="admin/searcharticle.action" method="post">

                    <input type="text" name="topicTitle"  placeholder="话题标题名" style="width:250px" class="input-text">
                    <button name=""  class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
                </form>
            </div>
            <div class="cl pd-5 bg-1 bk-gray mt-20">
                    <span class="l">
                            <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
                            <a class="btn btn-primary radius" data-title="添加资讯" href="admin/addtopic.action"><i class="Hui-iconfont">&#xe600;</i> 添加话题</a>
                            </span>
                <span class="r">共有数据：<strong>54</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="25"><input type="checkbox" name="" value=""></th>
                        <th width="80">ID</th>
                        <th width="80">标题</th>
                        <th width="80">内容</th>
                        <th width="80">来源</th>
                        <th width="120">发布时间</th>
                        <th width="75">浏览次数</th>
                        <%--<th width="60">发布状态</th>--%>
                        <th width="120">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${topics}" var="topics">
                    <tr class="text-c">
                        <td><input type="checkbox" value="" name=""></td>
                        <td>${topics.topicId}</td>
                        <td><a style="cursor:pointer" href="articledetail.html">${topics.topicTitle}</a></td>
                        <td>${topics.topicContent}</td>
                        <td>${topics.userId}</td>
                        <td>${topics.topicStart}</td>
                        <td>${topics.topicEnd}</td>
                        <%--<td class="td-status"><span class="label label-success radius">已发布</span></td>--%>
                        <td class="f-14 td-manage"><a style="text-decoration:none" onClick="article_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>
                            <a style="text-decoration:none" class="ml-5" href="admin/updatetopic.action?topicId=${topics.topicId}" title="编辑"><i class="Hui-iconfont">&#xe6df;编辑</i></a>
                            <a style="text-decoration:none" class="ml-5" onClick="article_del(this,${topics.topicId})" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;删除</i></a></td>
                    </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>


        </article>

    </div>
</section>

<script>

    /*删除*/
    function article_del(obj, id) {
        // alert('g');
        alert(id);
        var topicId=id;
        var datas={"topicId":topicId};
        layer.confirm('确认要删除吗？', function(index) {
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/admin/ajaxdeletetopic.action',
                dataType: 'json', //表示返回值的数据类型
                contentType: 'application/json;charset=UTF-8', //内容类型
                traditional: true, //使json格式的字符串不会被转码
                data: JSON.stringify(datas),
                success: function(data) {
                    alert(data);
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!', {
                        icon: 1,
                        time: 1000
                    });
                },
                error: function(data) {
                    alert("data");
                    alert('1');
                    console.log(data.msg);
                },
            });
        });
    }
</script>
</body>
</html>