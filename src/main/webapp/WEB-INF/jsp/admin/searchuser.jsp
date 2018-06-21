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
                <form  name="forms" action="admin/searchuser.action" method="post">
                    <span class="select-box inline">
                                    <select name="" class="select">
                                        <option value="0">全部分类</option>
                                        <option value="1">用户</option>
                                        <option value="2">设计师</option>
                                    </select>
                                    </span>
                    <input type="text" name="username"  placeholder="用户名/设计师名" style="width:250px" class="input-text">
                    <button name=""  class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
                </form>
            </div>
            <!-- 导出excel -->
            <button name="" id="" class="btn btn-success" type="submit"> 导出用户excel</button>

            <div class="cl pd-5 bg-1 bk-gray mt-20">
                    <span class="l">
                                    <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
                                    <a class="btn btn-primary radius" data-title="添加用户" href="adduser.html"><i class="Hui-iconfont">&#xe600;</i> 添加用户</a>
                                    </span>
                <span class="r">共有数据：<strong>${n}</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="25"><input type="checkbox" name="" value=""></th>
                        <th width="40">ID</th>
                        <th width="80">用户名</th>
                        <th width="80">电话</th>
                        <th width="80">邮箱</th>
                        <th width="60">性别</th>
                        <th width="60">年龄</th>
                        <th width="60">时尚积分值</th>
                        <th width="80">注册时间</th>
                        <th width="60">用户身份</th>
                        <th width="60">用户状态</th>
                        <th width="120">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="users">
                        <tr class="text-c">
                            <td><input type="checkbox" value="" name=""></td>
                            <td>${users.userId}</td>
                            <td><a style="cursor:pointer" href="articledetail.html">${users.username}</a></td>
                            <td>${users.tel}</td>
                            <td>${users.username}</td>
                            <td>${users.email}</td>
                            <c:if test="${users.sex == F}">
                            <td>女<td>
                            </c:if>
                            <c:if test="${users.sex == M}">
                            <td>男<td>
                            </c:if>
                            <td>${users.age}</td>
                            <td>${users.score}</td>
                            <td>${users.registerDate}</td>
                            <td class="td-status"><span class="label label-success radius">${users.userMark}</span></td>
                            <td class="td-status"><span class="label label-success radius">${users.state}</span></td>

                            <td class="f-14 td-manage">
                                <a style="text-decoration:none" class="ml-5" href="admin/updateuser.action?userId=${users.userId}" title="编辑"><i class="Hui-iconfont">&#xe6df;编辑</i></a>
                                <a style="text-decoration:none" class="ml-5" onClick="article_del(this,${users.userId})" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;删除</i></a></td>
                        </tr>
                    </c:forEach>


                    </tbody>
                </table>
            </div>


        </article>

    </div>
</section>






<script type="text/javascript">


    <%--$('#page1').jqPaginator({--%>
    <%--totalPages: 100,--%>
    <%--visiblePages: 10,--%>
    <%--currentPage: 1,--%>

    <%--first: '<li class="first"><a href="admin/usermanage.action?curPage=1">首页</a></li>',--%>
    <%--prev: '<li class="prev"><a href="admin/usermanage.action?curPage=${pageInfo.prePage}">上一页</a></li>',--%>
    <%--next: '<li class="next"><a href="admin/usermanage.action?curPage=${pageInfo.nextPage}">下一页</a></li>',--%>
    <%--last: '<li class="last"><a href="admin/usermanage.action?curPage=${pageInfo.pages}">末页</a></li>',--%>
    <%--page: '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',--%>
    <%--onPageChange: function (num) {--%>
    <%--$('#text').html('当前第' + num + '页');--%>
    <%--}--%>
    <%--});--%>
    $('.table-sort').dataTable({
        "aaSorting": [
            [1, "desc"]
        ], //默认第几个排序
        "bStateSave": true, //状态保存
        "bPaginate":false,
        "bInfo": false,
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {
                "orderable": false,
                "aTargets": [0, 11]
            } // 不参与排序的列
        ]
    });

    /*资讯-添加*/
    // function article_add(title, url, w, h) {
    //     var index = layer.open({
    //         type: 2,
    //         title: title,
    //         content: url
    //     });
    //     layer.full(index);
    // }
    /*资讯-编辑*/
    function article_edit(title, url, id, w, h) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }


    function basePath(){
        //获取当前网址，如： http://localhost:8080/ems/Pages/Basic/Person.jsp
        var curWwwPath = window.document.location.href;
        //获取主机地址之后的目录，如： /ems/Pages/Basic/Person.jsp
        var pathName = window.document.location.pathname;
        var pos = curWwwPath.indexOf(pathName);
        //获取主机地址，如： http://localhost:8080
        var localhostPath = curWwwPath.substring(0, pos);
        //获取带"/"的项目名，如：/ems
        var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
        //获取项目的basePath   http://localhost:8080/ems/
        var basePath=localhostPath+projectName+"/";
        return basePath;
    };
    var basePath=basePath();

    /*资讯-删除*/
    function article_del(obj, id) {
        // alert('g');
        alert(id);
        var userId=id;
        var datas={"userId":userId};
        layer.confirm('确认要删除吗？', function(index) {
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/admin/ajaxdeleteuser.action',
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