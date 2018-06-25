<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
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

                <span class="r">共有数据：<strong>${n}</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="40">ID</th>
                        <th width="80">日志url</th>
                        <th width="80">操作人</th>
                        <th width="60">日志时间</th>
                        <th width="120">操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${logForms}" var="logForms">
                        <tr class="text-c">
                            <td>${logForms.logId}</td>
                            <td><a style="cursor:pointer" href="articledetail.html">${logForms.logOperation}</a></td>


                                <%--<td class="td-status"><span class="label label-success radius">${admins.adminId}</span></td>--%>
                            <td class="td-status"><span class="label label-success radius">
                                    ${logForms.logName}
                        </span></td>
                            <td>${logForms.logCreatedate}
                                <%--<fmt:formatDate value="${logForms.logCreatedate}" pattern="yyyy-MM-dd" type="date"/>--%>
                                    <%--<fmt:formatDate value="${logForms.logCreatedate}" pattern="yyyy-MM-dd HH:mm:ss" type="date"/>--%>
                            </td>
                            <td class="f-14 td-manage">

                                <a style="text-decoration:none" class="ml-5" onClick="article_del(this,${logForms.logId})"
                                   href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;删除</i></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

        </article>

    </div>
</section>


<script>


    $('.table-sort').dataTable({
        "aaSorting": [
            [1, "desc"]
        ], //默认第几个排序
        "bStateSave": true, //状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {
                "orderable": false,
                "aTargets": [0, 4]
            } // 不参与排序的列
        ]
    });

    /*资讯-删除*/
    function article_del(obj, id) {
// alert('g');
       // alert(id);
        var logId = id;
        var datas = {"logId": logId};
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/admin/ajaxdeletelog.action',
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