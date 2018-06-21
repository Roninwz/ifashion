<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--fmt  国际化格式--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="left.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/lib/zTree/v3/demo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/lib/zTree/v3/css/zTreeStyle/zTreeStyle.css">
    <%--<script src="${pageContext.request.contextPath}/static/admin/lib/jquery/1.9.1/jquery.min.js"></script>--%>
    <script src="${pageContext.request.contextPath}/static/admin/lib/zTree/v3/js/jquery.ztree.core-3.5.js"></script>
    <script src="${pageContext.request.contextPath}/static/admin/lib/zTree/v3/js/jquery.ztree.excheck-3.5.min.js"></script>

</head>
<body>

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

                                     <input type="text" name="roleName" id="roleName"  placeholder="角色名" style="width:250px" class="input-text">
                                   <button onclick="addrole()" class="btn btn-primary radius" id=""  style="width:150px">添加角色</button>
                                    </span>
                <span class="r">共有数据：<strong>${n}</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="40">ID</th>
                        <th width="80">角色名</th>
                        <%--<th width="80">添加时间</th>--%>
                        <th width="120">操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${roles}" var="roles">
                        <tr class="text-c">


                            <td>${roles.roleId}</td>
                            <td><a style="cursor:pointer" href="articledetail.html">${roles.roleName}</a></td>


                                <%--<td class="td-status"><span class="label label-success radius">${admins.adminId}</span></td>--%>

                            <td class="f-14 td-manage">
                                <a style="text-decoration:none" onClick="modaldemo(${roles.roleId})" href="javascript:;" title="授权"><i class="Hui-iconfont">&#xe6de;</i>授权</a>
                                <a style="text-decoration:none" class="ml-5" href="admin/updaterole.action?roleId=${roles.roleId}" title="编辑"><i class="Hui-iconfont">&#xe6df;编辑</i></a>
                                <a style="text-decoration:none" class="ml-5" onClick="article_del(this,${roles.roleId})" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;删除</i></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

        </article>

    </div>
</section>


<%--弹出框--%>





<div id="modal-demo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content radius">
            <div class="modal-header">
                <h3 class="modal-title">对话框标题</h3>
                <a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void(0);">×</a>
            </div>
            <div class="modal-body">
                <div class="content_wrap">
                    <div class="zTreeDemoBackground left">
                        <ul id="treeDemo" class="ztree">

                        </ul>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" onclick="count()">确定</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
            </div>
        </div>
    </div>
</div>

<script>

    /*删除*/
    function article_del(obj, id) {
// alert('g');
        //alert(id);
        var roleId = id;
        var datas = {"roleId": roleId};
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: '${pageContext.request.contextPath}/admin/ajaxdeleterole.action',
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
<SCRIPT type="text/javascript">
    var setting = {
        check: {
            enable: true,
            chkStyle: "checkbox",
            chkboxType: {"Y" : "ps", "N" : "ps"}
        },
        data: {
            simpleData: {
                enable: true
            }
        }
    };

    // var zNodes =[
    //     { id:1, pId:0, name:"随意勾选 1", open:true},
    //     { id:11, pId:1, name:"随意勾选 1-1", open:true},
    //     { id:12, pId:1, name:"随意勾选 1-2", open:true},
    //     { id:2, pId:0, name:"随意勾选 2",open:true},
    //     { id:21, pId:2, name:"随意勾选 2-1"},
    //     { id:22, pId:2, name:"随意勾选 2-2", open:true},
    //     { id:23, pId:2, name:"随意勾选 2-3"}
    // ];
    <%--var json = ${moduleVos};--%>
    <%--var zNodes = eval(json);--%>

    var code;

    // function setCheck() {
    //     var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
    //         py = $("#py").attr("checked")? "p":"",
    //         sy = $("#sy").attr("checked")? "s":"",
    //         pn = $("#pn").attr("checked")? "p":"",
    //         sn = $("#sn").attr("checked")? "s":"",
    //         type = { "Y":py + sy, "N":pn + sn};
    //     zTree.setting.check.chkboxType = type;
    //     showCode('setting.check.chkboxType = { "Y" : "' + type.Y + '", "N" : "' + type.N + '" };');
    // }
    function showCode(str) {
        if (!code) code = $("#code");
        code.empty();
        code.append("<li>"+str+"</li>");
    }
var roleId;

    function modaldemo(index){

        roleId=index;
        //alert(roleId);
        $("#modal-demo").modal("show")


    }
    var zNodes;
    $(document).ready(function(){

        $.ajax({
            async:"false",
            type : "GET",
            dataType : "json",
            url : "${pageContext.request.contextPath}/admin/getTree.action",
            success : function(data) {
                $.fn.zTree.init($("#treeDemo"), setting, data);
                //弹出树状的所有数据
               // alert(data);
                //zNodes=eval("(" + data + ")");

               // alert(zNodes);
            }
        });
       // $.fn.zTree.init($("#treeDemo"), setting, zNodes);
        //setCheck();
        //$("#py").bind("change", setCheck);
        ////$("#sy").bind("change", setCheck);
        //$("#pn").bind("change", setCheck);
        //$("#sn").bind("change", setCheck);
    });


    //向后台传递数据
    var zTree = $.fn.zTree.getZTreeObj("treeTrs");
    var checkNodes = zTree.getCheckedNodes(true);
    var uncheckNodes = zTree.getCheckedNodes(false);
    //搜集选中的标准问法信息
    var checkInfo = [];
    for(var i=0; i<checkNodes.length; i++){
        var node = checkNodes[i];
        //直接找叶子节点
        if(!node.children){
            checkInfo.push(node.name);
        }
    }
    //搜集未选中的标准问法信息
    var unCheckInfo = [];
    for(var i=0; i<uncheckNodes.length; i++){
        var node = uncheckNodes[i];
        //直接找叶子节点
        if(!node.children){
            unCheckInfo.push(node.name);
        }
    }

    //封装数据
    var reqObj = new Object();
    //reqObj.currPro = currPro;
   // reqObj.provinceBizId = provinceBizId;
    //reqObj.provinceBizName = provinceBizName;
    reqObj.checkInfo = checkInfo;
    reqObj.unCheckInfo = unCheckInfo;
    <%--$.ajax({--%>
        <%--type : "post",--%>
        <%--url : "${pageContext.request.contextPath}/admin/saveProRecOp.action",--%>
        <%--contentType: 'application/json; charset=utf-8',--%>
        <%--data : JSON.stringify(reqObj),--%>
        <%--success : function(data) {--%>
            <%--if (data.success) {--%>
                <%--alert("操作成功！");--%>
            <%--} else {--%>
                <%--alert("操作失败");--%>
            <%--}--%>
        <%--},--%>
        <%--error : function(result) {--%>
            <%--alert(result);--%>
        <%--}--%>
    <%--});--%>

    //后台获取


    // @RequestMapping(value = "/saveProRecOp", method = RequestMethod.POST)
    // public @ResponseBody
    // Map<String, Object> saveProRecOp(
    //     @RequestBody ProvinceTRSEditCommand trsEditCommand,
    //     HttpServletRequest request)

//获取当前选中的节点的id
    function count() {
        //alert(roleId);
        var zTree = $.fn.zTree.getZTreeObj("treeDemo");
        checkCount = zTree.getCheckedNodes(true);
        nodes = zTree.getSelectedNodes();
        if (checkCount.length == 0) {
            alert("请先选择一个节点");
        }
        var classpurview = "";
        for(var i=0;i<checkCount.length;i++) {
            if(i<checkCount.length-1){
                classpurview += checkCount[i].id +",";
            }else if(i==checkCount.length-1){
                classpurview += checkCount[i].id;
            }
        }
        var datas={"classpurview":classpurview,"roleId":roleId};
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/admin/updateZtree.action",
            data:datas,
            datatype:"json",
            traditional: true, //使json格式的字符串不会被转码
            success:function(data){
                alert("授权成功");
                //alert(data.message);
                //$("[name='checkbox2']:checkbox").attr("checked",false);
                //location.reload();//页面刷新
            },
            error:function(data){
                alert("失败");
            }
        });

        alert(classpurview);
    }




    //添加角色ajax
    function addrole() {

    var roleName=document.getElementById('roleName').value;
    var datas={"roleName":roleName};
    //alert(datas);
    $.ajax({
    type: 'POST',
    url: '${pageContext.request.contextPath}/admin/addrole.action',
    dataType: 'json', //表示返回值的数据类型
    contentType: 'application/json;charset=UTF-8', //内容类型
    traditional: true, //使json格式的字符串不会被转码
    data: JSON.stringify(datas),
    success: function(data){
    alert("添加成功");
    var str='';
    str+='<tr class="text-c">'+
    '<td>'+data.roleId+'</td>'+
    '<td>'+data.roleName+'</td>'+

    '<td class="f-14 td-manage">'+
    '<a style="text-decoration:none" onClick="modaldemo(data.roleId)" href="javascript:;" title="授权"><i class="Hui-iconfont">&#xe6de;</i>授权</a>'+
    ' <a style="text-decoration:none" class="ml-5" href="admin/updaterole.action?roleId=data.roleId" title="编辑"><i class="Hui-iconfont">&#xe6df;编辑</i></a>'+
    ' <a style="text-decoration:none" class="ml-5" onClick="article_del(this,data.roleId)" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;删除</i></a></td>'+
    '</tr>';
    $(".table").find("tbody").append(str);

    }
    });
    }



</SCRIPT>

</body>
</html>