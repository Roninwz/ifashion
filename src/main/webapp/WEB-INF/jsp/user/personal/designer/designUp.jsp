<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/4
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../header.jsp" %>


<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">

    <title>Title</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">


    <link rel="stylesheet" href="static/user/designer/css/style.css" />



    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>

</head>
<body style="background-color: white">
<c:set var="user" value="${sessionScope.user}"/>
<div id="back">

<!-- Change Pattern -->
<div class="changePattern">
    <span id="pattern1"></span>
    <span id="pattern2"></span>
    <span id="pattern3"></span>
    <span id="pattern4"></span>
    <span id="pattern5"></span>
    <span id="pattern6"></span>
</div>

<header class="main_header">
    <div class="wrapper">
        <div class="logo1">
            <a href="#" title="${user.username}" style="float:left; margin-top:-10px">
                <img src="${user.userImgurl}" alt="${user.username}" width="100" height="100"/>
            </a>
            <a href="#" style="float:left; color:#999; margin-top:15px; font-size:30px; margin-left:20px">${user.username}</a>
        </div>
        <nav class="top_buttons">
            <ul>

                <li class="big_button">
                    <div class="big_count">
                        <span>7</span>
                    </div>
                    <div class="out_border">
                        <div class="button_wrapper">
                            <div class="in_border">
                                <a href="#" title="私信" class="the_button">
                                    <span class="i_32_support"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="big_button">
                    <div class="out_border">
                        <div class="button_wrapper">
                            <div class="in_border">
                                <a href="${pageContext.request.contextPath }/designer/myTrade.action" title="我的接单" class="the_button">
                                    <span class="i_32_delivery"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </nav>
    </div>
</header>



<div class="wrapper contents_wrapper">

    <aside class="sidebar">
        <ul class="tab_nav">
            <li class="i_32_dashboard">
                <a href="${pageContext.request.contextPath}/designer/design.action" title="设计之家">
                    <span class="tab_label">设计之家</span>

                </a>
            </li>
            <li class="i_32_inbox">
                <a href="${pageContext.request.contextPath}/user/mycollections.action" title="我的收藏">
                    <span class="tab_label">我的收藏</span>

                </a>
            </li>
            <li class="active_tab i_32_charts">
                <a href="${pageContext.request.contextPath}/user/designUp.action" title="设计上传">
                    <span class="tab_label">设计上传</span>

                </a>
            </li>
            <li class="i_32_ui">
                <a href="${pageContext.request.contextPath}/user/myAttention.action" title="关注&粉丝">
                    <span class="tab_label">关注&粉丝</span>

                </a>
            </li>
            <li class="i_32_tables">
                <a href="${pageContext.request.contextPath }/designer/myPublish.action" title="我的发表">
                    <span class="tab_label">我的发表</span>

                </a>
            </li>
            <li class="i_32_forms">
                <a href="${pageContext.request.contextPath }/designer/personalInfo.action" title="个人信息">
                    <span class="tab_label">个人信息</span>
                </a>
            </li>
        </ul>
    </aside>
    <div class="contents">
        <div class="grid_wrapper">
            <div class="rt_content">
                <div class="page_title">
                    <h2 class="fl">商品详情示例</h2>
                </div>
                <section>
                    <ul class="ulColumn2">
                        <li>
                            <span class="item_name" style="width:120px;">商品名称：</span>
                            <input type="text" class="textbox textbox_295" placeholder="商品名称..."/>
                        </li>
                        <li>
                            <span class="item_name" style="width:120px;">商品货号：</span>
                            <input type="text" class="textbox" placeholder="商品货号..."/>
                        </li>
                        <li>
                            <span class="item_name" style="width:120px;">品牌：</span>
                            <select class="select">
                                <option>选择品牌</option>
                            </select>
                        </li>
                        <li>
                            <span class="item_name" style="width:120px;">分类：</span>
                            <%--<select class="select">--%>
                                <%--<option>选择产品分类</option>--%>
                            <%--</select>--%>
                            <s:select theme="simple" id="province" headerKey="" headerValue="请选择" list="provinceList" listKey="pid" listValue="pname" />
                            <select id="city" name="city"><option>请选择</option></select>
                            <select id="town" name="town"><option>请选择</option></select>

                            <pre name="code" class="html"></pre>
                                <script type="text/javascript">
                                    $().ready(function(){
                                        $("#province").change(
                                            function() {
                                                $.ajax( {
                                                    type : "post",
                                                    url : "<%=basePath %>/queryCity.do",
                                                    data : "pid=" + $("#province").val(),
                                                    cache : false,
                                                    dataType : "json",
                                                    success : function(json) {
                                                        var str = "<option>请选择</option>";
                                                        $("#city").html("");
                                                        for ( var i = 0; i < json.length; i++) {
                                                            str += "<option value='" + json[i].cid
                                                                + "'>" + json[i].cname
                                                                + "</option>";
                                                        }
                                                        $("#city").append(str);
                                                        $("#town").html("");
                                                        $("#town").append("<option>请选择</option>");
                                                    },
                                                    error : function() {
                                                        alert("请与管理员联系");
                                                    }
                                                });
                                            });
                                        $("#city").change(
                                            function() {
                                                var params = $("#city").val();
                                                $.ajax( {
                                                    type : "post",
                                                    url : "<%=basePath %>/queryTown.do",
                                                    data : "cid=" + params,
                                                    cache : false,
                                                    dataType : "json",
                                                    success : function(json) {
                                                        var str = "<option>请选择</option>";
                                                        $("#town").html("");
                                                        for ( var i = 0; i < json.length; i++) {
                                                            str += "<option value='" + json[i].tid
                                                                + "'>" + json[i].tname
                                                                + "</option>";
                                                        }
                                                        $("#town").append(str);
                                                    },
                                                    error : function() {
                                                        alert("请与管理员联系");
                                                    }
                                                });
                                            });
                                    })
                            </script>
                        </li>
                        <li>
                            <span class="item_name" style="width:120px;">推荐：</span>
                            <label class="single_selection"><input type="radio" name="name"/>是否精品</label>
                            <label class="single_selection"><input type="radio" name="name"/>是否热销</label>
                            <label class="single_selection"><input type="radio" name="name"/>是否新品</label>
                        </li>
                        <li>
                            <span class="item_name" style="width:120px;">上传图片：</span>
                            <label class="uploadImg">
                                <input type="file"/>
                                <span>上传图片</span>
                            </label>
                        </li>
                        <li>
                            <span class="item_name" style="width:120px;">产品详情：</span>
                            <script id="container" name="content" type="text/plain">

                            </script>
                            <script>
                                var ue= UE.getEditor("container",{
                                    initialFrameWidth : '100%',//宽度
                                    initialFrameHeight: 100,//高度
                                    toolbars: [[
                                        'undo', 'redo', 'bold', 'italic', 'underline', 'formatmatch', 'autotypeset', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall']
                                    ]});

                            </script>
                            <!--ueditor可删除下列信息-->
                            <div id="btns" style="margin-left:120px;margin-top:8px;">

                            </div>
                        </li>
                        <li>
                            <span class="item_name" style="width:120px;"></span>
                            <input type="submit" class="link_btn"/>
                        </li>
                    </ul>
                </section>
            </div>
        </div>
    </div>
</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>
