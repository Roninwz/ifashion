<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/10
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <base href="<%=basePath%>">
    <title>问题详情</title>

    <link rel="stylesheet"  href="static/user/talk/css/review.css">
    <link rel="stylesheet" href="static/user/talk/css/reset.css" />
    <link rel="stylesheet"  href="static/user/talk/css/demo1.css">
    <link rel="stylesheet"  href="static/user/talk/css/style.css">
    <link rel="stylesheet"  href="static/user/talk/css/review1.css">

    <%--<script src="static/user/talk/js/modernizr.js"></script>--%>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">
    <link rel="stylesheet" href="static/user/talk/css/1.css">

    <style type="text/css">
        #low_right
        {
            position: fixed;
            width: 85px;
            height: 130px;
            background: #eee;
            bottom: 50%;
            right: 10px;
            text-align: center;
        }
    </style>

    <script src="static/user/person/js/jquery.min.js" type="text/javascript"></script>



    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>
    <script type="text/javascript" src="static/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="static/ueditor/ueditor.all.js"></script>
    <script type="text/javascript" src="static/ueditor/lang/zh-cn/zh-cn.js"></script>



    <script>

        $(function() {
            $(".ueditor").hide(); //初始化的时候第二个下拉列表隐藏
            $(".ueditor").css("display", "none");
            $(".accordion-content").hide(); //初始化的时候第二个下拉列表隐藏
            $(".accordion-content").css("display", "none");
            $(".ueditor1").hide(); //初始化的时候第二个下拉列表隐藏
            $(".ueditor1").css("display", "none");



        });

        function  aa(obj) {
            var idnum = $(obj).siblings(".ueditor").children().siblings("script").attr("index");
            $(obj).siblings(".ueditor").show();
            var ue = UE.getEditor(idnum, {
                initialFrameWidth: '100%',//宽度
                initialFrameHeight: 100,//高度
                toolbars: [[
                    'undo', 'redo', 'bold', 'italic', 'underline', 'formatmatch', 'autotypeset', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall']
                ]
            });
            $(obj).siblings(".ueditor").children().siblings(".do-reply-btn").click(function () {
                var replyquestionId=$(obj).siblings(".ueditor").children().siblings("#replyquestionId").val();
                var bhfusername=$(obj).siblings(".ueditor").children().siblings("#bhfusername").val();
                var hreplyReplyQuesId=$(obj).siblings(".ueditor").children().siblings("#hreplyReplyQuesId").val();
                alert(ue.getContent());
                alert(replyquestionId);
                var datas={"replyReplyQuesContent":ue.getContent(),"replyquestionId":replyquestionId,"bhfusername":bhfusername,"hreplyReplyQuesId":hreplyReplyQuesId};
                var date=new Date().toLocaleString( );
                $.ajax({
                    url: '${pageContext.request.contextPath }/user/addResponse.action',
                    type: 'POST',
                    dataType: 'json', //表示返回值的数据类型
                    contentType: 'application/json;charset=UTF-8', //内容类型
                    traditional: true, //使json格式的字符串不会被转码
                    data: JSON.stringify(datas),
                    success: function(data) {
                        var response="<li class='clearfix'><div class='user-pic'><a href='' target='_blank'>";
                        response+="<img alt='"+data.user.userImgurl+"' src='"+data.user.userImgurl+"'>"+"</a></div><div class='user-info clearfix'>"+
                                "<a class='from-user' href=''>"+data.user.username+"</a><span class='from-user' style='font-size: 12px; color: #93999f'>回复：</span>"+
                                "<a class='from-user' href=''>"+data.bhfusername+"</a>"+"<span id='cengshu' class='r floor'>#${status.count}</span>"+
                                "</div><div class='reply-content'>" + data.replyReplyQuesContent+"</div>"+"<div class='reply-btn l' onclick='aa(this);return true;' data-uid='2856055' data-username='11知足11'>回复</div>"+
                                "<a class='reply-del js-tip-off' href='javascript:void(0)' data-uid='2856055' data-type='3' data-id='44492'>举报</a>"+"<span class='time r'>"+
                            date+"</span>"+"<div class='ueditor' style='margin-top: 50px'>"+
                                "<input id='replyquestionId' name='replyquestionId' value='"+data.replyquestionId+"' type='hidden' index='${status.count}'>" + "<input id='bhfusername' name='bhfusername' value='"+data.user.username+"' type='hidden' index='${status.count}'>" +
                                "<input id='hreplyReplyQuesId' name='hreplyReplyQuesId' value='"+data.replyReplyQuesId+"' type='hidden' index='${status.count}'>"+
                                "<script class='text1' id='${status.count}' name='content' type='text/plain' index='${status.count}'></\s\c\r\i\p\t>" + "<div  class='do-reply-btn' data-answer-id='231714' data-ques-uid='2143740' style='margin-top: 10px;float: right;width: 40px;height: 20px;font-size: 14px;color: #fff;line-height: 20px;text-align: center;cursor: pointer;background-color: #f01400;' index='${status.count}'>回复</div>"+
                                "</div></li>";
                        $(".reply-list").append(response);
                    },
                    error: function(data) {

                    }
                });
                $(obj).siblings(".ueditor").hide();
            });
        }

        function  aaa(obj) {

            $(obj).parent().next().show();
            <%--var ueditor=$(obj).parent().next().children().siblings(".reply-con").children().siblings(".release-reply-con").children().siblings(".ueditor1").children().siblings("script").attr("index");--%>
            <%--$(obj).parent().next().children().siblings(".reply-con").children().siblings(".release-reply-con").children().siblings(".ueditor1").show();--%>
            <%--alert(ueditor);--%>
            <%--var ue = UE.getEditor(ueditor, {--%>
                <%--initialFrameWidth: '100%',//宽度--%>
                <%--initialFrameHeight: 100,//高度--%>
                <%--toolbars: [[--%>
                    <%--'undo', 'redo', 'bold', 'italic', 'underline', 'formatmatch', 'autotypeset', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall']--%>
                <%--]--%>
            <%--});--%>
            <%--$(obj).parent().next().children().siblings(".reply-con").children().siblings(".release-reply-con").children().siblings(".ueditor1").children().siblings(".do-reply-btn").click(function () {--%>
                <%--var replyquestionId=$(obj).parent().next().children().siblings(".reply-con").children().siblings(".release-reply-con").children().siblings(".ueditor1").children().siblings("#replyquestionId").val();--%>
                <%--var bhfusername=$(obj).parent().next().children().siblings(".reply-con").children().siblings(".release-reply-con").children().siblings(".ueditor1").children().siblings("#bhfusername").val();--%>
                <%--alert(ue.getContent());--%>
                <%--var date=new Date().toLocaleString( );--%>
                <%--alert(date);--%>
                <%--var datas={"replyReplyQuesContent":ue.getContent(),"replyquestionId":replyquestionId,"bhfusername":bhfusername};--%>
                <%--$.ajax({--%>
                    <%--url: '${pageContext.request.contextPath }/user/addReplyReply.action',--%>
                    <%--type: 'POST',--%>
                    <%--dataType: 'json', //表示返回值的数据类型--%>
                    <%--contentType: 'application/json;charset=UTF-8', //内容类型--%>
                    <%--traditional: true, //使json格式的字符串不会被转码--%>
                    <%--data: JSON.stringify(datas),--%>
                    <%--success: function(data) {--%>
                        <%--var reply="<li class='clearfix'><div class='user-pic'><a href='' target='_blank'>";--%>
                        <%--reply+="<img alt='"+data.user.userImgurl+"' src='"+data.user.userImgurl+"'>"+"</a></div><div class='user-info clearfix'>"+--%>
                            <%--"<a class='from-user' href=''>"+data.user.username+"</a><span class='from-user' style='font-size: 12px; color: #93999f'>回复：</span>"+--%>
                            <%--"<a class='from-user' href=''>"+data.bhfusername+"</a>"+"<span id='cengshu' class='r floor'>#${status.count}</span>"+--%>
                            <%--"</div><div class='reply-content'>" + data.replyReplyQuesContent+"</div>"+"<div class='reply-btn l' onclick='aa(this);return true;' data-uid='2856055' data-username='11知足11'>回复</div>"+--%>
                            <%--"<a class='reply-del js-tip-off' href='javascript:void(0)' data-uid='2856055' data-type='3' data-id='44492'>举报</a>"+"<span class='time r'>"+--%>
                            <%--date+"</span>"+"<div class='ueditor' style='margin-top: 50px'>"+--%>
                            <%--"<input id='replyquestionId' name='replyquestionId' value='"+data.replyquestionId+"' type='hidden' index='${status.count}'>" + "<input id='bhfusername' name='bhfusername' value='"+data.user.username+"' type='hidden' index='${status.count}'>" +--%>
                            <%--"<input id='hreplyReplyQuesId' name='hreplyReplyQuesId' value='"+data.replyReplyQuesId+"' type='hidden' index='${status.count}'>"+--%>
                            <%--"<script class='text1' id='${status.count}' name='content' type='text/plain' index='${status.count}'></\s\c\r\i\p\t>" + "<div  class='do-reply-btn' data-answer-id='231714' data-ques-uid='2143740' style='margin-top: 10px;float: right;width: 40px;height: 20px;font-size: 14px;color: #fff;line-height: 20px;text-align: center;cursor: pointer;background-color: #f01400;' index='${status.count}'>回复</div>"+--%>
                            <%--"</div></li>";--%>
                        <%--$(".reply-list").append(reply);--%>
                    <%--},--%>
                    <%--error: function(data) {--%>

                    <%--}--%>
                <%--});--%>
            <%--})--%>
        }

        function aaaaa(obj) {
            $(obj).parent().hide();
        }

        function bbb(obj){
            var uedi=$(obj).siblings(".ueditor1").children().siblings("script").attr("index");
            $(obj).siblings(".ueditor1").show();
            alert(uedi);
            var ue = UE.getEditor(uedi, {
                initialFrameWidth: '100%',//宽度
                initialFrameHeight: 100,//高度
                toolbars: [[
                    'undo', 'redo', 'bold', 'italic', 'underline', 'formatmatch', 'autotypeset', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall']
                ]
            });
            $(obj).hide();
            $(obj).siblings(".ueditor1").children().siblings(".do-reply-btn").click(function () {
                var replyquestionId=$(obj).siblings(".ueditor1").children().siblings("#replyquestionId").val();
                var bhfusername=$(obj).siblings(".ueditor1").children().siblings("#bhfusername").val();
                alert(ue.getContent());
                var date=new Date().toLocaleString( );
                alert(date);
                var datas={"replyReplyQuesContent":ue.getContent(),"replyquestionId":replyquestionId,"bhfusername":bhfusername};
                $.ajax({
                    url: '${pageContext.request.contextPath }/user/addReplyReply.action',
                    type: 'POST',
                    dataType: 'json', //表示返回值的数据类型
                    contentType: 'application/json;charset=UTF-8', //内容类型
                    traditional: true, //使json格式的字符串不会被转码
                    data: JSON.stringify(datas),
                    success: function(data) {
                        var reply="<li class='clearfix'><div class='user-pic'><a href='' target='_blank'>";
                        reply+="<img alt='"+data.user.userImgurl+"' src='"+data.user.userImgurl+"'>"+"</a></div><div class='user-info clearfix'>"+
                            "<a class='from-user' href=''>"+data.user.username+"</a><span class='from-user' style='font-size: 12px; color: #93999f'>回复：</span>"+
                            "<a class='from-user' href=''>"+data.bhfusername+"</a>"+"<span id='cengshu' class='r floor'>#${status.count}</span>"+
                            "</div><div class='reply-content'>" + data.replyReplyQuesContent+"</div>"+"<div class='reply-btn l' onclick='aa(this);return true;' data-uid='2856055' data-username='11知足11'>回复</div>"+
                            "<a class='reply-del js-tip-off' href='javascript:void(0)' data-uid='2856055' data-type='3' data-id='44492'>举报</a>"+"<span class='time r'>"+
                            date+"</span>"+"<div class='ueditor' style='margin-top: 50px'>"+
                            "<input id='replyquestionId' name='replyquestionId' value='"+data.replyquestionId+"' type='hidden' index='${status.count}'>" + "<input id='bhfusername' name='bhfusername' value='"+data.user.username+"' type='hidden' index='${status.count}'>" +
                            "<input id='hreplyReplyQuesId' name='hreplyReplyQuesId' value='"+data.replyReplyQuesId+"' type='hidden' index='${status.count}'>"+
                            "<script class='text1' id='${status.count}' name='content' type='text/plain' index='${status.count}'></\s\c\r\i\p\t>" + "<div  class='do-reply-btn' data-answer-id='231714' data-ques-uid='2143740' style='margin-top: 10px;float: right;width: 40px;height: 20px;font-size: 14px;color: #fff;line-height: 20px;text-align: center;cursor: pointer;background-color: #f01400;' index='${status.count}'>回复</div>"+
                            "</div></li>";
                        $(".reply-list").append(reply);
                    },
                    error: function(data) {

                    }
                });
            })


        }

    </script>




</head>
<body style="background-color: white">
<%@ include file="../header.jsp" %>

<div id="main">

    <div class="wenda clearfix">
        <div class="l wenda-main">
            <div class="qa-content" data-qid="390861">
                <div class="qa-content-inner ">
                    <div id="js-content-main">
                        <div class="detail-q-title clearfix">
                            <!-- 话题 -->
                            <h1 class="js-qa-wenda-title detail-wenda-title">${questionContent}</h1>


                            <!-- 问答信息 -->
                            <div class="wenda-intro-box clearfix">
                                <div class="detail-user l">
                                    <a class="author l" href="">
                                        <img alt="${quserName}" src="${quserImgurl}">

                                        ${quserName}
                                    </a>

                                </div>

                                <!-- 编辑 -->
                                <div class="wenda-edit-box r">
                                    <a class="js-tip-off detail-edit l" href="javascript:;" data-uid="4210760" data-type="1" data-id="390861">举报</a>
                                    <span class="count-item l">回答<i>0</i></span>
                                    <span class="count-item l">浏览<i>5</i></span>

                                </div>
                                <!-- 编辑 end -->
                            </div>
                        </div>

                        <div class="detail-wenda aimgPreview rich-text" id="js-qa-wenda">
                            <p>
                                <img title="" style="cursor: pointer;" alt="" src="" data-src="">
                            </p>
                        </div>
                    </div>

                    <!-- 编辑问答 -->
                    <!-- 编辑问答 end -->

                    <!-- 源自 & 分享 & 关注 -->
                    <div class="qa-header detail-user-tips clearfix">
                        <div class="qa-header-left labelCon l clearfix">
                            <div class="item l">
                                <a href="">${tagName}</a>
                            </div>
                        </div>
                        <div class="qa-header-right r">
                            <!-- credit -->
                            <!-- follow -->
                            <a title="关注" class="l wenda-add-collection js-collection-btn" href="javascript:void(0)" data-id="390861">
                                <i class="icon-heart">
                                    <img src="static/user/talk/image/guanzhu.jpg"></i>
                                <span class="detail-hearts js-detail-follow"></span>
                            </a>
                        </div>

                    </div>
                    <!-- 源自 & 分享 & 关注 end-->
                </div>

            </div>

            <div class="detail-comment-input js-msg-context clearfix" id="js-qa-comment-input">
                <h3 class="answer-add-tip">添加回答</h3>
                <div class="detail-ci-avator" id="add-answer">
                    <input id="questionId" name="questionId" value="${questionId}" type="hidden">
                    <script id="container" name="content" type="text/plain">

                    </script>
                    <script>
                        var ue = UE.getEditor("container", {
                            initialFrameWidth: '100%',//宽度
                            initialFrameHeight: 100,//高度
                            toolbars: [[
                                'undo', 'redo', 'bold', 'italic', 'underline', 'formatmatch', 'autotypeset', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall']
                            ]
                        });
                        function cc(obj) {
                            var questionId=$(obj).parent().children().siblings("#questionId").val();
                            alert(ue.getContent());
                            var date=new Date().toLocaleString( );
                            alert(date);
                            var datas={"replyContent":ue.getContent(),"questionId":questionId};
                            $.ajax({
                                url: '${pageContext.request.contextPath }/user/addReplyquestion.action',
                                type: 'POST',
                                dataType: 'json', //表示返回值的数据类型
                                contentType: 'application/json;charset=UTF-8', //内容类型
                                traditional: true, //使json格式的字符串不会被转码
                                data: JSON.stringify(datas),
                                success: function(data) {
                                    var replyquestion="<div class='ques-answer ques-new-answer clearfix' style='background-color:#eee;' ><dt><div class='user-pic l'><a href='' target='_blank'>";
                                    replyquestion+="<img width='40' height='40' alt='?' src='"+data.user.userImgurl+"'>"+"</a></div><div class='detail-r'>"+"<a class='detail-name' href='' target='_blank'>"+data.user.username+"</a>"+
                                            "</div>"+"<a href='javascript:void(0)' aria-expanded='false' aria-controls='accordion1' class='accordion-title accordionTitle js-accordionTrigger'>"+data.replyContent+"</a>"+"</dt>"
                                    $("dl").append(replyquestion);
                                },
                                error: function(data) {

                                }
                            });
                        }

                    </script>
                    <div  class="do-reply-btn" data-answer-id="231714" data-ques-uid="2143740" style="margin-top: 10px;float: right;width: 40px;height: 20px;font-size: 14px;color: #fff;line-height: 20px;text-align: center;cursor: pointer;background-color: #f01400;" onclick="cc(this);">回复</div>

                </div>

                <div class="detail-ci-avator answer-hidden l" id="avator-wrap">
                    <img alt="" src="">

                </div>


            </div>
            <!-- 回答数 -->
            <c:choose>
                <c:when test="${replyCount==0}">
                    <div class="none_ans">暂无任何回答</div>
                </c:when>
                <c:otherwise>



                <div class="ans_num">${replyCount}回答</div>

                <!-- 回答回复 start -->
                <div class="container">

                    <div class="accordion" >
                        <dl>
                            <c:forEach var="rrrQuestions" items="${rrrQuestions}" varStatus="status1">
                            <div class="ques-answer ques-new-answer clearfix" style="background-color:#eee;" >
                                <dt>
                                    <div class="user-pic l">
                                        <a href="" target="_blank">
                                            <img width="40" height="40" alt="${rrrQuestions.user.username}" src="${rrrQuestions.user.userImgurl}">
                                        </a>
                                    </div>
                                    <div class="detail-r">
                                        <a class="detail-name" href="" target="_blank">${rrrQuestions.user.username}</a>



                                    </div>
                                    <a href="javascript:void(0)" value="1" onclick="aaa(this);return true;" id="liaa" aria-expanded="false" aria-controls="accordion1" class="accordion-title accordionTitle js-accordionTrigger">${rrrQuestions.replyContent}</a>
                                    <div class="ctrl-bar clearfix js-wenda-tool">

                                        <%--<span class="agree-with " data-hasop="" data-answer-id="231906" data-ques-id="344091"><i class="icon-thumb-revert"><img src="static/user/talk/image/zanhui.png" style="height:25px; width:25px; margin-top:2px"></i><em>${rrrQuestions.zanNum}</em></span>--%>

                                        <%--<span class="oppose " data-hasop="" data-answer-id="231906" data-ques-id="344091"><i class="imv2-thumb_down"><img src="static/user/talk/image/fandui.png" style="height:18px; width:18px; margin-top:8px"></i><em>${rrrQuestions.againstNum}</em></span>--%>



                                        <span class="reply" data-ques-uid="2143740" data-reply-id="231906" data-replynum="6"><em>${rrrQuestions.replyReplyCount}</em>个回复</span>

                                        <a class="reply-del js-tip-off" href="javascript:;" data-uid="166794" data-type="2" data-id="231906" data-quesid="344091" data-answerid="231906">举报</a>


                                        <span class="time r"><fmt:formatDate value="${rrrQuestions.replyDate}" pattern="yyyy-MM-dd"></fmt:formatDate></span>

                                    </div><!--.ctrl-bar end-->
                                </dt>
                                <dd class="accordion-content accordionItem is-collapsed" id="${rrrQuestions.replyquestionId}" aria-hidden="true" style="">
                                    <div onclick="aaaaa(this);return true;" id="haha" style="width: 700px"><img src="static/user/talk/image/huifu.png" height="30px" width="30px"></div>
                                    <div value="1"
                                            class="reply-con" style="display:block; overflow:scroll;min-height:300px; height:500px">
                                        <ul class="reply-list" style="min-height:300px; overflow:auto; height:auto">
                                          <c:forEach var="rrQuestionUsers" items="${rrrQuestions.rrQuestionUsers}" varStatus="status" >
                                            <li class="clearfix">
                                                <div class="user-pic">
                                                    <a href="" target="_blank">
                                                        <img alt="${rrQuestionUsers.user.username}" src="${rrQuestionUsers.user.userImgurl}">
                                                    </a>
                                                </div>
                                                <div class="user-info clearfix">
                                                    <a class="from-user" href="">${rrQuestionUsers.user.username}</a>
                                                    <span class="from-user" style="font-size: 12px; color: #93999f">回复：</span>
                                                    <c:choose>
                                                        <c:when test="${rrQuestionUsers.hreplyReplyQuesId==0}">
                                                            <a class="from-user" href="">${rrrQuestions.user.username}</a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <a class="from-user" href="">${rrQuestionUsers.bhfusername}</a>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <span id="cengshu" class="r floor">#${status.count}</span>
                                                </div>
                                                <div class="reply-content">${rrQuestionUsers.replyReplyQuesContent}</div>
                                                <div class="reply-btn l" onclick="aa(this);return true;" data-uid="2856055" data-username="11知足11">回复</div>
                                                <a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a>
                                                <span class="time r"><fmt:formatDate value="${rrQuestionUsers.replyReplyQuesDate}"></fmt:formatDate></span>
                                                <div class="ueditor" style="margin-top: 50px">
                                                        <input id="replyquestionId" name="replyquestionId" value="${rrrQuestions.replyquestionId}" type="hidden" index="${status.count}">
                                                        <input id="bhfusername" name="bhfusername" value="${rrQuestionUsers.user.username}" type="hidden" index="${status.count}">
                                                        <input id="hreplyReplyQuesId" name="hreplyReplyQuesId" value="${rrQuestionUsers.replyReplyQuesId}" type="hidden" index="${status.count}">
                                                        <script class="text1" id="${status.count}" name="content" type="text/plain" index="${status.count}">

                                                        </script>
                                                        <div  class="do-reply-btn" data-answer-id="231714" data-ques-uid="2143740" style="margin-top: 10px;float: right;width: 40px;height: 20px;font-size: 14px;color: #fff;line-height: 20px;text-align: center;cursor: pointer;background-color: #f01400;" index="${status.count}">回复</div>

                                                </div>
                                            </li>
                                          </c:forEach>
                                        </ul><!--.reply-list end-->
                                        <div class="release-reply-con clearfix">
                                            <div class="user-pic ">
                                                <a href="/u/4261959/bbs" target="_blank">
                                                    <img width="40" height="40" alt="?" src="//img.mukewang.com/58e05b48000124ba01000100-100-100.jpg">
                                                </a>
                                            </div>
                                            <!--.user-pic end-->
                                            <div onclick="bbb(this);return true;" class="do-reply-btn" data-answer-id="231714" data-ques-uid="2143740" style="margin-top:20px;float: right;width: 60px;height: 40px;font-size: 14px;color: #fff;line-height: 40px;text-align: center;cursor: pointer;background-color: #f01400;">回复</div>
                                            <div class="ueditor1" style="margin-top:80px">
                                                <input id="replyquestionId" name="replyquestionId" value="${rrrQuestions.replyquestionId}" type="hidden" index="${status1.count}">
                                                <input id="bhfusername" name="bhfusername" value="${rrrQuestions.user.username}" type="hidden" index="${status1.count}">
                                                <script class="text1" id="k${status1.count}" name="content" type="text/plain" index="k${status1.count}">

                                                </script>
                                                <div  class="do-reply-btn" data-answer-id="231714" data-ques-uid="2143740" style="margin-top: 10px;float: right;width: 40px;height: 20px;font-size: 14px;color: #fff;line-height: 20px;text-align: center;cursor: pointer;background-color: #f01400;" index="${status1.count}">回复</div>

                                            </div>

                                        </div><!--.release-reply-con end-->
                                    </div><!--.reply-con end-->
                                </dd>
                            </div>
                            </c:forEach>
                            <div class="ques-answer ques-new-answer clearfix" style="background-color:#eee;" >
                                <dt>
                                    <div class="user-pic l">
                                        <a href="" target="_blank">
                                            <img width="40" height="40" alt="?" src="//img3.mukewang.com/5458472300015f4702200220-100-100.jpg">
                                        </a>
                                    </div>
                                    <div class="detail-r">
                                        <a class="detail-name" href="/u/1082966/bbs" target="_blank">此昵称已被占用</a>



                                    </div>

                                    <a href="javascript:void(0)" aria-expanded="false" aria-controls="accordion1" class="accordion-title accordionTitle js-accordionTrigger">First Accordion heading</a>
                                </dt>
                                <dd class="accordion-content accordionItem is-collapsed ddheight" id="accordion1" aria-hidden="true" style="height:500px !important;z-index:100">
                                    <div class="reply-con" style="display:block; overflow:scroll;min-height:300px; height:500px">
                                        <ul class="reply-list" style="display:block; min-height:300px; overflow:auto; height:auto">

                                            <li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/3797870/bbs" target="_blank"><img alt="夜鸽" src="//img1.mukewang.com/user/54584f850001c0bc02200220-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/3797870/bbs">夜鸽</a><span class="r floor">#2</span></div><div class="reply-content">不知道你们怎么看，反正我是觉得晚上的效率是高于白天的。</div><div class="reply-btn l" data-uid="3797870" data-username="夜鸽">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="3797870" data-type="3" data-id="44581">举报</a><span class="time r">2017-03-12 03:38:36</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2910275/bbs" target="_blank"><img alt="weibo_杉素素_0" src="//img.mukewang.com/user/56c2db140001fa2001800180-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2910275/bbs">weibo_杉素素_0</a><span class="r floor">#3</span></div><div class="reply-content">其实熬夜和个人的修为成正比例，往往越发熟练的家伙是不会折磨自己到深夜的</div><div class="reply-btn l" data-uid="2910275" data-username="weibo_杉素素_0">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2910275" data-type="3" data-id="44658">举报</a><span class="time r">2017-03-12 21:06:17</span></li>

                                            <li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li>

                                        </ul><!--.reply-list end-->
                                        <div class="release-reply-con clearfix">
                                            <div class="user-pic ">
                                                <a href="/u/4261959/bbs" target="_blank">
                                                    <img width="40" height="40" alt="?" src="//img.mukewang.com/58e05b48000124ba01000100-100-100.jpg">
                                                </a>
                                            </div>
                                            <!--.user-pic end-->


                                            <div class="textarea-con">
                                                <textarea name="release-reply" id="release-reply" placeholder="写下你的回复"></textarea>
                                            </div>
                                            <p class="err-tip"></p>
                                            <div class="userCtrl clearfix">
                                                <!-- <div class="verify-code"></div> -->
                                                <div class="captcha-verify-box js-reply-verify-box hide"></div>
                                                <div class="do-reply-btn" data-answer-id="231714" data-ques-uid="2143740">回复</div>
                                            </div>
                                        </div><!--.release-reply-con end-->
                                    </div><!--.reply-con end-->
                                </dd>
                            </div>
                            <%--<div class="ques-answer ques-new-answer clearfix" style="background-color:#eee;" >--%>
                                <%--<dt>--%>
                                    <%--<div class="user-pic l">--%>
                                        <%--<a href="/u/1082966/bbs" target="_blank">--%>
                                            <%--<img width="40" height="40" alt="?" src="//img3.mukewang.com/5458472300015f4702200220-100-100.jpg">--%>
                                        <%--</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="detail-r">--%>
                                        <%--<a class="detail-name" href="/u/1082966/bbs" target="_blank">此昵称已被占用</a>--%>



                                    <%--</div>--%>

                                    <%--<a href="javascript:void(0)" aria-expanded="false" aria-controls="accordion1" class="accordion-title accordionTitle js-accordionTrigger">First Accordion heading</a>--%>
                                <%--</dt>--%>
                                <%--<dd class="accordion-content accordionItem is-collapsed ddheight" id="accordion1" aria-hidden="true" style="height:500px !important;z-index:100">--%>
                                    <%--<div class="reply-con" style="display:block; overflow:scroll;min-height:300px; height:500px">--%>
                                        <%--<ul class="reply-list" style="display:block; min-height:300px; overflow:auto; height:auto">--%>

                                            <%--<li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/3797870/bbs" target="_blank"><img alt="夜鸽" src="//img1.mukewang.com/user/54584f850001c0bc02200220-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/3797870/bbs">夜鸽</a><span class="r floor">#2</span></div><div class="reply-content">不知道你们怎么看，反正我是觉得晚上的效率是高于白天的。</div><div class="reply-btn l" data-uid="3797870" data-username="夜鸽">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="3797870" data-type="3" data-id="44581">举报</a><span class="time r">2017-03-12 03:38:36</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2910275/bbs" target="_blank"><img alt="weibo_杉素素_0" src="//img.mukewang.com/user/56c2db140001fa2001800180-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2910275/bbs">weibo_杉素素_0</a><span class="r floor">#3</span></div><div class="reply-content">其实熬夜和个人的修为成正比例，往往越发熟练的家伙是不会折磨自己到深夜的</div><div class="reply-btn l" data-uid="2910275" data-username="weibo_杉素素_0">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2910275" data-type="3" data-id="44658">举报</a><span class="time r">2017-03-12 21:06:17</span></li>--%>

                                            <%--<li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li>--%>

                                        <%--</ul><!--.reply-list end-->--%>
                                        <%--<div class="release-reply-con clearfix">--%>
                                            <%--<div class="user-pic ">--%>
                                                <%--<a href="/u/4261959/bbs" target="_blank">--%>
                                                    <%--<img width="40" height="40" alt="?" src="//img.mukewang.com/58e05b48000124ba01000100-100-100.jpg">--%>
                                                <%--</a>--%>
                                            <%--</div>--%>
                                            <%--<!--.user-pic end-->--%>


                                            <%--<div class="textarea-con">--%>
                                                <%--<textarea name="release-reply" id="release-reply" placeholder="写下你的回复"></textarea>--%>
                                            <%--</div>--%>
                                            <%--<p class="err-tip"></p>--%>
                                            <%--<div class="userCtrl clearfix">--%>
                                                <%--<!-- <div class="verify-code"></div> -->--%>
                                                <%--<div class="captcha-verify-box js-reply-verify-box hide"></div>--%>
                                                <%--<div class="do-reply-btn" data-answer-id="231714" data-ques-uid="2143740">回复</div>--%>
                                            <%--</div>--%>
                                        <%--</div><!--.release-reply-con end-->--%>
                                    <%--</div><!--.reply-con end-->--%>
                                <%--</dd>--%>
                            <%--</div>--%>
                        </dl>
                    </div>

                </div>

                </c:otherwise>
            </c:choose>
            <div class="qa-comment-page">

            </div>
            <%--<div class="page">--%>
                <%--<a href="${pageContext.request.contextPath}/user/response.action?curPage=1">首页</a>--%>
                <%--<span class="disabled_page">--%>
                            <%--<c:if test="${pageInfo.hasPreviousPage}">--%>
                                    <%--<a href="${pageContext.request.contextPath}/user/response.action?curPage=${pageInfo.pageNum-1}" aria-label="Previous">--%>
                                        <%--<span aria-hidden="true">上一页</span>--%>
                                    <%--</a>--%>
                            <%--</c:if>--%>
                        <%--</span>--%>

                <%--<c:forEach items="${pageInfo.navigatepageNums}" var="page_num">--%>
                    <%--<c:if test="${page_num == pageInfo.pageNum}">--%>
                        <%--<a class="active text-page-tag" href="javascript:void(0)">${page_num}</a>--%>
                    <%--</c:if>--%>
                    <%--<c:if test="${page_num != pageInfo.pageNum}">--%>
                        <%--<a class="text-page-tag"  href="${pageContext.request.contextPath}/user/response.action?curPage=${page_num}">${page_num}</a>--%>
                    <%--</c:if>--%>
                <%--</c:forEach>--%>
                <%--<c:choose>--%>
                    <%--<c:when test="${pageInfo.hasNextPage}">--%>
                        <%--<a href="${pageContext.request.contextPath}/user/response.action?curPage=${pageInfo.pageNum+1}" aria-label="Next">--%>
                            <%--<span aria-hidden="true">下一页</span>--%>
                        <%--</a>--%>
                    <%--</c:when>--%>
                <%--</c:choose>--%>
                <%--<a href="${pageContext.request.contextPath}/user/response.action?curPage=${pageInfo.pages}">尾页</a>--%>
            <%--</div>--%>

        </div>

        <div class="wenda-slider r">
            <%--<div class="quiz"><a class="js-quiz" href="${pageContext.request.contextPath }/user/seditor.action">我要提问</a></div>--%>
            <!-- 相关问题 -->
            <div class="panel about-ques">
                <div class="panel-heading">
                    <h2 class="panel-title">相关问题</h2>
                </div>
                <div class="panel-body clearfix">
                    <c:forEach var="questionTag" items="${questionTag}">
                        <div class="mkhotlist padtop">
                            <a class="relwenda" href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">${questionTag.questionContent}</a>
                            <i class="answer-num">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览量&nbsp;&nbsp;&nbsp;${questionTag.lookNum}</i>
                        </div>
                    </c:forEach>
                    <div class="mkhotlist ">
                        <a class="relwenda" href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">failed to load responce data</a><i class="answer-num">2 回答</i>
                    </div>
                    <div class="mkhotlist ">
                        <a class="relwenda" href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">ajax运用</a><i class="answer-num">3 回答</i>
                    </div>
                    <div class="mkhotlist ">
                        <a class="relwenda" href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">这是什么错误，我在G盘中已经建立了ul.txt文件</a><i class="answer-num">5 回答</i>
                    </div>
                    <div class="mkhotlist bordbottom">
                        <a class="relwenda" href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">代码找不到哪里有错啊：：：：</a><i class="answer-num">9 回答</i>
                    </div>
                </div>
            </div>
            <!-- 广告 -->
            <div class="advertisement">
                <a href="" target="_blank" data-ast="yuanwendetailright_1_1055">
                    <img title="杂志" src="static/user/talk/image/1.jpg">
                </a>
            </div><!--.advertisement end-->

            <!--最新问题-->
            <div class="panel about-ques">
                <div class="panel-heading">
                    <h2 class="panel-title">最新问题</h2>
                </div>
                <div class="panel-body clearfix">
                    <c:forEach var="questionNew" items="${questionNew}">
                        <div class="mkhotlist padtop">
                            <a class="relwenda" href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">${questionNew.questionContent}</a>
                            <i class="answer-num"><a href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg">我要回答</a></i>
                        </div>
                    </c:forEach>
                    <div class="mkhotlist ">
                        <a class="relwenda" href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">failed to load responce data</a>
                        <i class="answer-num">2 回答</i>
                    </div>
                    <div class="mkhotlist ">
                        <a class="relwenda" href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">ajax运用</a>
                        <i class="answer-num">3 回答</i>
                    </div>
                    <div class="mkhotlist ">
                        <a class="relwenda" href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">这是什么错误，我在G盘中已经建立了ul.txt文件</a>
                        <i class="answer-num">5 回答</i>
                    </div>
                    <div class="mkhotlist bordbottom">
                        <a class="relwenda" href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">代码找不到哪里有错啊：：：：</a>
                        <i class="answer-num">9 回答</i>
                    </div>
                </div>
            </div>

            <!--最新问题 end-->
        </div>

    </div>

    <div id="reply-box" style="display:none;">
        <div class="js-qa-reply-ibox qa-reply-ibox clearfix">
            <div class="qa-reply-iavator l">
                <a title="慕粉1822198314" href="/myclub/otherquestion?uid=4261959">
                    <img width="40" height="40" src="//img1.mukewang.com/user/58e05b48000124ba01000100-40-40.jpg">
                </a>
            </div>
            <div class="qa-reply-iwrap">
                <div class="qa-reply-iarea">
                    <textarea class="js-reply-ipt ipt" maxlength="2000" placeholder="写下你的评论..."></textarea>
                </div>
                <div class="qa-reply-ifoot clearfix">
                    <div class="qa-reply-footright r">
                        <div class="captcha-verify-box js-reply-verify-box hide"></div>
                        <span class="qa-tips"></span>
                        <button class="btn-normal btn-mini js-ipt-cancel">取消</button>
                        <button class="btn-green btn-mini  js-ipt-submit">提交</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="pop-tips-layer"></div>
    <div class="tipoff-block js-tipoff-block"></div>
    <div class="tipoff-box js-tipoff-box">
        <div class="tipoff-top-box clearfix">
            <p class="l tipoff-title">举报</p>
            <span class="r tipoff-close-btn icon-close2 js-tipoff-close"></span>
        </div>
        <div class="tipoff-type-box js-tipoff-typebox clearfix">
            <div class="tipoff-loading">
                <div class="bounce1"></div>
                <div class="bounce2"></div>
                <div class="bounce3"></div>
            </div>
        </div>
        <div class="tipoff-content">
            <textarea name="tipoff-content" class="tipoff-desc js-tipoff-desc" placeholder="写下举报理由"></textarea>
            <div class="tipoff-text"><span class="js-tipoff-text">0</span>/150</div>
        </div>
        <div class="tipoff-btn-box clearfix">
            <div class="r tipoff-submit-btn js-tipoff-submit" data-tipofftype="">提交</div>
            <div class="r tipoff-cancel-btn js-tipoff-close">取消</div>
        </div>
    </div>

</div>


<%@ include file="../footer.jsp" %>

<script>

//异步刷新回复

function addreply() {
var replyquestionId=$("input[name='replyquestionId']").val();
    var bhfusername=$("input[name='bhfusername']").val();
    var hreplyReplyQuesId=$("input[name='hreplyReplyQuesId']").val();
    var replyReplyQuesContent=$("script[name='replyReplyQuesContent']").val();
    var datas = {"replyquestionId": replyquestionId,"bhfusername":bhfusername,"hreplyReplyQuesId":hreplyReplyQuesId,"replyReplyQuesContent":replyReplyQuesContent};
//    alert(datas.replyquestionId);
    $.ajax({
        type: 'POST',
        url: 'user/addResponse.action',
        dataType: 'json', //表示返回值的数据类型
        contentType: 'application/json;charset=UTF-8', //内容类型
        traditional: true, //使json格式的字符串不会被转码
        data: JSON.stringify(datas),
        success: function (data) {
            var str = '';
            str += '<li class="clearfix">' +
                ' <div class="user-pic"><a href="" target="_blank">'+ '<img src="'+ data.user.userImgurl +'"/>'
                + '</a></div><div class="user-info clearfix">' +
                '<a class="from-user" href="">' + data.user.username + '</a>' +
                '<span class="from-user" style="font-size: 12px; color: #93999f">回复：</span>';
            if(data.hreplyReplyQuesId==0) {
                str+='<a class="from-user" href="">'+data.user.username+'</a>';
            }
            else {
                str+='<a class="from-user" href="">'+data.bhfusername+'</a>';
            }
            str+= '<div class="reply-content">'+data.replyReplyQuesContent+'</div>' +
                '<div class="reply-btn l" onclick="aa(this);return true;" data-uid="2856055" data-username="11知足11">回复</div>'+
                '<a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a>'+
                ' <span class="time r">' + data.replyReplyQuesDate +
                '</span>' +'<div class="ueditor" style="margin-top: 50px">'+
                '<input name="replyquestionId" value="' + data.replyquestionId +
                '" type="hidden">'+'<input name="bhfusername" value="'+data.user.username +'" type="hidden">'+
                '<input name="hreplyReplyQuesId" value="'+data.replyReplyQuesId +'" type="hidden">'+
                '<div class="do-reply-btn" data-answer-id="231714" data-ques-uid="2143740" style="margin-top: 10px;float: right;width: 40px;height: 20px;font-size: 14px;color: #fff;line-height: 20px;text-align: center;cursor: pointer;background-color: #f01400;"><button type="submit">回复</button></div>'+
                '</li>';
            $("#haha").children().children().append(str);

        }
    });
}



</script>
<script type='text/javascript'>
    (function(m, ei, q, i, a, j, s) {
        m[i] = m[i] || function() {
            (m[i].a = m[i].a || []).push(arguments)
        };
        j = ei.createElement(q),
            s = ei.getElementsByTagName(q)[0];
        j.async = true;
        j.charset = 'UTF-8';
        j.src = 'https://static.meiqia.com/dist/meiqia.js?_=t';
        s.parentNode.insertBefore(j, s);
    })(window, document, 'script', '_MEIQIA');
    _MEIQIA('entId', 108609);
</script>


</body>
</html>
