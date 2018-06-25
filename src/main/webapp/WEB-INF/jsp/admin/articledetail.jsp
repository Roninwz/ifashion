<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/bootstrap/css/bootstrap.min.css">
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
            <div class="panel panel-default">
                <div class="panel-header">文章详情</div>
                <div class="panel-body">

                    <!-- <p class="c-red">文章标题</p> -->
                    <h3 class="c-black">文章标题</h3>
                        <div class="box-shadow">

                            <p style="text-align:center;">${article.articleTitle}</p>
                        </div>
                            <h3 class="c-black">文章图片</h3>
                                <div style="text-align:center;" class="box-shadow">

                                    <img src="${article.imgurl}" alt="..." class="radius">
                                </div>
                                <h3 class="c-black">文章标签</h3>

                                    <!-- <p class="c-red">文章内容</p> -->
                                    <h3 class="c-black">文章内容</h3>
                                        <div class="box-shadow">

                                            ${article.content}
                                            <%--<p style="text-align:center;">content是内容样式，14号字体，25px行高，段落自动首行缩进两个字符。</p>--%>
                                        </div>
                </div>
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
                "aTargets": [0, 8]
            } // 不参与排序的列
        ]
    });
    /*删除*/
    function article_del(obj, id) {
        // alert('g');
        alert(id);
        var articleId=id;
        var datas={"articleId":articleId};
        layer.confirm('确认要删除吗？', function(index) {
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/admin/ajaxdeletearticle.action',
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




    //批量删除
    function batchDeletes(){
        //判断至少写了一项
        var checkedNum = $("input[name='subcheck']:checked").length;
        if(checkedNum==0){
            alert("请至少选择一项!");
            return false;
        }
        if(confirm("确定删除所选文章?")){
            var checkedList = new Array();
            $("input[name='subcheck']:checked").each(function(){
                checkedList.push($(this).val());
            });
            $.ajax({
                type:"POST",
                url:"${pageContext.request.contextPath}/admin/batchdeletearticle.action",
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

    //审核
    function article_shenhe(obj, id) {
        var articleId=id;
        var datas={"articleId":articleId};
        layer.confirm('审核文章？', {
                btn: ['通过', '不通过', '取消'],
                shade: false,
                closeBtn: 0
            },
            function() {

            //审核通过ajax 2
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/admin/ajaxtongguoarticle.action',
                    dataType: 'json', //表示返回值的数据类型
                    traditional: true, //使json格式的字符串不会被转码
                    data: datas,
                    success: function(data) {
                        alert(data);

                        var str= '<a class="c-primary" onClick="article_shangxian(this,'+data.articleId+')" href="javascript:;" title="申请上线"><i class="Hui-iconfont">&#xe603;上线</i></a>';
                        $(obj).parents("tr").find(".td-manage").prepend(str);
                        //$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shangxian(this,data.articleId)" href="javascript:;" title="申请上线"><i class="Hui-iconfont">&#xe603;上线</i></a>');
                        $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已审核</span>');
                        $(obj).remove();
                        layer.msg('已审核', {
                            icon: 6,
                            time: 1000
                        });
                    },
                    error: function(data) {
                        alert("data");
                        alert('1');
                        console.log(data.msg);
                    },
                });

            },
            function() {
                //审核不通过ajax 1
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/admin/ajaxnotongguoarticle.action',
                    dataType: 'json', //表示返回值的数据类型
                    traditional: true, //使json格式的字符串不会被转码
                    data: datas,
                    success: function(data) {
                        alert(data);
                        var str= '<a class="c-primary" onClick="article_shenhe(this,'+data.articleId+')" href="javascript:;" title="审核"><i class="Hui-iconfont">&#xe634;审核</i></a>';
                        $(obj).parents("tr").find(".td-manage").prepend(str);
                        //$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenhe(this,data.articleId)" href="javascript:;" title="审核"><i class="Hui-iconfont">&#xe634;审核</i></a>');
                        $(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
                        $(obj).remove();
                        layer.msg('未通过', {
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
    /*下线*/
    function article_xiaxian(obj, id) {
        var articleId=id;
        var datas={"articleId":articleId};
        layer.confirm('确认要下线吗？', function(index) {
            //下线ajax 4

            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/admin/ajaxxianxianarticle.action',
                dataType: 'json', //表示返回值的数据类型
                traditional: true, //使json格式的字符串不会被转码
                data: datas,
                success: function(data) {
                    alert(data);
                    var str= '<a class="c-primary" onClick="article_shangxian(this,'+data.articleId+')" href="javascript:;" title="上线"><i class="Hui-iconfont">&#xe603;上线</i></a>';
                    $(obj).parents("tr").find(".td-manage").prepend(str);
                    //$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_shangxian(this,data.articleId)" href="javascript:;" title="上线"><i class="Hui-iconfont">&#xe603;上线</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下线</span>');
                    $(obj).remove();
                    layer.msg('已下线!', {
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

    /*上线*/
    function article_shangxian(obj, id) {
        var articleId=id;
        var datas={"articleId":articleId};
        layer.confirm('确认要上线吗？', function(index) {

            //上线ajax 3

            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/admin/ajaxshangxianarticle.action',
                dataType: 'json', //表示返回值的数据类型
                traditional: true, //使json格式的字符串不会被转码
                data: datas,
                success: function(data) {
                    alert(data);
                    var str= '<a class="c-primary" onClick="article_xiaxian(this,'+data.articleId+')" href="javascript:;" title="下线"><i class="Hui-iconfont">&#xe6de;下线</i></a>';
                    $(obj).parents("tr").find(".td-manage").prepend(str);
                   // $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_xiaxian(this,data.articleId)" href="javascript:;" title="下线"><i class="Hui-iconfont">&#xe6de;下线</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已上线</span>');
                    $(obj).remove();
                    layer.msg('已上线!', {
                        icon: 6,
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