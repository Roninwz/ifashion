<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/18
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%--fmt  国际化格式--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>发布话题</title>
    <%--登录--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/login2/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/person/message/css/mess.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/login/header.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/user/common/plugin/font-awesome/css/font-awesome.min.css">
    <script src="${pageContext.request.contextPath}/static/user/common/plugin/jquery.cookie.js"></script>
    <style>
        .tc_login  .right .remember-code{
            width:30px;height:30px;margin-top:20px;margin-right:150px;
        }

        .tc_login  .right .span-code{
            width:200px;height:30px;margin-top:-40px;
        }

    </style>
    <%--底部css--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/user/login/css/login.css">
    <!-- 图片上传bootstrap fileinput插件 -->
    <link href="${pageContext.request.contextPath }/static/admin/plugin/fileinput/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/static/admin/plugin/fileinput/css/bootstrap-fileinput.css" rel="stylesheet">
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
<body>


<%--头部--%>

<div class='w1180 ad' id="OL_SYS_925_51">
</div>

<div class='w1180 logoAndlogin'>
    <h1 class='logo'>
        <a href="user/index.action">
            <img src='${pageContext.request.contextPath}/static/user/common/top/images/top.png' style='padding-left:200px' alt='iFashion' title='iFashion' />
        </a>
    </h1>
    <div class="login">

        <c:set var="uname" value="${sessionScope.uname}"/>
        <c:if test="${empty uname}">
            <a  href="javascript:void(0)" class="tc">
                <button class="btn btn_primary radius">
                    登录
                </button></a>&nbsp;&nbsp;|
            <a href="user/register.action" target="_self" rel="nofollow">
                <button class="btn btn_primary radius">
                    注册
                </button></a>

        </c:if>

        <c:if test="${not empty uname}">
            <span><button class="btn btn_primary radius">
                       欢迎您 ${uname}
            </button></span>
            <a href="user/personal.action" target="_self" rel="nofollow" style="color: #000">
                <button class="btn btn_primary radius">
                    个人中心
                </button></a>
            <a href="user/userlogout.action" target="_self" rel="nofollow" style="color: #000">
                <button class="btn btn_primary radius">
                    注销
                </button></a>

            <div id="message" style="float: right;margin-left: 10px;">
                <a href="user/mymessage.action"><span data-type="1" class="message-bell-btn" title="" id="message-bell-btn"><i class="fa fa-bell-o "></i>
                 <span class="badge-dot" style="top:-10px;" id="badge"></span>

            </span></a>
            </div>


        </c:if>

        <!-- 个人中心 -->
        <!-- <a href="" target="_self" rel="nofollow">个人中心</a> -->
    </div>
</div>


<div class='navSearch'>
    <div class="navBg"></div>
    <div class="w1180">
        <div class="nav1">
            <a href="user/index.action" class="here">首页</a>
            <a href="user/clothes.action">穿衣搭配</a>
            <a href="user/forum.action">社区精选</a>
            <a href="user/newsHome.action">资讯</a>
            <a href="user/online_list.action">私人定制</a>
            <a href="javascript:void(0);" class="searchBt"></a>
        </div>
        <%--<div class="navChilren">--%>
        <%--<ul>--%>
        <%--<li></li>--%>
        <%--<li></li>--%>
        <%--<li>--%>
        <%--<a href="user/forum.action" target="_blank">论坛</a>--%>
        <%--<a href="usre/community.action">社区</a>--%>
        <%--</li>--%>
        <%--<li></li>--%>

        <%--</ul>--%>
        <%--</div>--%>
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


<div id="gray"></div>
<div class="popup" id="popup">

    <div class="top_nav" id='top_nav'>
        <div align="center">
            <i></i>
            <span>登录账号</span>
            <c:if test="${not  empty isError}">
                <div class="error">${isError}</div>
            </c:if>
            <a class="guanbi"></a>
        </div>
    </div>

    <div class="min">

        <div class="tc_login">

            <div class="left">
                <h4 align="center">微信扫描，关注一下</h4>
                <div align="center"><img src="${pageContext.request.contextPath}/static/user/login2/wei.jpg" width="150" height="150" /></div>
                <dd>
                    <div align="center">欢迎您关注我们的微信公众号</div>
                </dd>
            </div>

            <div class="right">
                <form method="POST" name="form_login"  action="user/logincheck.action">
                    <div align="center">
                        <%--<a href="">短信快捷登录</a>--%>
                        <i class="icon-mobile-phone"></i>
                        <input type="text" name="uname" id="uname" required="required" placeholder="用户名" autocomplete="off" class="input_yh">
                        <input type="password" name="password" id="password" required="required" placeholder="密码" autocomplete="off" class="input_mm">
                        <input type="text" name="code" id="pass" required="required" placeholder="验证码" style="width: 130px;float:left;margin-left:5px;" class="input_mm">
                        <img id="codeValidateImg" onClick="javascript:flushValidateCode();"  alt="验证码" style="width: 100px;height:40px;margin-top: 20px;float: left;"/>
                        <%--<input type="checkbox" name="remember" id="remember-password"   onclick="remeber()" class="remember-code">--%>
                        <%--<span class="span-code">记住密码</span>--%>
                        <%--<input type="checkbox" name="remember" id="remember-password"   onclick="remeber()" class="remember-code">--%>
                        <div id="codered" style="width:240px;height:40px;">
                            <input type="checkbox" name="remember" id="remember-password"   onclick="remeber()" class="remember-code">
                            <span style="width:200px;height:30px;margin-top:-40px;">记住密码</span>
                        </div>
                    </div>

                    <div align="center">
                        <input type="submit" class="button" title="Sign In" value="登录">
                    </div>
                </form>
                <dd>

                    <div><a href="javascript:void(0)" style="float: left;" onclick="forgetPassWord()">忘记密码</a><span style="width: 200px;"></span><a href="user/register.action" target="_blank">立即注册</a></div>
                    <%--<div align="right"><a href="#" target="_blank">忘记密码</a></div>--%>

                </dd>
                <dd>

                    <%--<div style="width: 130px;height: 30px;"><input type="checkbox" name="red" style="width: 30px;height: 30px;margin-top:-4px;margin-right: 160px;"> <span style="margin-left:120px;margin-top:-30px;width: 100px;height: 30px;">记住密码</span></div>--%>
                    <%--<div align="right"><a href="#" target="_blank">忘记密码</a></div>--%>
                </dd>
                <hr align="center" />
                <%--<div align="center">期待更多功能 </div>--%>
            </div>

        </div>

    </div>

</div>


<script type="text/javascript">
    function clearAllCookie() {
        var keys = document.cookie.match(/[^ =;]+(?=\=)/g);
        if(keys) {
            for(var i = keys.length; i--;)
                document.cookie = keys[i] + '=0;expires=' + new Date(0).toUTCString()
        }
    }
    var wrap= document.getElementById("codered");
    wrap.onclick=function(){
        $("#remember-password").prop("checked",$("#remember-password").is(':checked')?false:true);

        function remeber(){


            var uname = $("#uname").val();
            var password = $("#password").val();

            //判断复选框的选择状态添加cookie
            if ($("#remember-password").is(":checked")) {

                //存储一个带7天期限的cookie
                $.cookie("uname", uname, { expires: 7 });
                $.cookie("password", password, { expires: 7 });
            }
            else {
                $.cookie("uname", "", { expires: -1 });
                $.cookie("password", "", { expires: -1 });
            }
        }

        remeber();
    }

    // var check=document.getElementById("remember-password");
    // check.onclick=function(){
    //     return true;
    // }





    //窗口效果
    //点击登录class为tc 显示
    $(".tc").click(function(){
        $("#gray").show();
        $("#popup").show();//查找ID为popup的DIV show()显示#gray
        tc_center();
    });
    //点击关闭按钮
    $("a.guanbi").click(function(){
        $("#gray").hide();
        $("#popup").hide();//查找ID为popup的DIV hide()隐藏
    })

    //窗口水平居中
    $(window).resize(function(){
        tc_center();
    });

    function tc_center(){
        var wtop= document.body.clientWidth;
        var wleft= document.body.clientHeight;
        // var _top=($(window).height()-$(".popup").height())/2;
        // var _left=($(window).width()-$(".popup").width())/2;
        var _top=($(body).height()-$(".popup").height())/2;
        var _left=($(body).width()-$(".popup").width())/2;

        $(".popup").css({top:_top,left:_left});
    }



    $(document).ready(function() {
        flushValidateCode();//进入页面就刷新生成验证码
    });
    // window.onload=flushValidateCode;




    /* 刷新生成验证码 */
    function flushValidateCode(){
        var validateImgObject = document.getElementById("codeValidateImg");
        validateImgObject.src = "${pageContext.request.contextPath}/getSysManageLoginCode.action?time=" + new Date();
    }


    // jquery-cookie实现记住用户名和密码
    $(function () {

        var uname = $.cookie('uname');
        var password = $.cookie('password');

        //页面加载的时候从cookie中取出用户名和密码填充对应的输入框
        $('#uname').val(uname);
        $("#password").val(password)
        //选中保存秘密的复选框　
        // if(uname != null && uname != '' && password != null && password != ''){
        //     $("#remember-password").attr('checked',true);
        // }
        // if (!$("#remember-password").is(":checked")){
        //     clearAllCookie();
        // }
    });
</script>


<%--头部结束--%>





<%--登录模态框--%>




<section class="Hui-article-box" style="margin-left: 100px">
    <!-- 内容填充 -->
    <div class="Hui-article">
        <article class="cl pd-20">

            <form class="form form-horizontal" name="upfile" id="form-article-add" enctype='multipart/form-data' action="${pageContext.request.contextPath }/user/addHandleTopic.action" method="post">


                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>话题标题：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="" placeholder=""  name="topicTitle">
                    </div>
                </div>



                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>话题图片上传</label>
                    <div class="page-header formControls col-xs-4 col-sm-9">
                        <!-- <h3>FormData图片上传</h3> -->
                        <!-- <form> -->
                        <div class="form-group" id="uploadForm" enctype='multipart/form-data'>
                            <div class="h4">图片预览</div>
                            <div class="fileinput fileinput-new" data-provides="fileinput" id="exampleInputUpload">
                                <div class="fileinput-new thumbnail" style="width: 200px;height: auto;max-height:150px;">
                                    <!-- 这边有图片需要修改 -->
                                    <img id='picImg' style="width: 100%;height: auto;max-height: 140px;" src="static/admin/plugin/fileinput/images/noimage.png" alt="" />
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                                        <span class="btn btn-primary btn-file">
                                                    <span class="fileinput-new">选择文件</span>
                                        <span class="fileinput-exists">换一张</span>
                                        <input type="file" name="topImgurl" id="picID" accept="image/gif,image/jpeg,image/x-png" />
                                        </span>
                                    <a href="javascript:;" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">移除</a>
                                </div>
                            </div>
                        </div>
                        <!-- <button type="button" id="uploadSubmit" class="btn btn-info">提交</button> -->
                        <!-- </form> -->
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>开始时间：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="" onClick="WdatePicker()"  placeholder="请输入开始时间"  name="topicStart" readonly>
                        <%--<input type="text" id="user-name2" placeholder="name">  --%>
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>结束时间：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" onClick="WdatePicker()" value="" placeholder="请输入结束时间"  name="topicEnd" readonly>
                    </div>
                </div>



                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2">话题内容：</label>
                    <div class="col-xs-8 col-sm-9">
                        <script id="editor" type="text/plain" name="topicContent"></script>
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
        //比较简洁，细节可自行完善
        $('#uploadSubmit').click(function() {
            var data = new FormData($('#uploadForm')[0]);
            $.ajax({
                url: 'xxx/xxx',
                type: 'POST',
                data: data,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function(data) {
                    console.log(data);
                    if (data.status) {
                        console.log('upload success');
                    } else {
                        console.log(data.message);
                    }
                },
                error: function(data) {
                    console.log(data.status);
                }
            });
        });

    })
</script>





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
<!--/请在上方写此页面业务相关的脚本-->
<%@ include file="../footer.jsp" %>
</body>
</html>