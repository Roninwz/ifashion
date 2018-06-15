<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--fmt  国际化格式--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>

    <script src="${pageContext.request.contextPath}/static/user/common/jquery/jquery-3.1.1.min.js"></script>
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

            <div class="cl pd-5 bg-1 bk-gray mt-20">
                    <span class="l">

                                   <input type="text" name="tagName" id="tagName"  placeholder="标签名" style="width:250px" class="input-text">
                                   <button onclick="addtag()" class="btn btn-primary radius" id=""  style="width:150px">添加标签</button>

                                    <!-- <a class="btn btn-primary radius" data-title="添加标签" href="adduser.html"><i class="Hui-iconfont">&#xe600;</i> 添加标签</a> -->

                                </span>

                <span class="r">共有数据：<strong>${tagcount}</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="25"><input type="checkbox" name="" value=""></th>
                        <th width="40">ID</th>
                        <th width="80">标签名</th>

                        <th width="120">操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${tags}" var="tags">
                    <tr class="text-c">
                        <td><input type="checkbox" value="" name=""></td>
                        <td>${tags.tagId}</td>
                        <td>${tags.tagName}</td>



                        <td class="f-14 td-manage">
                            <a style="text-decoration:none" class="ml-5" href="admin/updatetag.action?tagId=${tags.tagId}" title="编辑"><i class="Hui-iconfont">&#xe6df;编辑</i></a>
                            <a style="text-decoration:none" class="ml-5" onClick="article_del(this,${tags.tagId}" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;删除</i></a></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>


        </article>

    </div>
</section>


<script>

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

    function addtag() {

    var tagName=document.getElementById('tagName').value;
    var datas={"tagName":tagName};
        //alert(datas);
        $.ajax({
            type: 'POST',
            url: basePath+'admin/addtag.action',
            dataType: 'json', //表示返回值的数据类型
            contentType: 'application/json;charset=UTF-8', //内容类型
            traditional: true, //使json格式的字符串不会被转码
            data: JSON.stringify(datas),
            success: function(data){
                 alert("添加成功");
                var str='';
                 str+='<tr class="text-c">'+
                     ' <td><input type="checkbox" value="" name="">'+'</td>'+
                    '<td>'+data.tagId+'</td>'+
                    '<td>'+data.tagName+'</td>'+

                    ' <td class="f-14 td-manage">'+
                    '<a style="text-decoration:none" class="ml-5" href="admin/updatetag.action" title="编辑"><i class="Hui-iconfont">&#xe6df;编辑</i></a>'+
                '<a style="text-decoration:none" class="ml-5" onClick="article_del(this,data.tagId)" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;删除</i></a></td>'+
                    '</tr>';
                $(".table").find("tbody").append(str);

            }
        });

    }



    /*删除*/
    function article_del(obj, id) {
        // alert('g');
        alert(id);
        var tagId=id;
        var datas={"tagId":tagId};
        layer.confirm('确认要删除吗？', function(index) {
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/admin/ajaxdeletetag.action',
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