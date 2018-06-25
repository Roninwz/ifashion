<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/10
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>

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
    <title>问题</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <link rel="stylesheet" href="static/user/talk/css/3.css">
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

    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>
    <script type="text/javascript" src="static/user/talk/js/1.js"></script>
    <script type="text/javascript" src="static/user/talk/js/2.js"></script>
    <script type="text/javascript" src="static/user/talk/js/PopDrag.js"></script>
    <script type="text/javascript" src="static/ueditor/ueditor.config.js" charset="UTF-8"></script>
    <script type="text/javascript" src="static/ueditor/ueditor.all.js" charset="UTF-8"></script>
    <script type="text/javascript" src="static/ueditor/lang/zh-cn/zh-cn.js"></script>

    <script>
        var ue= UE.getEditor("container",{
            initialFrameWidth : '100%',//宽度
            initialFrameHeight: 100,//高度
            toolbars: [[
                'undo', 'redo', 'bold', 'italic', 'underline', 'formatmatch', 'autotypeset', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall']
            ]});

        var ue1 = UE.getContent();
        //对编辑器的操作最好在编辑器ready之后再做
        ue1.ready(function() {
            //设置编辑器的内容
            //ue1.setContent('hello');
            //获取html内容，返回: <p>hello</p>
            var html = ue1.getContent();
            //获取纯文本内容，返回: hello
            var txt = ue1.getContentTxt();
        });
        //    alert(ue);
    </script>

<script>
    $(function() {
        $(".ueditor").hide(); //初始化的时候第二个下拉列表隐藏
        $(".ueditor").css("display", "none");

    });

    function  aa(obj) {
    //alert($(obj).next().find("div"));
    $(obj).parent().next().show();
    //            $(obj).find("div").show();
    /*$(obj.parentNode.next().id).show();*/
    }
    function aaaaa(obj) {
        $(obj).hide();
    }
</script>
    <script>
        function wait(obj) {
            $(obj).parent().children().removeClass("active");
            $(obj).addClass("active");

            $.ajax({
                type:"post",
                url:'${pageContext.request.contextPath }/user/waitAnswer.action',
                dataType:'json',
                success:function (data) {
                    alert(data);
                    var wait1="";
                    for(var i=0;i<data.length;i++){
                        wait1+= "<div id='issue-list' class='ques-answer no-answer'>"
                            +"<div class='tag-img'>" + "<a href='' target='_blank'>"
                            + "<img  src='"+data[i].quserImgurl+"'>" + "</a>"
                            + "</div>"
                            + "<div class='from-tag'>来自"
                            + "<a href='' target='_blank'>" +data[i].quserName+"</a>"
                            + "<a style='color:#999'>"+new Date(parseInt(data[i].questionDate)).toLocaleString()+"</a>"
                            + "</div>"
                            + "<div class='ques-con'>"
                            + "<a class='ques-con-content' href='' target='_blank'>"+data[i].questionContent+"</a>"
                            + "</div>"
                            + "<div class='info-bar clearfix'>"
                            + " <a class='to-answer' href=''>撰写答案</a>"
                            + "<p class='integral-info'>"
                            + "<a href='' target='_blank'>回答问题最高可获<span>2积分</span>哦！</a></p>"
                            + "<a class='answer-num' href=''>1个回答</a>"
                            + "<a class='follow' href='javascript:;' data-ques-id='390842'><i class='heart'>关注</i></a>"
                            + "</div>" + "</div>";

                    }
                    alert(wait1);
                    $("#issue-list").html(wait1);
                }
            });
        }

    </script>



</head>
<body style="background-color: white">
<c:set var="user" value="${sessionScope.user}"/>

<div id="main">


    <div class="wenda clearfix">

        <div class="js-layout-change">
            <div class="l wenda-main">
                <div class="wd-top-slogan">
                    <span>时尚人士自己的问答社区</span>
                    <a class="js-quiz" href="javascript:void(0);" onclick="aa(this);return true;">我要提问</a>
                </div>

                <div class="ueditor" style="" onclick="aaaaa(this);return true;">
                    <form action="${pageContext.request.contextPath }/user/addQuestion.action" method="post">
                        <script id="container" name="content" type="text/plain">

                        </script>
                        <button type="submit" style="margin-top: 10px;float: right;width: 60px;height: 40px;font-size: 14px;color: #fff;line-height: 40px;text-align: center;cursor: pointer;background-color: #F93;">提交</button>
                    </form>
                </div>

                <div class="nav">
                    <a href="${pageContext.request.contextPath }/user/forum.action">推荐</a>
                    <a href="javascript:void(0)" onclick="wait(this)">等待回答</a>
                    <a href="${pageContext.request.contextPath }/user/topic.action">话题</a>
                    <a class="active" href="${pageContext.request.contextPath }/user/question.action">问题</a>
                    <div class="">

                        <div class="switch js-switch">
                            <div class="fill">
                                <div class="outer"></div>
                            </div>
                            <div class="inner"></div>
                        </div>
                    </div>

                </div><!--.nav end-->
                <!--左侧列表内容-->
                <div class="wenda-list">
                    <c:forEach var="questionReplies" items="${questionReplies}">
                      <c:choose>
                          <c:when test="${questionReplies.replyContent eq null}">
                              <div class="ques-answer no-answer">
                                  <div class="tag-img">
                                      <a href="" target="_blank">
                                          <img title="" src="${questionReplies.quserImgurl}">
                                      </a>
                                  </div><!--.tag-img end-->
                                  <div class="from-tag">        来自
                                      <a href="" target="_blank">${questionReplies.quserName}</a>
                                      <a style="color:#999"><fmt:formatDate value="${questionReplies.questionDate}"></fmt:formatDate> </a>
                                  </div><!--.from-tag end-->
                                  <div class="ques-con">
                                      <a title="${questionReplies.questionContent}" class="ques-con-content" href="${pageContext.request.contextPath }/user/response.action?questionId=${questionReplies.questionId}&questionContent=${questionReplies.questionContent}&qusername=${questionReplies.quserName}&quserImgurl=${questionReplies.quserImgurl}" target="_blank">${questionReplies.questionContent}</a>
                                  </div><!--.ques-con end-->
                                  <div class="info-bar clearfix">
                                      <a class="to-answer" href="/wenda/detail/390833">撰写答案</a>
                                      <p class="integral-info"><a href="/about/faq?t=3" target="_blank">回答问题最高可获<span>2积分</span>哦！</a></p>
                                      <a class="follow" href="" data-ques-id="390833"><i class="heart">关注</i></a>
                                  </div><!--.info-bar end-->
                              </div><!--.ques-answer end-->
                          </c:when>
                          <c:otherwise>
                              <div class="ques-answer">
                                  <div class="tag-img">
                                      <a href="" target="_blank">
                                          <img title="" src="${questionReplies.quserImgurl}">
                                      </a>
                                  </div><!--.tag-img end-->
                                  <div class="from-tag">        来自
                                      <a href="" target="_blank">${questionReplies.quserName}</a>
                                      <a style="color:#999"><fmt:formatDate value="${questionReplies.questionDate}"></fmt:formatDate></a>
                                  </div><!--.from-tag end-->
                                  <div class="ques-con">
                                      <a title="${questionReplies.questionContent}" class="ques-con-content" href="${pageContext.request.contextPath }/user/response.action?questionId=${questionReplies.questionId}&questionContent=${questionReplies.questionContent}&qusername=${questionReplies.quserName}&quserImgurl=${questionReplies.quserImgurl}" target="_blank">${questionReplies.questionContent}</a>

                                  </div>
                                  <div class="answer-con first" id="answer-con" data-answer-id="283258">
                                      <div class="user">

                                          <a href="" target="_blank">${questionReplies.ruserName}</a><span class="signature">回答：</span>
                                      </div>
                                      <div class="answer-content">${questionReplies.replyContent}</div>
                                      <div class="answer-content-all rich-text aimgPreview"><p>${questionReplies.replyContent}</p></div>
                                      <div class="ctrl-bar clearfix">
                                          <span class="agree-with " data-ques-id="390820" data-answer-id="283258" data-hasop=""><b>已帮助用户</b><em>1</em></span>
                                          <span class="oppose " data-ques-id="390820" data-answer-id="283258" data-hasop=""><em>${questionReplies.againstNum}人反对</em></span>

                                      </div><!--.ctrl-bar end-->
                                  </div><!--.answer-con end-->
                              </div><!--.ques-answer end-->
                          </c:otherwise>
                      </c:choose>

                    </c:forEach>


                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/17" target="_blank">
                                <img title="JavaScript" src="//img.mukewang.com/59e96f340001faac02400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/17" target="_blank">JavaScript</a>
                            <a style="color:#999">2018-04-28</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="HTML5 为什么只需要写 <!DOCTYPE HTML>？" class="ques-con-content" href="/wenda/detail/390820" target="_blank">HTML5 为什么只需要写 &lt;!DOCTYPE HTML&gt;？</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="283258">
                            <div class="user">

                                <a href="/u/3064308/bbs" target="_blank">星晨正在努力</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">管这么多，用就是了呗。有一个是可以确定的，写的&lt;!DOCTYPE HTML&gt; &nbsp;以前低版本的标签，也都可以用，说是说有一些被会被淘汰，但是依然是有用的，如果你想什么新属性新特性都用，那就用就好了，以前的很老的标签也是支持的</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>管这么多，用就是了呗。有一个是可以确定的，写的&lt;!DOCTYPE HTML&gt; &nbsp;以前低版本的标签，也都可以用，说是说有一些被会被淘汰，但是依然是有用的，如果你想什么新属性新特性都用，那就用就好了，以前的很老的标签也是支持的</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="390820" data-answer-id="283258" data-hasop=""><b>已帮助用户</b><em>1</em></span>
                                <span class="oppose " data-ques-id="390820" data-answer-id="283258" data-hasop=""><em>0人反对</em></span>

                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">

                            </ul><!--.reply-list end-->
                            <!--<div class="more-reply">点击展开后面<span>2</span>条评论</div>-->
                            <div class="release-reply-con clearfix">
                                <div class="user-pic">
                                    <a href="/myclub/myquestion" target="_blank">
                                        <img alt="慕粉1822198314" src="//img1.mukewang.com/58e05b48000124ba01000100-100-100.jpg">
                                    </a>
                                </div><!--.user-pic end-->
                                <div class="user-name">
                                    <a href="/myclub/myquestion" target="_blank">慕粉1822198314</a>
                                </div>
                                <div class="textarea-con">
                                    <textarea placeholder="写下你的回复"></textarea>
                                </div>
                                <p class="err-tip"></p>
                                <div class="userCtrl clearfix">
                                    <div class="verify-code"></div>
                                    <div class="do-reply-btn" data-answer-id="283258" data-ques-uid="6457919">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer no-answer">
                        <div class="tag-img">
                            <a href="/wenda/28" target="_blank">
                                <img title="C" src="//img.mukewang.com/59e96e980001d29602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/28" target="_blank">C</a>
                            <a style="color:#999">2018-04-28</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="&amp;#31532;&amp;#19968;&amp;#27425;&amp;#32534;&amp;#31243;&amp;#65292;&amp;#22312;&amp;#25353;&amp;#29031;&amp;#32593;&amp;#19978;&amp;#30340;&amp;#22270;&amp;#29255;&amp;#24324;&amp;#30340;&amp;#21487;&amp;#26159;&amp;#32534;&amp;#35793;&amp;#30340;&amp;#26102;&amp;#20505;&amp;#21364;&amp;#26377;..." class="ques-con-content" href="/wenda/detail/390842" target="_blank">新手问题求解决</a>
                        </div><!--.ques-con end-->
                        <div class="info-bar clearfix">
                            <a class="to-answer" href="/wenda/detail/390842">撰写答案</a>
                            <p class="integral-info"><a href="/about/faq?t=3" target="_blank">回答问题最高可获<span>2积分</span>哦！</a></p>
                            <a class="answer-num" href="/wenda/detail/390842">1个回答</a>
                            <a class="follow" href="javascript:;" data-ques-id="390842"><i class="heart">关注</i></a>
                        </div><!--.info-bar end-->
                    </div><!--.ques-answer end-->
                    <%--<div class="ques-answer">--%>
                        <%--<div class="tag-img">--%>
                            <%--<a href="/wenda/22" target="_blank">--%>
                                <%--<img title="AngularJS" src="//img.mukewang.com/59e96ed90001e4e702400240.jpg">--%>
                            <%--</a>--%>
                        <%--</div><!--.tag-img end-->--%>
                        <%--<div class="from-tag">        来自--%>
                            <%--<a href="/wenda/22" target="_blank">AngularJS</a>--%>
                            <%--<a style="color:#999">2018-04-28</a>--%>
                        <%--</div><!--.from-tag end-->--%>
                        <%--<div class="ques-con">--%>
                            <%--<a title="&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;前端开发并不简单，哪怕对于初级甚至中级的前端开发者来说，即使他们有一定的JavaScript代码功底，如果单纯交代他们实现一个前端功能，他们可能也可以实现出来，但他们的实现风格要么乱七八糟，要么“随心所欲”。如果你对前端开发有兴趣或前端技术水平无法提升欢迎参与到这一期的话题活动，与技术嘉宾探讨前端JavaScript与框架开发同时你还将有机会获得嘉宾亲笔著作的前端图书哦！&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 那么好的学习机会，还不如赶紧来参与↓李刚，十余年软件开发从业者疯狂软件教育中心教学总..." class="ques-con-content" href="/wenda/detail/383123" target="_blank">【有奖问答】与大咖交流前端JS与框架开发，免费赢取前端图书（11.28-12.4）</a>--%>

                        <%--</div>--%>
                        <%--<div class="answer-con first" id="answer-con" data-answer-id="269840">--%>
                            <%--<div class="user">--%>

                                <%--<a href="/u/5787526/bbs" target="_blank">谢小波</a><span class="signature">回答：</span>--%>
                            <%--</div>--%>
                            <%--<div class="answer-content">我觉得不管学习哪门语言，到后面总还是要学习一下规范，程序员的素养必不可少啊！！</div>--%>
                            <%--<div class="answer-content-all rich-text aimgPreview"><p>我觉得不管学习哪门语言，到后面总还是要学习一下规范，程序员的素养必不可少啊！！</p></div>--%>
                            <%--<div class="ctrl-bar clearfix">--%>
                                <%--<span class="agree-with " data-ques-id="383123" data-answer-id="269840" data-hasop=""><b>已帮助用户</b><em>32</em></span>--%>
                                <%--<span class="oppose " data-ques-id="383123" data-answer-id="269840" data-hasop=""><em>4人反对</em></span>--%>
                            <%--</div><!--.ctrl-bar end-->--%>
                        <%--</div><!--.answer-con end-->--%>
                        <%--<div class="reply-con">--%>
                            <%--<div class="release-reply-con clearfix">--%>
                                <%--<div class="user-pic">--%>
                                    <%--<a href="/myclub/myquestion" target="_blank">--%>
                                        <%--<img alt="慕粉1822198314" src="//img1.mukewang.com/58e05b48000124ba01000100-100-100.jpg">--%>
                                    <%--</a>--%>
                                <%--</div><!--.user-pic end-->--%>
                                <%--<div class="user-name">--%>
                                    <%--<a href="/myclub/myquestion" target="_blank">慕粉1822198314</a>--%>
                                <%--</div>--%>
                                <%--<div class="textarea-con">--%>
                                    <%--<textarea placeholder="写下你的回复"></textarea>--%>
                                <%--</div>--%>
                                <%--<p class="err-tip"></p>--%>
                                <%--<div class="userCtrl clearfix">--%>
                                    <%--<div class="verify-code"></div>--%>
                                    <%--<div class="do-reply-btn" data-answer-id="269840" data-ques-uid="10000">回复</div>--%>
                                <%--</div>--%>
                            <%--</div><!--.release-reply-con end-->--%>
                        <%--</div><!--.reply-con end-->--%>
                    <%--</div><!--.ques-answer end-->--%>
                    <%--<div class="ques-answer">--%>
                        <%--<div class="tag-img">--%>
                            <%--<a href="/wenda/26" target="_blank">--%>
                                <%--<img title="前端工具" src="//img.mukewang.com/59e96eb100019d5902400240.jpg">--%>
                            <%--</a>--%>
                        <%--</div><!--.tag-img end-->--%>
                        <%--<div class="from-tag">        来自--%>
                            <%--<a href="/wenda/26" target="_blank">前端工具</a>--%>
                            <%--<a style="color:#999">2018-04-28</a>--%>
                        <%--</div><!--.from-tag end-->--%>
                        <%--<div class="ques-con">--%>
                            <%--<a title="还是很多用户忘记初心，近期检查到很多用户恶意刷分的行为，也已进行处罚~~同时欢迎其他用户来举报慕课积分体系全新上线后，慕女神收到部分用户的举报，说有人恶意进行刷积分行为，已经严重影响到竞技的公平性和其他用户的竞技体验。针对此问题，慕女神和团队迅速进行了排查，收集以及监控所有影响用户公平赚积分的行为（课程、猿问、手记、第三方分享），发现了该ID1949284的用户存在严重作弊行为→利用马甲在猿问自问自答，课程恶意刷积分，特此发出公告↓↓慕课网将对ID为1949284的用户进行如下处理：1、清除作弊数据记录；2、永久冻结他的马甲号希望大家能以此为鉴，不要忽略了来慕课网的初衷，积分只是我们学习的一个..." class="ques-con-content" href="/wenda/detail/320982" target="_blank">刷分零容忍！关于刷分用户的处罚公告</a>--%>

                        <%--</div>--%>
                        <%--<div class="answer-con first" id="answer-con" data-answer-id="173959">--%>
                            <%--<div class="user">--%>

                                <%--<a href="/u/112179/bbs" target="_blank">爱生活爱胖胖</a><span class="signature">回答：</span>--%>
                            <%--</div>--%>
                            <%--<div class="answer-content">&nbsp;学习使人进步，诚信使人发光！六星好评，支持慕课网！</div>--%>
                            <%--<div class="answer-content-all rich-text aimgPreview"><p>&nbsp;学习使人进步，诚信使人发光！六星好评，支持慕课网！</p></div>--%>
                            <%--<div class="ctrl-bar clearfix">--%>
                                <%--<span class="agree-with " data-ques-id="320982" data-answer-id="173959" data-hasop=""><b>已帮助用户</b><em>363</em></span>--%>
                                <%--<span class="oppose " data-ques-id="320982" data-answer-id="173959" data-hasop=""><em>15人反对</em></span>--%>
                            <%--</div><!--.ctrl-bar end-->--%>
                        <%--</div><!--.answer-con end-->--%>
                        <%--<div class="reply-con">--%>
                            <%--<div class="release-reply-con clearfix">--%>
                                <%--<div class="user-pic">--%>
                                    <%--<a href="/myclub/myquestion" target="_blank">--%>
                                        <%--<img alt="慕粉1822198314" src="//img1.mukewang.com/58e05b48000124ba01000100-100-100.jpg">--%>
                                    <%--</a>--%>
                                <%--</div><!--.user-pic end-->--%>
                                <%--<div class="user-name">--%>
                                    <%--<a href="/myclub/myquestion" target="_blank">慕粉1822198314</a>--%>
                                <%--</div>--%>
                                <%--<div class="textarea-con">--%>
                                    <%--<textarea placeholder="写下你的回复">写下你的回复</textarea>--%>
                                <%--</div>--%>
                                <%--<p class="err-tip"></p>--%>
                                <%--<div class="userCtrl clearfix">--%>
                                    <%--<div class="verify-code"></div>--%>
                                    <%--<div class="do-reply-btn" data-answer-id="173959" data-ques-uid="10000">回复</div>--%>
                                <%--</div>--%>
                            <%--</div><!--.release-reply-con end-->--%>
                        <%--</div><!--.reply-con end-->--%>
                    <%--</div><!--.ques-answer end-->--%>
                    <%--<div class="ques-answer">--%>
                        <%--<div class="tag-img">--%>
                            <%--<a href="/wenda/33" target="_blank">--%>
                                <%--<img title="Unity 3D" src="//img.mukewang.com/59e96e6300011c3502400240.jpg">--%>
                            <%--</a>--%>
                        <%--</div><!--.tag-img end-->--%>
                        <%--<div class="from-tag">        来自--%>
                            <%--<a href="/wenda/33" target="_blank">Unity 3D</a>--%>
                            <%--<a style="color:#999">2018-04-28</a>--%>
                        <%--</div><!--.from-tag end-->--%>
                        <%--<div class="ques-con">--%>
                            <%--<a title="提到国内最赚钱、最火爆的游戏公司，那肯定非我们壕一样的主T：腾讯游戏莫属。&nbsp;横版之王DNF、竞技之王LOL还有枪战CF等大型网络游戏，以及品种多样的社交游戏，让腾讯帝国迅速崛起！&nbsp;腾讯是如何洞察游戏市场，快速做出对策的呢？&nbsp;同时他们对游戏的研发和运营又有哪些独到的见解？&nbsp;【热辣暑期档】慕课网邀请到腾讯GAD游戏学院的专家们来到猿问，给对游戏感兴趣或者从事游戏开发的朋友们带来清凉一夏！！&nbsp;通过问答形式，分享游戏开发、游戏设计与动画和游戏运营等干货知识！&nbsp; &nbsp;邓立丰&nbsp;-&nbsp;腾讯GAD游戏学院导师（慕课网昵称：MobileGameSafeBook）在2010年加入腾讯公司，早期从事端游客户端的安全工作..." class="ques-con-content" href="/wenda/detail/321340" target="_blank">腾讯游戏大牛在线，有问题尽管来</a>--%>

                        <%--</div>--%>
                        <%--<div class="answer-con first" id="answer-con" data-answer-id="175008">--%>
                            <%--<div class="user">--%>

                                <%--<a href="/u/3051921/bbs" target="_blank">xiemioc</a><span class="signature">回答：</span>--%>
                            <%--</div>--%>
                            <%--<div class="answer-content">制作一个游戏的过程 &nbsp; 和需要的语言 &nbsp; &nbsp;具体说一下 &nbsp; &nbsp;@邓立丰@王睿杰@廖新洪</div>--%>
                            <%--<div class="answer-content-all rich-text aimgPreview"><p>制作一个游戏的过程 &nbsp; 和需要的语言 &nbsp; &nbsp;具体说一下 &nbsp; &nbsp;@邓立丰@王睿杰@廖新洪</p></div>--%>
                            <%--<div class="ctrl-bar clearfix">--%>
                                <%--<span class="agree-with " data-ques-id="321340" data-answer-id="175008" data-hasop=""><b>已帮助用户</b><em>166</em></span>--%>
                                <%--<span class="oppose " data-ques-id="321340" data-answer-id="175008" data-hasop=""><em>14人反对</em></span>--%>


                            <%--</div><!--.ctrl-bar end-->--%>
                        <%--</div><!--.answer-con end-->--%>
                        <%--<div class="reply-con">--%>
                            <%--<div class="release-reply-con clearfix">--%>
                                <%--<div class="user-pic">--%>
                                    <%--<a href="/myclub/myquestion" target="_blank">--%>
                                        <%--<img alt="慕粉1822198314" src="//img1.mukewang.com/58e05b48000124ba01000100-100-100.jpg">--%>
                                    <%--</a>--%>
                                <%--</div><!--.user-pic end-->--%>
                                <%--<div class="user-name">--%>
                                    <%--<a href="/myclub/myquestion" target="_blank">慕粉1822198314</a>--%>
                                <%--</div>--%>
                                <%--<div class="textarea-con">--%>
                                    <%--<textarea placeholder="写下你的回复"></textarea>--%>
                                <%--</div>--%>
                                <%--<p class="err-tip"></p>--%>
                                <%--<div class="userCtrl clearfix">--%>
                                    <%--<div class="verify-code"></div>--%>
                                    <%--<div class="do-reply-btn" data-answer-id="175008" data-ques-uid="10000">回复</div>--%>
                                <%--</div>--%>
                            <%--</div><!--.release-reply-con end-->--%>
                        <%--</div><!--.reply-con end-->--%>
                    <%--</div><!--.ques-answer end-->--%>
                    <%--<div class="ques-answer">--%>
                        <%--<div class="tag-img">--%>
                            <%--<a href="/wenda/30" target="_blank">--%>
                                <%--<img title="C++" src="//img.mukewang.com/59e96e7800018e5502400240.jpg">--%>
                            <%--</a>--%>
                        <%--</div><!--.tag-img end-->--%>
                        <%--<div class="from-tag">        来自--%>
                            <%--<a href="/wenda/30" target="_blank">C++</a>--%>
                            <%--<a style="color:#999">2018-04-28</a>--%>
                        <%--</div><!--.from-tag end-->--%>
                        <%--<div class="ques-con">--%>
                            <%--<a title="还是年轻时好，熬夜第二天也不会难受。" class="ques-con-content" href="/wenda/detail/344091" target="_blank">各位猿或者媛，一般几点睡啊。有时忍住头痛看java到很晚，第二天就头痛一整天</a>--%>

                        <%--</div>--%>
                        <%--<div class="answer-con first" id="answer-con" data-answer-id="231626">--%>
                            <%--<div class="user">--%>

                                <%--<span class="had-solve">已采纳</span>--%>
                                <%--<a href="/u/1953317/bbs" target="_blank">肖申克de救赎</a><span class="signature">回答：</span>--%>
                            <%--</div>--%>
                            <%--<div class="answer-content">没有什么事情是需要熬夜完成的</div>--%>
                            <%--<div class="answer-content-all rich-text aimgPreview"><p><strong><span style="text-decoration:underline;">没有什么事情是需要熬夜完成的</span></strong><br></p></div>--%>
                            <%--<div class="ctrl-bar clearfix">--%>
                                <%--<span class="agree-with " data-ques-id="344091" data-answer-id="231626" data-hasop=""><b>已帮助用户</b><em>619</em></span>--%>
                                <%--<span class="oppose " data-ques-id="344091" data-answer-id="231626" data-hasop=""><em>29人反对</em></span>--%>


                            <%--</div><!--.ctrl-bar end-->--%>
                        <%--</div><!--.answer-con end-->--%>
                        <%--<div class="reply-con">--%>
                            <%--<div class="release-reply-con clearfix">--%>
                                <%--<div class="user-pic">--%>
                                    <%--<a href="/myclub/myquestion" target="_blank">--%>
                                        <%--<img alt="慕粉1822198314" src="//img1.mukewang.com/58e05b48000124ba01000100-100-100.jpg">--%>
                                    <%--</a>--%>
                                <%--</div><!--.user-pic end-->--%>
                                <%--<div class="user-name">--%>
                                    <%--<a href="/myclub/myquestion" target="_blank">慕粉1822198314</a>--%>
                                <%--</div>--%>
                                <%--<div class="textarea-con">--%>
                                    <%--<textarea placeholder="写下你的回复"></textarea>--%>
                                <%--</div>--%>
                                <%--<p class="err-tip"></p>--%>
                                <%--<div class="userCtrl clearfix">--%>
                                    <%--<div class="verify-code"></div>--%>
                                    <%--<div class="do-reply-btn" data-answer-id="231626" data-ques-uid="2143740">回复</div>--%>
                                <%--</div>--%>
                            <%--</div><!--.release-reply-con end-->--%>
                        <%--</div><!--.reply-con end-->--%>
                    <%--</div><!--.ques-answer end-->--%>



                    <div class="page">
                        <a href="${pageContext.request.contextPath}/user/question.action?curPage=1">首页</a>
                        <span class="disabled_page">
                            <c:if test="${pageInfo.hasPreviousPage}">
                                    <a href="${pageContext.request.contextPath}/user/question.action?curPage=${pageInfo.pageNum-1}" aria-label="Previous">
                                        <span aria-hidden="true">上一页</span>
                                    </a>
                            </c:if>
                        </span>

                        <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                            <c:if test="${page_num == pageInfo.pageNum}">
                                <a class="active text-page-tag" href="javascript:void(0)">${page_num}</a>
                            </c:if>
                            <c:if test="${page_num != pageInfo.pageNum}">
                                <a class="text-page-tag"  href="${pageContext.request.contextPath}/user/question.action?curPage=${page_num}">${page_num}</a>
                            </c:if>
                        </c:forEach>
                        <c:choose>
                            <c:when test="${pageInfo.hasNextPage}">
                                <a href="${pageContext.request.contextPath}/user/question.action?curPage=${pageInfo.pageNum+1}" aria-label="Next">
                                    <span aria-hidden="true">下一页</span>
                                </a>
                            </c:when>
                        </c:choose>
                        <a href="${pageContext.request.contextPath}/user/question.action?curPage=${pageInfo.pages}">尾页</a>
                    </div>


                </div>
            </div>
            <div class="r wenda-slider">

            <c:if test="${not empty user}">
                <div class="user-about">
                    <div class="user-info">
                        <div class="user-pic">
                            <a href="/u/4261959/bbs">
                                <img alt="慕粉1822198314" src="//img1.mukewang.com/58e05b48000124ba01000100-100-100.jpg">
                            </a>
                        </div>
                        <div class="user-name">
                            <a href="/u/4261959/bbs">慕粉1822198314</a>
                        </div>
                        <div class="integral-info clearifx">
                            <a class="integral" href="/u/4261959/credit">积分：1</a>
                            <a class="integral-mall" href="/mall/index">积分商城</a>
                        </div>
                    </div><!--.user-info end-->
                    <div class="user-action">
                        <span class="ques"><a href="/u/4261959/bbs">提问</a><!-- <i></i>--></span>
                        <span class="reply"><a href="/u/4261959/bbs?sort=reply">回答</a></span>
                        <span class="follow"><a href="/u/4261959/bbs?sort=follow">关注</a></span>
                    </div><!--.user-action end-->
                </div><!--.user-about end-->

                <!--.my-follow-class登录后可见-->
                <div class="my-follow-class">
                    <h3>我关注的分类 <span class="js-open" id="btn">+</span></h3>
                    <div class="tag-box clearfix" id="tag-box">
                        <a href="">逛街</a>
                        <a href="">连体裤</a>
                        <a href="">上学</a>
                    </div><!--.tag-box end-->
                </div><!--.my-follow-class end-->
            </c:if>
                <div class="hot-ques">
                    <h3 class="title">热门问题</h3>
                    <ul>
                        <c:forEach var="hotQuestion" items="${hotQuestion}">
                        <li>
                            <p class="content">
                                <a href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">${hotQuestion.questionContent} </a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="javascript:void (0)" target="_blank">${hotQuestion.lookNum} 浏览</a>
                                <a class="follow-num" href="javascript:void (0)" target="_blank">${hotQuestion.attentionNum} 关注</a>
                            </div>
                        </li>
                        </c:forEach>
                        <li>
                            <p class="content"><a href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">一个网站的前端和后台是怎么连接的，后台管理页面怎么做，怎么连接数据库，他们到底是什么...</a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="javascript:void (0)" target="_blank">1 浏览</a>
                                <a class="follow-num" href="javascript:void (0)" target="_blank">0 关注</a>
                            </div>
                        </li>
                        <li>
                            <p class="content"><a href="${pageContext.request.contextPath }/user/response.action?questionId=1&questionContent=小白鞋搭配什么裤子&qusername=wz&quserImgurl=static/user/online/images/desi_p1.jpg" target="_blank">定制网站需要掌握哪些知识</a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="javascript:void (0)" target="_blank">1 浏览</a>
                                <a class="follow-num" href="javascript:void (0)" target="_blank">0 关注</a>
                            </div>
                        </li>
                    </ul><!--ul end-->
                </div><!--.hot-ques end-->

                <div class="leifeng-sort" js-tab="2">
                    <h3 class="title clearfix">
                        <ul id='tab'>
                            <span>回答雷锋榜</span>
                            <li>
                                <a><span class="leifeng-tab js-leifeng-tab" data-type="week">一周</span></a></li>
                            <li class="active"><a><span class="leifeng-tab js-leifeng-tab" data-type="day">今日</span></a></li>
                        </ul>
                    </h3>

                    <div id='content'>

                        <div class="tabdiv leifeng-tab-box leifeng-day js-leifeng-tab-box" data-type="day" style="display:none;">
                            <ul class="leifeng-tab-box-min">

                                <c:forEach var="ud" items="${ud}" varStatus="status">
                                    <li>
                                        <c:choose>
                                            <c:when test="${status.count=='1'}">
                                                <div class="ranking first">${status.count}</div>
                                            </c:when>
                                            <c:when test="${status.count=='2'}">
                                                <div class="ranking second">${status.count}</div>
                                            </c:when>
                                            <c:when test="${status.count=='3'}">
                                                <div class="ranking third">${status.count}</div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="ranking ">${status.count}</div>
                                            </c:otherwise>
                                        </c:choose>
                                        <div class="user-pic">
                                            <a href="" target="_blank">
                                                <img title="${ud.username}" src="static/user/talk/image/58_avatar_middle.jpg">
                                            </a>
                                        </div>
                                        <!--.user-pic end-->
                                        <div class="user-name">
                                            <a href="" target="_blank">${ud.username}</a>
                                        </div>
                                        <!--.user-name end-->
                                        <div class="user-info clearfix">
                                            <span class="role">${ud.rankName}
                                            </span>
                                            <span class="answer-num">${ud.count}回答</span>
                                        </div>
                                        <!--.user-info end-->
                                    </li>
                                </c:forEach>
                                <li>
                                    <div class="ranking second">2</div>
                                    <div class="user-pic">
                                        <a href="/u/6777831/bbs" target="_blank">
                                            <img title="慕沐4049225" src="//img4.mukewang.com/54586425000103f602200220-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/6777831/bbs" target="_blank">慕沐4049225</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role"></span>
                                        <span class="answer-num">4回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking third">3</div>
                                    <div class="user-pic">
                                        <a href="/u/2006996/bbs" target="_blank">
                                            <img title="损失函数" src="//img2.mukewang.com/591fadcb000104ef05390959-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/2006996/bbs" target="_blank">损失函数</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">全栈工程师</span>
                                        <span class="answer-num">3回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">4</div>
                                    <div class="user-pic">
                                        <a href="/u/3001934/bbs" target="_blank">
                                            <img title="Arabic男孩纸" src="//img4.mukewang.com/56dd36c200015aac01500150-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/3001934/bbs" target="_blank">Arabic男孩纸</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role"></span>
                                        <span class="answer-num">2回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">5</div>
                                    <div class="user-pic">
                                        <a href="/u/3909954/bbs" target="_blank">
                                            <img title="qq_炫_03909954" src="//img3.mukewang.com/57c659c600013ca801000100-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/3909954/bbs" target="_blank">qq_炫_03909954</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role"></span>
                                        <span class="answer-num">2回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">6</div>
                                    <div class="user-pic">
                                        <a href="/u/2371663/bbs" target="_blank">
                                            <img title="狂飙的蜗牛_1" src="//img4.mukewang.com/58217d4b0001f0a401000100-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/2371663/bbs" target="_blank">狂飙的蜗牛_1...</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">软件工程师</span>
                                        <span class="answer-num">2回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">7</div>
                                    <div class="user-pic">
                                        <a href="/u/1008219/bbs" target="_blank">
                                            <img title="晚安sp" src="//img.mukewang.com/5a26aea4000174a004400535-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/1008219/bbs" target="_blank">晚安sp</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">PHP开发工程师</span>
                                        <span class="answer-num">1回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">8</div>
                                    <div class="user-pic">
                                        <a href="/u/2855983/bbs" target="_blank">
                                            <img title="time_is_everything" src="//img3.mukewang.com/5458502c00012d4a02200220-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/2855983/bbs" target="_blank">time_is_everythi...</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">JAVA开发工程师</span>
                                        <span class="answer-num">1回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">9</div>
                                    <div class="user-pic">
                                        <a href="/u/471470/bbs" target="_blank">
                                            <img title="Keyro" src="//img3.mukewang.com/544b1aa300018c3f01000100-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/471470/bbs" target="_blank">Keyro</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">Web前端工程师</span>
                                        <span class="answer-num">1回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">10</div>
                                    <div class="user-pic">
                                        <a href="/u/1284636/bbs" target="_blank">
                                            <img title="sunyuqin" src="//img3.mukewang.com/545869170001922f02200220-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/1284636/bbs" target="_blank">sunyuqin</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">JAVA开发工程师</span>
                                        <span class="answer-num">1回答</span>
                                    </div><!--.user-info end-->
                                </li>
                            </ul>
                        </div>

                        <div class="tabdiv leifeng-tab-box leifeng-week js-leifeng-tab-box" data-type="week" style="display:block;">
                            <ul class="leifeng-tab-box-min">
                                <c:forEach var="udd" items="${udd}" varStatus="status" begin="0" end="2">
                                    <li>
                                        <c:choose>
                                            <c:when test="${status.count=='1'}">
                                                <div class="ranking first">${status.count}</div>
                                            </c:when>
                                            <c:when test="${status.count=='2'}">
                                                <div class="ranking second">${status.count}</div>
                                            </c:when>
                                            <c:when test="${status.count=='3'}">
                                                <div class="ranking third">${status.count}</div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="ranking ">${status.count}</div>
                                            </c:otherwise>
                                        </c:choose>
                                        <div class="user-pic">
                                            <a href="" target="_blank">
                                                <img title="${udd.username}" src="static/user/talk/image/58_avatar_middle.jpg">
                                            </a>
                                        </div>
                                        <!--.user-pic end-->
                                        <div class="user-name">
                                            <a href="" target="_blank">${udd.username}</a>
                                        </div>
                                        <!--.user-name end-->
                                        <div class="user-info clearfix">
                                            <span class="role">${udd.rankName}
                                            </span>
                                            <span class="answer-num">${udd.count}回答</span>
                                        </div>
                                        <!--.user-info end-->
                                    </li>
                                </c:forEach>
                                <li>
                                    <div class="ranking second">2</div>
                                    <div class="user-pic">
                                        <a href="/u/471470/bbs" target="_blank">
                                            <img title="Keyro" src="//img3.mukewang.com/544b1aa300018c3f01000100-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/471470/bbs" target="_blank">Keyro</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">Web前端工程师</span>
                                        <span class="answer-num">18回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking third">3</div>
                                    <div class="user-pic">
                                        <a href="/u/3909954/bbs" target="_blank">
                                            <img title="qq_炫_03909954" src="//img3.mukewang.com/57c659c600013ca801000100-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/3909954/bbs" target="_blank">qq_炫_03909954</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role"></span>
                                        <span class="answer-num">16回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">4</div>
                                    <div class="user-pic">
                                        <a href="/u/4485921/bbs" target="_blank">
                                            <img title="漂流風車" src="//img3.mukewang.com/5839aee200019e4b01000100-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/4485921/bbs" target="_blank">漂流風車</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role"></span>
                                        <span class="answer-num">12回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">5</div>
                                    <div class="user-pic">
                                        <a href="/u/6586157/bbs" target="_blank">
                                            <img title="码农2号" src="//img.mukewang.com/54584d9f0001043b02200220-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/6586157/bbs" target="_blank">码农2号</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">Web前端工程师</span>
                                        <span class="answer-num">10回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">6</div>
                                    <div class="user-pic">
                                        <a href="/u/5201626/bbs" target="_blank">
                                            <img title="WYSISYG" src="//img.mukewang.com/5a5369ce000142e501110139-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/5201626/bbs" target="_blank">WYSISYG</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">全栈工程师</span>
                                        <span class="answer-num">10回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">7</div>
                                    <div class="user-pic">
                                        <a href="/u/2558994/bbs" target="_blank">
                                            <img title="萨达哈鲁" src="//img.mukewang.com/564200ac00011db903980398-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/2558994/bbs" target="_blank">萨达哈鲁</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">移动开发工程师</span>
                                        <span class="answer-num">8回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">8</div>
                                    <div class="user-pic">
                                        <a href="/u/5165305/bbs" target="_blank">
                                            <img title="天道酬勤_" src="//img4.mukewang.com/545846580001fede02200220-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/5165305/bbs" target="_blank">天道酬勤_</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">学生</span>
                                        <span class="answer-num">7回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">9</div>
                                    <div class="user-pic">
                                        <a href="/u/166437/bbs" target="_blank">
                                            <img title="周剑秋" src="//img.mukewang.com/544a11820001e1e601000100-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/166437/bbs" target="_blank">周剑秋</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">Web前端工程师</span>
                                        <span class="answer-num">7回答</span>
                                    </div><!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">10</div>
                                    <div class="user-pic">
                                        <a href="/u/2135694/bbs" target="_blank">
                                            <img title="FanlyBaby" src="//img3.mukewang.com/55a0a0ad00010ba121601920-100-100.jpg">
                                        </a>
                                    </div><!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="/u/2135694/bbs" target="_blank">FanlyBaby</a>
                                    </div><!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">Web前端工程师</span>
                                        <span class="answer-num">6回答</span>
                                    </div><!--.user-info end-->
                                </li>
                            </ul>
                        </div>
                    </div><!--.leifeng-sort end-->

                </div>
            </div>
        </div>

        <div class="popBox" id="textPopBox">
            <div class="shade"></div>
            <div class="tag-main">
                <h3 class="popBoxHandle"><span>关注我喜欢或专注的分类</span> <i class="icon-close2 js-close"></i></h3>
                <ul class="tag-list clearfix" id="tag-list">
                    <li data-tag-id="17">
                        <img alt="" src="static/user/talk/image/topic/li0sYUFyupGlU.jpg">
                        <span>学院</span>
                    </li>
                    <li data-tag-id="13">
                        <img alt="" src="static/user/talk/image/topic/li1Na71IjFa.jpg">
                        <span>韩系</span>
                    </li>
                    <li data-tag-id="52">
                        <img alt="" src="static/user/talk/image/topic/li8acrAS9j3c2.jpg">
                        <span>轻熟</span>
                    </li>
                    <li data-tag-id="50">
                        <img alt="" src="static/user/talk/image/topic/li8n4Y1sMI6D6.jpg">
                        <span>显瘦</span>
                    </li>
                    <li data-tag-id="14">
                        <img alt="" src="static/user/talk/image/topic/liDheZ6goLSs.jpg">
                        <span>显高</span>
                    </li>
                    <li data-tag-id="5">
                        <img alt="" src="static/user/talk/image/topic/liDJMD0CbJXPo.jpg">
                        <span>肩宽</span>
                    </li>
                    <li data-tag-id="22">
                        <img alt="" src="static/user/talk/image/topic/liDQrOCApZyOE.jpg">
                        <span>活力</span>
                    </li>
                    <li data-tag-id="27">
                        <img alt="" src="static/user/talk/image/topic/liKcn8nHxDFaM.jpg">
                        <span>青春</span>
                    </li>
                    <li data-tag-id="15">
                        <img alt="" src="static/user/talk/image/topic/liNfspkBCZofw.jpg">
                        <span>优雅</span>
                    </li>
                    <li class="active" data-tag-id="24">
                        <img alt="" src="static/user/talk/image/topic/liPGMGvDqfe92.jpg">
                        <span>逛街</span>
                    </li>
                    <li data-tag-id="26">
                        <img alt="" src="static/user/talk/image/topic/liPl84qgmixr2.jpg">
                        <span>约会</span>
                    </li>
                    <li class="active" data-tag-id="25">
                        <img alt="" src="static/user/talk/image/topic/lir6zWRwC8kzI.jpg">
                        <span>上学</span>
                    </li>
                    <li data-tag-id="53">
                        <img alt="" src="static/user/talk/image/topic/liuEKnjDIsAoQ.jpg">
                        <span>休闲</span>
                    </li>
                    <li data-tag-id="3">
                        <img alt="" src="static/user/talk/image/topic/livuer3B0SpR6.jpg">
                        <span>日系</span>
                    </li>
                    <li data-tag-id="18">
                        <img alt="" src="static/user/talk/image/topic/liyFspYYOkgk2.jpg">
                        <span>民族风</span>
                    </li>
                    <li data-tag-id="31">
                        <img alt="" src="static/user/talk/image/information/221557p108yrvp0ejzopoo.jpg">
                        <span>显脸小</span>
                    </li>
                    <li data-tag-id="2">
                        <img alt="" src="static/user/talk/image/information/222003f62f7ba6injhnz2j.jpg">
                        <span>遮粗腿</span>
                    </li>
                    <li data-tag-id="28">
                        <img alt="" src="static/user/talk/image/information/222004hl1li128ne1dim3o.jpg">
                        <span>遮肚腩</span>
                    </li>
                    <li data-tag-id="30">
                        <img alt="" src="static/user/talk/image/information/2215429i1div2nn94f9dtd.jpg">
                        <span>遮粗臂</span>
                    </li>
                    <li data-tag-id="38">
                        <img alt="" src="static/user/talk/image/information/2220055o7zss7ra28ms7zs.jpg">
                        <span>活力黄</span>
                    </li>
                    <li data-tag-id="11">
                        <img alt="" src="static/user/article/community/image/info/li6MIElyFdJQ2.jpg">
                        <span>纯净白</span>
                    </li>
                    <li data-tag-id="36">
                        <img alt="" src="static/user/article/community/image/info/li9F9k4klSn5M.jpg">
                        <span>娇嫩粉</span>
                    </li>
                    <li data-tag-id="29">
                        <img alt="" src="static/user/article/community/image/info/li757WbA2nqyg.jpg">
                        <span>青春绿</span>
                    </li>
                    <li data-tag-id="8">
                        <img alt="" src="static/user/article/community/image/info/liBfpfC72adNM.jpg">
                        <span>水蓝色</span>
                    </li>
                    <li data-tag-id="12">
                        <img alt="" src="static/user/article/community/image/info/licM8LBF6MeI.jpg">
                        <span>卡其色</span>
                    </li>
                    <li data-tag-id="19">
                        <img alt="" src="static/user/article/community/image/info/lics9aFvTZjA.jpg">
                        <span>黑白灰</span>
                    </li>
                    <li data-tag-id="33">
                        <img alt="" src="static/user/article/community/image/info/liDOw9Vu9c1D.jpg">
                        <span>Bling Bling</span>
                    </li>
                    <li data-tag-id="34">
                        <img alt="" src="static/user/article/community/image/info/liDSelbGVwIZ.jpg">
                        <span>蛋糕裙</span>
                    </li>
                    <li data-tag-id="35">
                        <img alt="" src="static/user/article/community/image/info/lidzob2Yvetls.png">
                        <span>复古风</span>
                    </li>
                    <li class="active" data-tag-id="21">
                        <img alt="" src="static/user/article/community/image/info/lieg4q94Qzaj.jpg">
                        <span>连体裤</span>
                    </li>
                    <li data-tag-id="58">
                        <img alt="" src="static/user/article/community/image/info/liffoagoDNRo.jpg">
                        <span>性感</span>
                    </li>
                    <li data-tag-id="57">
                        <img alt="" src="static/user/article/community/image/info/lifmBA9G7dvCg.jpg">
                        <span>条纹</span>
                    </li>
                    <li data-tag-id="51">
                        <img alt="" src="static/user/article/community/image/info/ligom1wv6hrN6.jpg">
                        <span>西装</span>
                    </li>
                    <li data-tag-id="20">
                        <img alt="" src="static/user/article/community/image/info/ligP4glXV7ddo.jpg">
                        <span>过膝袜</span>
                    </li>
                    <li data-tag-id="10">
                        <img alt="" src="static/user/article/community/image/info/lij2sOW5mgkTI.jpg">
                        <span>直筒裙</span>
                    </li>
                    <li data-tag-id="7">
                        <img alt="" src="static/user/article/community/image/info/lijqQoVvpadM.jpg">
                        <span>牛仔裤</span>
                    </li>
                    <li data-tag-id="9">
                        <img alt="" src="static/user/article/community/image/info/lincTgaJogfrQ.jpg">
                        <span>绒毛外套</span>
                    </li>
                    <li data-tag-id="40">
                        <img alt="" src="static/user/article/community/image/info/liNxFNXX1EmO2.jpg">
                        <span>流苏</span>
                    </li>
                    <li data-tag-id="39">
                        <img alt="" src="static/user/article/community/image/info/liQPKyjzeEFM.jpg">
                        <span>T恤短裙</span>
                    </li>
                    <li data-tag-id="54">
                        <img alt="" src="static/user/article/community/image/info/liQTgKijEE8w.jpg">
                        <span>挖肩上衣</span>
                    </li>
                </ul>
                <div>
                    <input id="ok" onclick="tagonclick()" type="button" class="button green" value="        确    认        " />
                    <input id="cancel" type="button" class="button blue" value="        取    消        " />
                </div>
            </div>
        </div>
        <script type="text/javascript">
            //初始化弹出框
            var p = new PopUp({
                //isScroll:'disabled'
                //enableDrag:'disabled'
                //enableShadow:'disabled'
                //id为你自己自定义的弹出框div的id
                id:"textPopBox"
            });

            //缩放窗口时重新定位弹出框及遮罩层的宽度和高度
            EventUtil.addEvent(window,'resize', function() {
                p.setPosition();
                //如果开启遮罩层，遮罩层元素存在，则重新定位遮罩层
                p.enableShadow && p.enableShadow.shadow && p.enableShadow.setProperty(p.enableShadow.shadow);
            });
            EventUtil.addEvent(EventUtil._$('btn'),'click', function() {
                p.show({//定义坐标，如果缺省则居中显示
//            x:100,
//            y:100
                });
            });
            EventUtil.addEvent(EventUtil._$('ok'),'click', function() {
                //自定义点击确定按钮之后得操作
                var t =$("#backReason").val();
                //隐藏弹出框
                p.hide();
            });
            EventUtil.addEvent(EventUtil._$('cancel'),'click', function() {
                //自定义点击取消按钮之后得操作

                //隐藏弹出框
                p.hide();
            });

            //当按下ESC键时关闭弹出框
            //    EventUtil.addEvent(document,'keyup',function(e) {
            //        e = e || window.event;
            //        e.keyCode == 27 && p.hide();
            //    });

            EventUtil.addEvent(window,'load',function() {
                if((isIE6 || isOpera) && p.isScroll != null && p.isScroll == 'enabled') {
                    EventUtil.addEvent(window,'scroll', function() {
                        setTimeout(function() {
                            p.setPosition();
                        },100);
                    });
                }
            });

            //单选按钮的点击切换事件

        </script>

    </div>

    <script>
        var spans=new Array();
        var n=0;
        $("#tag-list li").each(
            $("li").click(function() {
                //alert(1);
                this.className = 'active';
                spans.push($(this).find("span").text());
                n++;
            })

        );

        function tagonclick() {
            //alert(spans.length);
            var datas={"spans":spans};
            $.ajax({
                type:"POST",
                url:'${pageContext.request.contextPath }/user/addTag.action',
//                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                //contentType: 'application/json;charset=UTF-8', //内容类型
                data: datas,
                traditional: true,
                success: function(data) {
                    var tag="<div class='tag-box clearfix' id='tag-box'>";
                    //alert(data.length);
                    for(var i=0;i<data.length;i++){
                        //alert(data[i]);
                        tag+= "<a href='#'>"+data[i]+"</a>";
                    }
                    tag+= "</div>"
                    //alert(tag);
                    $("#tag-box").html(tag);
                },
                error:function () {
                    //alert(222);
                }


            })
        }



    </script>

<%@ include file="../footer.jsp" %>
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
