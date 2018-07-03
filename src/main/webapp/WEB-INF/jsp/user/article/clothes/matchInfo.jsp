<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/4
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ include file="header.jsp" %>--%>


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
    <title>matchInfo</title>
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
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <%--仿微博评论部分--%>
    <link rel="stylesheet" href="static/user/article/clothes/match/css/style.css">
    <link rel="stylesheet" href="static/user/article/clothes/match/css/comment.css">

    <link href="static/user/article/clothes/match/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/user/article/clothes/match/css/common.css" rel="stylesheet" type="text/css">
    <link href="static/user/article/clothes/match/css/article.css" rel="stylesheet">
    <link href="static/user/article/clothes/match/css/foot.css" rel="stylesheet" type="text/css">
    <link href="static/user/article/clothes/match/css/heart.css" rel="stylesheet" type="text/css">


    <link href="static/user/article/clothes/match/css/guanzhu.css" rel="stylesheet" type="text/css">



    <script type="text/javascript" src="static/user/article/clothes/match/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="static/user/article/clothes/match/js/jquery.flexText.js"></script>
    <%--<script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>--%>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>


    <%--登录模态框js--%>
    <script src="${pageContext.request.contextPath}/static/user/common/plugin/jquery.cookie.js"></script>

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


<input id="article_id_var" value="${article.articleId}" hidden>

<c:set var="user" value="${sessionScope.user}"/>
<c:if test="${not empty user}">
    <input id="current_user_name" value="${user.username}" hidden>
    <input id="current_user_img" value="${user.userImgurl}" hidden>
    <input id="current_user_id" value="${user.userId}" hidden>
</c:if>

<input id="userdId" value="${author.userId}" hidden>

<%--登录模态框--%>



<div class="container clearfix">
    <script type="text/javascript">
        _TrackObj.id=14700;
        _TrackObj.type=0;
    </script>
    <div class="clearfix article-tip">
        <div class="pull-left text-overflow nav-crob">
            <span>当前位置&nbsp;:&nbsp;</span>
            <span><a href="${pageContext.request.contextPath }/user/index.action">iFashion</a></span>
            <i class="icon icon-crob"></i>
            <a href="${pageContext.request.contextPath }/user/clothes.action">穿衣搭配</a>
            <i class="icon icon-crob"></i>
            <span><b>${article.articleTitle}</b></span>
        </div>
    </div>
    <div class="main pull-left">
        <article style="margin-left: 40px">
            <h1>${article.articleTitle}</h1>
            <div class="clearfix text-black80 article-info-option">
                <div class="inline-block pull-left article-info">
                    <span>by <a href="" target="_blank">iFashion</a></span>
                    <span>${article.articleDate}</span>
                    <span>作者：${author.username}</span>				<span>来源：iFashion</span>
                    <!-- <span>浏览：22</span> -->
                </div>
                <div class="inline-block pull-right text-right article-option">
                    <%--<label ><i class="icon icon-like-3 icon-edit" id="praise_14700" data-tabid="0" data-id="14700"></i><span>0</span></label>--%>
                    <c:choose>
                        <c:when test="${empty user}">
                            <a id="tanchu" data-toggle="modal" href="#login-modal">
                                <div style="position: absolute;top: 95px;left: 745px;" class="heart" id="like3" rel="like"></div>
                            </a>
                            <a id="tanchu" data-toggle="modal" href="#login-modal"><label ><i class="icon icon-collect icon-edit" id="collect_14700" data-tabid="0" data-id="14700" ></i><span>0</span></label>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <div style="position: absolute;top: 95px;left: 745px;" class="heart" id="like3" rel="like"></div>
                            <label ><i class="icon icon-collect icon-edit" id="collect_14700" data-tabid="0" data-id="14700"></i><span>0</span></label>
                        </c:otherwise>
                    </c:choose>
                    <label ><i class="icon icon-comment" id="comment_14700" onclick="javascript:window.location.hash='#comment-data';"></i><span>${reviewsNum}</span></label>
                </div>
            </div>
            <%--<div class="feed" id="feed2">--%>
            <c:if test="${not empty heart}">
                <script>
                    $('.heart').addClass("heartAnimation").attr("rel","unlike");
                </script>
            </c:if>
            <c:if test="${empty heart}">
                <script>
                    $('.heart').removeClass("heartAnimation").attr("rel","like");
                    $('.heart').css("background-position","left");
                </script>
            </c:if>

            <%--</div>--%>
            <script>
                $(document).ready(function()
                {
                    $('body').on("click",'.heart',function()
                    {

                        var A=$(this).attr("id");
                        var B=A.split("like");
                        var messageID=B[1];
                        var C=parseInt($("#likeCount"+messageID).html());
                        $(this).css("background-position","")
                        var D=$(this).attr("rel");
                        var articleId = $("#article_id_var").val();
                        var userid = $("#current_user_id").val();
                        var datas = {"articleId":articleId,
                                     "userid":userid  };

                        if(D === 'like')
                        {
                            $("#likeCount"+messageID).html(C+1);
                            $.ajax({
                                type: 'POST',
                                url: '${pageContext.request.contextPath}/user/matchInfo/ajaxaddCollectArticle.action',
                                dataType: 'json', //表示返回值的数据类型
                                contentType: 'application/json;charset=UTF-8', //内容类型
                                traditional: true, //使json格式的字符串不会被转码
                                data: JSON.stringify(datas),
                                success: function(data) {
                                    alert("收藏成功");
                                },
                                error: function(data) {
                                    alert("失败");
                                },
                            });
                            $(this).addClass("heartAnimation").attr("rel","unlike");

                        }
                        else
                        {
                            $("#likeCount"+messageID).html(C-1);
                            $.ajax({
                                type: 'POST',
                                url: '${pageContext.request.contextPath}/user/matchInfo/ajaxCancelCollect.action',
                                dataType: 'json', //表示返回值的数据类型
                                contentType: 'application/json;charset=UTF-8', //内容类型
                                traditional: true, //使json格式的字符串不会被转码
                                data: JSON.stringify(datas),
                                success: function(data) {
                                    alert("取消收藏成功");
                                },
                                error: function(data) {
                                    alert("失败");
                                },
                            });
                            $(this).removeClass("heartAnimation").attr("rel","like");
                            $(this).css("background-position","left");
                        }
                    });
                });
            </script>

            <div style="margin:40px auto;font-size: 15px">
                ${article.content}
            </div>


            <%--<div class="article-tag">--%>
                <%--标签&nbsp;:&nbsp;--%>
                <%--<a href="">活力</a>--%>
                <%--<a href="">清爽</a>--%>
                <%--<a href="">清凉</a>--%>
                <%--<a href="">元素</a>--%>
                <%--<a href="">必备单品</a>--%>
                <%--<a href="">卫衣搭配</a>--%>
                <%--<a href="">潮人</a>--%>
                <%--<a href="">配饰</a>--%>
                <%--<a href="">搭配</a>--%>
            <%--</div>--%>
        </article>

        <div class="clearfix text-center article-other">
            <div class="pull-left text-overflow" style="font-size: 13px">
                上一篇：
                <c:if test="${empty preArticle.articleId}">
                    已是第一篇
                </c:if>
                <c:if test="${not empty preArticle.articleId}">
                    <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${preArticle.articleId}">
                            ${preArticle.articleTitle}			</a>
                </c:if>

            </div>
            <div class="pull-right text-overflow" style="font-size: 13px">
                下一篇：
                <c:if test="${empty nextArticle.articleId}">
                    已是最后一篇
                </c:if>
                <c:if test="${not empty nextArticle.articleId}">
                    <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${nextArticle.articleId}">
                            ${nextArticle.articleTitle}			</a>
                </c:if>
            </div>
        </div>


        <div class="text-center article-sm">声明：未经授权，不得部分或全部转载本站内容，否则将追究相关的法律责任。</div>


        <div class="other-article">
            <h3>相关阅读</h3>
            <ul class="clearfix list-unstyled">
                <c:forEach var="sameType" items="${sameTypeArticles}" begin="0" end="2">
                    <li>
                        <a title="${sameType.articleTitle}" href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${sameType.articleId}" target="_blank">
                            <div class="center-block img-wrap">
                                <img width="275" height="277" title="${sameType.articleTitle}" class="lazy" style="display: inline;" alt="${sameType.articleTitle}" src="${sameType.imgurl}" data-original="${sameType.imgurl}">
                            </div>
                        </a>
                        <a title="${sameType.articleTitle}" href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${sameType.articleId}" target="_blank">
                            <h4 class="center-block text-overflow">
                                    ${sameType.articleTitle}                        </h4>
                        </a>
                        <p class="center-block text-black80">这个季节绝对是裙子的主场，毫无疑问也是最为常见的出街造型，无需费力就能...</p>
                    </li>
                </c:forEach>

            </ul>
        </div>


        <div class="comment-area" id="comment-data">
            <div class="comment-box" >
                <div class="text-black80">穿搭评论</div>

                <div class="commentAll">
                    <!--评论区域 begin-->
                    <div class="reviewArea clearfix" >
                        <textarea style="height: 45px;font-size: 18px;font-family:Helvetica Neue;" class="content comment-input" id="comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>


                        <c:choose>
                            <c:when test="${empty user}">
                                <a id="tanchu" data-toggle="modal" href="#login-modal" class="plBtn">评论</a>
                            </c:when>
                            <c:otherwise>
                                <a href="javascript:;" class="plBtn">评论</a>
                            </c:otherwise>
                        </c:choose>
                        <%--<script>--%>
                            <%--var tanchu = document.getElementById("tanchu");--%>
                            <%--var motai = document.getElementById("login-modal");--%>
                            <%--tanchu.onclick = function(){--%>
                                <%--motai.style.display = "block";--%>
                            <%--}--%>
                        <%--</script>--%>


                    </div>

                    <!--评论区域 end-->
                    <!--回复区域 begin-->
                    <div class="comment-show">
                        <c:forEach var="arvo" items="${arvo}">
                            <div class="comment-show-con clearfix">

                                <div class="comment-show-con-img pull-left">
                                    <img src="${arvo.user.userImgurl}" alt="${arvo.user.username}">
                                </div>

                                <div class="comment-show-con-list pull-left clearfix">

                                    <div class="pl-text clearfix">
                                        <a href="#" class="comment-size-name">${arvo.user.username} : </a>
                                        <span class="my-pl-con">&nbsp;${arvo.reviewContent}</span>
                                    </div>

                                    <div class="date-dz">
                                        <span class="date-dz-left pull-left comment-time">2017-5-2 11:11:39</span>
                                        <div class="date-dz-right pull-right comment-pl-block">
                                            <%--<a href="javascript:;" class="removeBlock">删除</a>--%>
                                            <%--<a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>--%>
                                            <span class="pull-left date-dz-line">|</span>
                                            <a href="javascript:;" class="date-dz-z pull-left">
                                                <i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)
                                            </a>
                                        </div>
                                    </div>
                                    <div class="hf-list-con"></div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!--回复区域 end-->
                </div>


            </div>
            <div id="scroller"><ul class="comment-list list-unstyled text-black80"></ul></div>
        </div>


        <script type="text/javascript">
            var outer_id = "14700";
            var outer_type = 0;
            var score = 5;
        </script>



        <!--textarea高度自适应-->
        <script type="text/javascript">
            $(function () {
                $('.content').flexText();
            });
        </script>
        <!--textarea限制字数-->
        <script type="text/javascript">
            function keyUP(t){
                var len = $(t).val().length;
                if(len > 180){
                    $(t).val($(t).val().substring(0,181));
                }
            }
        </script>
        <!--点击评论创建评论条-->
        <script type="text/javascript">

            $('.commentAll').on('click','.plBtn',function(){
                var myDate = new Date();
                //获取当前年
                var year=myDate.getFullYear();
                //获取当前月
                var month=myDate.getMonth()+1;
                //获取当前日
                var date=myDate.getDate();
                var h=myDate.getHours();       //获取当前小时数(0-23)
                var m=myDate.getMinutes();     //获取当前分钟数(0-59)
                if(m<10) m = '0' + m;
                var s=myDate.getSeconds();
                if(s<10) s = '0' + s;
                var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
                //获取输入内容
                var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
                console.log(oSize);
                alert("调用");
                var reviewContent = $("#comment-input").val();
                var articleId = $("#article_id_var").val();
                var username = $("#current_user_name").val();
                var userimg = $("#current_user_img").val();

                var datas = {"reviewContent":reviewContent,
                    "articleId":articleId};
                //动态创建评论模块
                if(username == undefined){

                }
                else{
                    oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="'+userimg+'" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">'+username+' </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
                    if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
                        $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
                        $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
                    }
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/user/matchInfo/ajaxAddReview.action',
                        dataType: 'json', //表示返回值的数据类型
                        contentType: 'application/json;charset=UTF-8', //内容类型
                        traditional: true, //使json格式的字符串不会被转码
                        data: JSON.stringify(datas),
                        success: function(data) {
                            alert("添加成功");
                        },
                        error: function(data) {
                            alert("失败");
                        },
                    });
                }

            });
        </script>
        <!--点击回复动态创建回复块-->
        <script type="text/javascript">
            $('.comment-show').on('click','.pl-hf',function(){
                //获取回复人的名字
                var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
                //回复@
                var fhN = '回复@'+fhName;
                //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
                var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
                //显示回复
                if($(this).is('.hf-con-block')){
                    $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
                    $(this).removeClass('hf-con-block');
                    $('.content').flexText();
                    $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
                    //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
                    //input框自动聚焦
                    $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
                }else {
                    $(this).addClass('hf-con-block');
                    $(this).parents('.date-dz-right').siblings('.hf-con').remove();
                }
            });
        </script>
        <!--评论回复块创建-->
        <script type="text/javascript">
            $('.comment-show').on('click','.hf-pl',function(){
                var oThis = $(this);
                var myDate = new Date();
                //获取当前年
                var year=myDate.getFullYear();
                //获取当前月
                var month=myDate.getMonth()+1;
                //获取当前日
                var date=myDate.getDate();
                var h=myDate.getHours();       //获取当前小时数(0-23)
                var m=myDate.getMinutes();     //获取当前分钟数(0-59)
                if(m<10) m = '0' + m;
                var s=myDate.getSeconds();
                if(s<10) s = '0' + s;
                var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
                //获取输入内容
                var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
                console.log(oHfVal)
                var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
                var oAllVal = '回复@'+oHfName;
                if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){

                }else {
                    alert('d');
                    $.getJSON("pl.json",function(data){
                        alert('1');
                        var oAt = '';
                        var oHf = '';
                        $.each(data,function(n,v){
                            delete v.hfContent;
                            delete v.atName;
                            var arr;
                            var ohfNameArr;
                            if(oHfVal.indexOf("@") == -1){
                                data['atName'] = '';
                                data['hfContent'] = oHfVal;
                            }else {
                                arr = oHfVal.split(':');
                                ohfNameArr = arr[0].split('@');
                                data['hfContent'] = arr[1];
                                data['atName'] = ohfNameArr[1];
                            }

                            if(data.atName == ''){
                                oAt = data.hfContent;
                            }else {
                                oAt = '回复<a href="#" class="atName">@'+data.atName+'</a> : '+data.hfContent;
                            }
                            oHf = data.hfName;
                        });

                        var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
                        oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
                    });
                }
            });
        </script>
        <!--点赞-->
        <script type="text/javascript">
            $('.comment-show').on('click','.date-dz-z',function(){
                var zNum = $(this).find('.z-num').html();
                if($(this).is('.date-dz-z-click')){
                    zNum--;
                    $(this).removeClass('date-dz-z-click red');
                    $(this).find('.z-num').html(zNum);
                    $(this).find('.date-dz-z-click-red').removeClass('red');
                }else {
                    zNum++;
                    $(this).addClass('date-dz-z-click');
                    $(this).find('.z-num').html(zNum);
                    $(this).find('.date-dz-z-click-red').addClass('red');
                }
            })
        </script>
    </div>
    <aside class="pull-right" style="margin-right: 0px;margin-bottom: 0px;margin-top:0px;">
        <div class="gyzb com">
            <div class="clearfix">
                <div class="pull-left zs"></div>
                <div class="pull-left bt">关于编辑</div>
            </div>
            <dl class="clearfix">
                <dt class="pull-left">
                    <a>
                        <img width="50" height="50" class="lazy" style="display: inline;" alt="iFashion" src="${author.userImgurl}">
                    </a>
                </dt>
                <dd class="pull-left">
                    <a href=""><h4 class="text-overflow">${author.username}</h4></a>
                    <div class="text-overflow"></div>
                </dd>
            </dl>
            <div class="option" id="guanzhu">
                <%--<a class="inline-block text-center subscribe" id="subscribe_14700" href="javascript:void(0);">订阅</a>--%>
                关注
            </div>
            <input id="userdId" value="${author.userId}" hidden>

            <c:if test="${not empty pick}">
                <script>
                    $('#guanzhu').css('background-color','#34CF7A');
                    $('#guanzhu').html('<div class="icon-ok"></div> 已转粉');
                </script>
            </c:if>

            <script>
                $(document).ready(
                    function iniciar(){
                        $('#guanzhu').on("click", function(){
                            var userid = $("#current_user_id").val();
                            var userdId = $("#userdId").val();
                            var datas = {"userdId":userdId,
                                          "userid":userid  };
                            $.ajax({
                                type: 'POST',
                                url: '${pageContext.request.contextPath}/user/matchInfo/ajaxaddAttention.action',
                                dataType: 'json', //表示返回值的数据类型
                                contentType: 'application/json;charset=UTF-8', //内容类型
                                traditional: true, //使json格式的字符串不会被转码
                                data: JSON.stringify(datas),
                                success: function(data) {
                                    alert("关注成功");
                                },
                                error: function(data) {
                                    alert("失败");
                                },
                            });
                            $('#guanzhu').css('background-color','#34CF7A');
                            $('#guanzhu').html('<div class="icon-ok"></div> 已转粉');
                        });
                    }
                );
            </script>
            <div><b style="font-size: 15px">最近作品 :</b></div>
            <ul class="list-unstyled">

                <c:forEach var="articles" items="${articles}">
                    <li class="text-overflow">
                        <a title="${articles.articleTitle}" class="text-black80" href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${articles.articleId}" style="font-size: 13px">
                                ${articles.articleTitle}</a>
                    </li>
                </c:forEach>

            </ul>
        </div>
        <div class="weektop10 com">
            <div class="zs"></div>
            <ul class="list-unstyled">
                <li>
                    <span class="inline-block top3">1</span>
                    <c:forEach items="${hotArticle}" var="hotArticle" begin="0" end="0">
                        <dl class="inline-block dl-horizontal">
                            <dt>
                                <a title="${hotArticle.articleTitle}" href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${hotArticle.articleId}" target="_blank">
                                    <img width="125" height="110" title="${hotArticle.articleTitle}" class="lazy" style="display: inline;" alt="${hotArticle.articleTitle}" src="${hotArticle.imgurl}">
                                </a>
                            </dt>
                            <dd>
                                <a title="${hotArticle.articleTitle}" class="text-black90" href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${hotArticle.articleId}" target="_blank">
                                    <h4>${hotArticle.articleTitle}</h4>
                                </a>
                                <div class="text-right">
                                    <!-- <i class="icon icon-view"></i><span>455</span> -->
                                </div>
                            </dd>
                        </dl>
                    </c:forEach>
                </li>

                <c:forEach items="${hotArticle}" var="hotArticle" varStatus="i" begin="1" end="9">
                    <li>
                        <span class="inline-block top3">${i.index+1}</span>
                        <a title="${hotArticle.articleTitle}" class="text-black80" href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${hotArticle.articleId}" target="_blank">
                            <p class="inline-block text-overflow">${hotArticle.articleTitle}</p>
                        </a>
                        <!-- <i class="icon icon-view"></i><span>388</span> -->
                    </li>
                </c:forEach>


            </ul>
        </div>
        <div class="hot-zt com">
            <div class="zs">最新资讯</div>

            <c:forEach var="newArticle" items="${newArticle}" begin="0" end="3">
                <dl class="clearfix">
                    <dt class="pull-left">
                        <a title="${newArticle.articleTitle}" href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${newArticle.articleId}" target="_blank">
                            <img width="125" height="100" title="${newArticle.articleTitle}" class="lazy" style="display: inline;" alt="${newArticle.articleTitle}" src="${newArticle.imgurl}">
                        </a>
                    </dt>
                    <dd class="pull-left">
                        <a class="text-black90" href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${newArticle.articleId}">
                            <h4 title="${newArticle.articleTitle}" style="overflow: hidden;text-overflow: ellipsis;">
                                    ${newArticle.articleTitle}	</h4>
                        </a>
                        <p class="text-black80" style="overflow: hidden;text-overflow: ellipsis;">${newArticle.articleTitle}</p>
                    </dd>
                </dl>
            </c:forEach>

        </div>

        <!--
<div class="searchbox com">
    <form action="/search/index" method="get" id="searchform2">
        <input class="searchtext" id="searchtext2" name="keywords" type="text"/><input class="searchbtn icon icon-search" type="button" onclick="if($('#searchtext2').val()!='') $('#searchform2').submit();" value="|">
    </form>
</div>
 -->
    </aside>
    <script>
        $(function() {
            $(".gifs").jqGifPreview();
        });
    </script>
    <script language="Javascript">
        document.oncontextmenu=new Function("event.returnValue=false");
        document.onselectstart=new Function("event.returnValue=false");
    </script>
</div>


<%@ include file="../../footer.jsp" %>

</body>
</html>
