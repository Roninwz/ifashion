<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>

    <meta charset="utf-8">
    <title>Title</title>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/bootstrap/css/bootstrap.min.css">--%>
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

                <input type="text" name="username"  placeholder="用户名/设计师名" style="width:250px" class="input-text">
                <button name=""  class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
                </form>
            </div>
            <div class="cl pd-5 bg-1 bk-gray mt-20">
                    <span class="l">

                                    </span>
                <span class="r">共有数据：<strong>${n}</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="40">ID</th>
                        <th width="80">用户名</th>
                        <th width="80">身份证号</th>
                        <th width="80">设计师认证证书</th>
                        <th width="80">认证时间</th>
                        <th width="80">认证状态</th>
                        <th width="120">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${designerAuths}" var="designerAuths">
                    <tr class="text-c">
                        <td>${designerAuths.authId}</td>
                        <td><a style="cursor:pointer" href="articledetail.html">${designerAuths.user.username}</a></td>
                        <td>${designerAuths.cardNum}</td>
                        <td>
                            <img src="${pageContext.request.contextPath}/${designerAuths.authImgurl}" alt="">

                        </td>
                        <td>
                                <fmt:formatDate value="${designerAuths.authDate}" pattern="yyyy-MM-dd" type="date"/>
                        </td>
                        <td  class="td-status">
                            <span class="label label-success radius">
                            <c:if test="${designerAuths.authState == 0}">
                                待审核
                            </c:if>
                            <c:if test="${designerAuths.authState == 1}">
                                已审核
                            </c:if>
                            <c:if test="${designerAuths.authState == 2}">
                                审核未通过
                            </c:if>
                            </span>
                        </td>


                        <td class="f-14 td-manage">
                            <c:if test="${designerAuths.authState == 0}">
                            <a style="text-decoration:none" class="ml-5" onClick="article_shenhe(this,${designerAuths.authId})" href="javascript:;" title="审核"><i class="Hui-iconfont">&#xe603;审核</i></a>
                            </c:if>
                            <c:if test="${designerAuths.authState == 1}">
                            </c:if>
                            <c:if test="${designerAuths.authState == 2}">
                                <a style="text-decoration:none" class="ml-5" onClick="article_shenhe(this,${designerAuths.authId})" href="javascript:;" title="审核"><i class="Hui-iconfont">&#xe603;审核</i></a>
                            </c:if>
                            <a style="text-decoration:none" class="ml-5" onClick="article_del(this,${designerAuths.authId})" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;删除</i></a></td>
                    </tr>
                    </c:forEach>


                    </tbody>
                </table>
                <%--<script>--%>
                    <%--function getPage(curPage) {--%>
                        <%--//将隐藏域的值变成curPage--%>
                        <%--document.getElementById("curPage").value=curPage;--%>
                        <%--alert(document.getElementById("curPage").value);--%>
                        <%--alert(curPage);--%>
<%--//             触发表单的提交事件--%>
<%--//         document.getElementById("mainForm").submit();--%>

                    <%--}--%>


                <%--</script>--%>
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

                                <%--<li><a href="${pageContext.request.contextPath}/admin/usermanage.action?curPage=1">首页</a></li>--%>

                                <%--<!--上一页-->--%>
                                <%--<li>--%>
                                    <%--<c:if test="${pageInfo.hasPreviousPage}">--%>
                                        <%--<a href="${pageContext.request.contextPath}/admin/usermanage.action?curPage=${pageInfo.pageNum-1}" aria-label="Previous">--%>
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
                                        <%--<li><a href="${pageContext.request.contextPath}/admin/usermanage.action?curPage=${page_num}">${page_num}</a></li>--%>
                                    <%--</c:if>--%>
                                <%--</c:forEach>--%>

                                <%--<!--下一页-->--%>
                                <%--<li>--%>
                                    <%--<c:if test="${pageInfo.hasNextPage}">--%>
                                        <%--<a href="${pageContext.request.contextPath}/admin/usermanage.action?curPage=${pageInfo.pageNum+1}"--%>
                                           <%--aria-label="Next">--%>
                                            <%--<span aria-hidden="true">»</span>--%>
                                        <%--</a>--%>
                                    <%--</c:if>--%>
                                <%--</li>--%>

                                <%--<li><a href="${pageContext.request.contextPath}/admin/usermanage.action?curPage=${pageInfo.pages}">尾页</a></li>--%>
                            <%--</ul>--%>
                        <%--</nav>--%>
                    <%--</div>--%>

                <%--</div>--%>
          <%--<div class="row">--%>
                    <%--<!--文字信息-->--%>
                    <%--<div class="col-md-6">--%>
                        <%--当前第 ${pageInfo.pageNum} 页.总共 ${pageInfo.pages} 页.一共 ${pageInfo.total} 条记录--%>
                    <%--</div>--%>

                    <%--<!--点击分页-->--%>
                    <%--<div class="col-md-6">--%>
                        <%--<nav aria-label="Page navigation">--%>
                            <%--<ul class="pagination">--%>

                                <%--<li><a href="${pageContext.request.contextPath}/admin/usermanage.action?curPage=1">首页</a></li>--%>

                                <%--<!--上一页-->--%>
                                <%--<li>--%>
                                    <%--<c:if test="${pageInfo.hasPreviousPage}">--%>
                                        <%--<a href="${pageContext.request.contextPath}/admin/usermanage.action?curPage=${pageInfo.pageNum-1}" aria-label="Previous">--%>
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
                                        <%--<li><a href="${pageContext.request.contextPath}/admin/usermanage.action?curPage=${page_num}">${page_num}</a></li>--%>
                                    <%--</c:if>--%>
                                <%--</c:forEach>--%>

                                <%--<!--下一页-->--%>
                                <%--<li>--%>
                                    <%--<c:if test="${pageInfo.hasNextPage}">--%>
                                        <%--<a href="${pageContext.request.contextPath}/admin/usermanage.action?curPage=${pageInfo.pageNum+1}"--%>
                                           <%--aria-label="Next">--%>
                                            <%--<span aria-hidden="true">»</span>--%>
                                        <%--</a>--%>
                                    <%--</c:if>--%>
                                <%--</li>--%>

                                <%--<li><a href="${pageContext.request.contextPath}/admin/usermanage.action?curPage=${pageInfo.pages}">尾页</a></li>--%>
                            <%--</ul>--%>
                        <%--</nav>--%>
                    <%--</div>--%>

                <%--</div>--%>


            </div>
            <!-- 分页标签 -->
                <%--<div id="page1" class="pager"></div>--%>
            </div>

        </article>

    </div>
</section>
<%--<!--引入laypage相关的js和css -->--%>
<%--<script src="${pageContext.request.contextPath}/static/user/common/jquery/jquery-3.1.1.min.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/static/admin/bootstrap/js/bootstrap.min.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/static/jqpaginator.min.js"></script>--%>



<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/lib/layer/2.4/layer.js"></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/h-ui/js/H-ui.js"></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/h-uiadmin/js/H-ui.admin.page.js"></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/lib/My97DatePicker/4.8/WdatePicker.js"></script>--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/lib/laypage/1.2/laypage.js"></script>--%>

<script type="text/javascript">
    $('.table-sort').dataTable({
        "aaSorting": [
            [1, "desc"]
        ], //默认第几个排序
        "bStateSave": true, //状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {
                "orderable": false,
                "aTargets": [0, 5]
            } // 不参与排序的列
        ]
    });
    //审核
    function article_shenhe(obj, id) {
        var authId=id;
        //alert(authId);
        var datas={"authId":authId};
        layer.confirm('审核设计师？', {
                btn: ['通过', '不通过', '取消'],
                shade: false,
                closeBtn: 0
            },
            function() {

                //审核通过ajax 2
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/admin/ajaxtongguoauth.action',
                    dataType: 'json', //表示返回值的数据类型
                    traditional: true, //使json格式的字符串不会被转码
                    data: datas,
                    success: function(data) {
                        //alert(data);

                        //var str= '<a class="c-primary" onClick="article_shangxian(this,'+data.articleId+')" href="javascript:;" title="申请上线"><i class="Hui-iconfont">&#xe603;上线</i></a>';
                       // $(obj).parents("tr").find(".td-manage").prepend(str);
                        //$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shangxian(this,data.articleId)" href="javascript:;" title="申请上线"><i class="Hui-iconfont">&#xe603;上线</i></a>');
                        $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已审核</span>');
                        $(obj).remove();
                        layer.msg('已审核', {
                            icon: 6,
                            time: 1000
                        });
                    },
                    error: function(data) {
                       // alert("data");
                        //alert('1');
                        console.log(data.msg);
                    },
                });

            },
            function() {
                //审核不通过ajax 1
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/admin/ajaxnotongguoauth.action',
                    dataType: 'json', //表示返回值的数据类型
                    traditional: true, //使json格式的字符串不会被转码
                    data: datas,
                    success: function(data) {
                       // alert(data);
                        var str= '<a class="c-primary" onClick="article_shenhe(this,'+data.authId+')" href="javascript:;" title="审核"><i class="Hui-iconfont">&#xe634;审核</i></a>';
                        $(obj).parents("tr").find(".td-manage").prepend(str);
                        //$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenhe(this,data.articleId)" href="javascript:;" title="审核"><i class="Hui-iconfont">&#xe634;审核</i></a>');
                        $(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">审核未通过</span>');
                        $(obj).remove();
                        layer.msg('审核未通过', {
                            icon: 5,
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
       // alert(id);
        var authId=id;
        var datas={"authId":authId};
        layer.confirm('确认要删除吗？', function(index) {
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/admin/ajaxdeleteauth.action',
                dataType: 'json', //表示返回值的数据类型
                contentType: 'application/json;charset=UTF-8', //内容类型
                traditional: true, //使json格式的字符串不会被转码
                data: JSON.stringify(datas),
                success: function(data) {
                   // alert(data);
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!', {
                        icon: 1,
                        time: 1000
                    });
                },
                error: function(data) {
                    //alert("data");
                   // alert('1');
                    console.log(data.msg);
                },
            });
        });
    }

//批量删除

    function batchDeletes(){
        //判断至少写了一项
        var checkedNum = $("input[name='subcheck']:checked").length;
        if(checkedNum==0){
            alert("请至少选择一项!");
            return false;
        }
        if(confirm("确定删除所选用户?")){
            var checkedList = new Array();
            $("input[name='subcheck']:checked").each(function(){
                checkedList.push($(this).val());
            });
            $.ajax({
                type:"POST",
                url:"${pageContext.request.contextPath}/admin/batchdeleteuser.action",
                data:{"delitems":checkedList.toString()},
                datatype:"html",
                success:function(data){
                    alert("删除成功");
                    //$("[name='checkbox2']:checkbox").attr("checked",false);
                    location.reload();//页面刷新
                },
                error:function(data){
                    alert("删除失败");
                }
            });
        }
    }


</script>


</body>
</html>