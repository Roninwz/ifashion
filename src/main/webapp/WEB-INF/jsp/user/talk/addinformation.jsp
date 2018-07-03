<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--fmt  国际化格式--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>参与话题</title>
    <!-- 图片上传bootstrap fileinput插件 -->
    <link href="${pageContext.request.contextPath }/static/admin/plugin/fileinput/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/static/admin/plugin/fileinput/css/bootstrap-fileinput.css" rel="stylesheet">

    <!-- 标签 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/admin/css/tag.css">
    <%--底部css--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/user/login/css/login.css">


    <script src="${pageContext.request.contextPath }/static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/lib/My97DatePicker/4.8/WdatePicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/lib/jquery.validation/1.14.0/validate-methods.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/lib/jquery.validation/1.14.0/messages_zh.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/lib/webuploader/0.1.5/webuploader.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/ueditor/ueditor.all.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/ueditor/lang/zh-cn/zh-cn.js"></script>
    <!-- 标签选择js -->
    <script src="${pageContext.request.contextPath }/static/admin/js/tag.js"></script>

    <!-- 图片上传js -->
    <!-- <script src="js/jquery.min.js"></script> -->
    <script src="${pageContext.request.contextPath }/static/admin/plugin/fileinput/js/bootstrap-fileinput.js"></script>
    <!-- bootstrap -->
    <script src="${pageContext.request.contextPath }/static/admin/bootstrap/js/bootstrap.min.js"></script>
    <!--/_footer /作为公共模版分离出去-->

    <%--导航栏js--%>
    <script src="${pageContext.request.contextPath }/static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="${pageContext.request.contextPath }/static/user/common/js/mouse.js"></script>
    <script src="${pageContext.request.contextPath }/static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/user/login/js/modal.js"></script>
    <%--其它js--%>


    <!-- 日期插件 -->
    <script src="${pageContext.request.contextPath }/static/user/person/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</head>
<body style="background-color: white">
<div class='w1180 ad' id="OL_SYS_925_51">
</div>

<div class='w1180 logoAndlogin'>
    <h1 class='logo'>
        <a href="user/index.action">
            <img src='${pageContext.request.contextPath }/static/user/common/top/images/top.png' style='padding-left:200px' alt='iFashion' title='iFashion' />
        </a>
    </h1>
    <div class="login">

        <c:set var="uname" value="${sessionScope.uname}"/>
        <c:if test="${empty uname}">
            <a  data-toggle="modal" href="#login-modal">登录</a> |
            <a href="" target="_self" rel="nofollow">注册</a>
        </c:if>

        <c:if test="${not empty uname}">
            <span>欢迎您${uname}</span>
            <a href="user/personal.action" target="_self" rel="nofollow" style="color: #000">个人中心</a>
        </c:if>
        <!-- 个人中心 -->
        <!-- <a href="" target="_self" rel="nofollow">个人中心</a> -->
    </div>
</div>


<div class='navSearch'>
    <div class="navBg"></div>
    <div class="w1180">
        <div class="nav1">
            <a href="index.html" class="here">首页</a>
            <a href="clothes.html">穿衣搭配</a>
            <a href="community.html">社区精选</a>
            <a href="information.html">资讯</a>
            <a href="online.html">私人定制</a>
            <a href="javascript:void(0);" class="searchBt"></a>
        </div>
        <div class="navChilren">
            <ul>
                <li></li>
                <li></li>
                <li>
                    <a href="forum.html" target="_blank">论坛</a>
                    <a href="community">社区</a>
                </li>
                <li></li>

            </ul>
        </div>
    </div>
    <div class='w1180 search'>
        <form id="searchPage" target="_blank" method="get" action="user/search" accept-charset="utf8">
            <div class="mainsearch">
                <input onkeyup="selBrand('searchpro','auto_brand')" type="text" class="main_input" id="searchpro" autocomplete="off" name="q" value="请输入名称">
                <div class="c1_se_2_c" id="auto_brand" style="display: none;"></div>
            </div>
            <input type="hidden" name="s" value="15679544665037353740">
            <input type="hidden" name="nsid" value="1" class="aritcleType">
            <input type="button" class="mainbtn" id="J_search_sub" value="">
            <input type="button" title='关闭搜索框' class="closeSearchbtn" value="">
        </form>
        <div class='hotpro'>
            <a href="" title="资讯-夏纳电影节" target="_blank">资讯-夏纳电影节</a>
            <a href="" title="定制-裙子" target="_blank">定制-裙子</a>
            <a href="" title="定制-运动鞋" target="_blank">定制-运动鞋</a>
            <!-- 设计师 -->
            <a href="" title="设计师-房莹" target="_blank">设计师-房莹</a>
            <a href="" title="话题" target="_blank">话题-PVC</a>
            <!-- <a href="" title="?????" target="_blank"></a> -->
        </div>
    </div>



</div>

<!--crazy start-->
<div id="crazynavdown">
    <div id="OL_SYS_938_51" class="w1180 s"></div>
    <div class="b">
        <div id="OL_SYS_943_51" class="b1"></div>
        <div id="OL_SYS_448_51" class="b2"></div>
    </div>
</div>
<!--crazy end-->


<%--头部结束--%>





<%--登录模态框--%>


<div class="modal" id="login-modal" style="height: 400px">
    <a class="close" data-dismiss="modal">×</a>
    <h1>登录</h1>
    <form class="login-form clearfix" method="post" action="${pageContext.request.contextPath }/user/logincheck.action">
        <div class="form-arrow">	</div>
        <c:if test="${not  empty isError}">
            <div class="error">${isError}</div>
        </c:if>
        <input name="uname" type="text" placeholder="手机号/邮箱：">
        <input name="password" type="password" placeholder="密码：">
        <input name="code" type="text" placeholder="验证码：" style="width: 180px;float: left;">
        <img id="codeValidateImg" onClick="javascript:flushValidateCode();"  alt="验证码" style="width: 100px;float: left;"/>
        <input type="submit" name="type" class="button-blue login" value="登录">
        <input type="hidden" name="return-url" value="">
        <div class="clearfix"></div>
        <label class="remember"><input name="remember" type="checkbox" checked/>记住密码</label>
        <a class="forgot" id="forgot">忘记密码？</a>
    </form>
</div>




<div class="modal" id="forgetform">
    <a class="close" data-dismiss="modal">×</a>
    <h1>忘记密码</h1>
    <form class="forgot-form" method="post" action="http://www.jb51.net">
        <input name="email" value="" placeholder="注册邮箱：">
        <div class="clearfix"></div>
        <input type="submit" name="type" class="forgot button-blue" value="发送重设密码邮件">
    </form>
</div>
<script type="text/javascript">
    // $(document).ready(function() {
    //     flushValidateCode();//进入页面就刷新生成验证码
    // });
    window.onload=flushValidateCode;




    /* 刷新生成验证码 */
    function flushValidateCode(){
        var validateImgObject = document.getElementById("codeValidateImg");
        validateImgObject.src = "${pageContext.request.contextPath }/getSysManageLoginCode.action?time=" + new Date();
    }




</script>





<section class="Hui-article-box" style="margin-left: 100px">
    <!-- 内容填充 -->
    <div class="Hui-article">
        <article class="cl pd-20">
            <form class="form form-horizontal" id="form-article-add" enctype='multipart/form-data' action="${pageContext.request.contextPath }/user/addHandleInformation.action" method="post">

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>文章标题：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="hidden" name="topicId" value="${topicId}">
                        <input type="text" class="input-text" value="" placeholder="" id="" name="discussTitle">
                    </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>分类栏目：</label>
                    <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
                                    <select name="typea" class="select">
                                        <option value="clothes">社区</option>
                                        <option value="community">穿衣搭配</option>
                                        <option value="information">资讯</option>
                                    </select>
                                    </span> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2">文章内容：</label>
                    <div class="col-xs-8 col-sm-9">
                        <script id="editor" type="text/plain" name="discussContent"></script>
                        </div>
                        </div>


                        <div class="row cl">
                            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                            <button  class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
                            </div>
                        </div>



                        </form>
                        <div style="width:100%;height:100px;"></div>



        </article>

    </div>
</section>
<script type="text/javascript">
    $(function() {

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
        var ue = UE.getEditor('editor');
        UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
        UE.Editor.prototype.getActionUrl = function(action){
            if(action == '/ueditor/upload/images.action'){
                return basePath+'ueditor/upload/images.action';
            }else{
                return this._bkGetActionUrl.call(this, action);
            }
        }
    });

</script>
<%@ include file="../footer.jsp" %>
</body>
</html>