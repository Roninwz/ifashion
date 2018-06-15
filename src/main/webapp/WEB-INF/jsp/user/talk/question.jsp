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
    <title>Title</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <link rel="stylesheet" href="static/user/talk/css/3.css">
    <link rel="stylesheet" href="static/user/talk/css/1.css">

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

</head>
<body style="background-color: white">


<div id="main">


    <div class="wenda clearfix">

        <div class="js-layout-change">
            <div class="l wenda-main">
                <div class="wd-top-slogan">
                    <span>时尚人士自己的问答社区</span>
                    <a class="js-quiz" href="">我要提问</a>
                </div>
                <div class="nav">
                    <a href="">推荐</a>
                    <a href="">最新</a>
                    <a href="">等待回答</a>
                    <a href="">话题</a>
                    <a class="active" href="">问题</a>
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
                          <c:when test="${empty questionReplies.replyContent}">
                              <div class="ques-answer no-answer">
                                  <div class="tag-img">
                                      <a href="" target="_blank">
                                          <img title="" src="${questionReplies.quserImgurl}">
                                      </a>
                                  </div><!--.tag-img end-->
                                  <div class="from-tag">        来自
                                      <a href="" target="_blank">${questionReplies.quserName}</a>
                                      <a style="color:#999"><fmt:formatDate value="${questionReplies.questionDate}" pattern="yyyy/MM/dd"></fmt:formatDate> </a>
                                  </div><!--.from-tag end-->
                                  <div class="ques-con">
                                      <a title="${questionReplies.questionContent}" class="ques-con-content" href="${pageContext.request.contextPath }/user/response.action?questionId=${questionReplies.questionId}" target="_blank">${questionReplies.questionContent}</a>
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
                                      <a style="color:#999">${questionReplies.questionDate}</a>
                                  </div><!--.from-tag end-->
                                  <div class="ques-con">
                                      <a title="${questionReplies.questionContent}" class="ques-con-content" href="${pageContext.request.contextPath }/user/response.action?questionId=${questionReplies.questionId}" target="_blank">${questionReplies.questionContent}</a>

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
                                  <div class="reply-con">
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
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/22" target="_blank">
                                <img title="AngularJS" src="//img.mukewang.com/59e96ed90001e4e702400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/22" target="_blank">AngularJS</a>
                            <a style="color:#999">2018-04-28</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;前端开发并不简单，哪怕对于初级甚至中级的前端开发者来说，即使他们有一定的JavaScript代码功底，如果单纯交代他们实现一个前端功能，他们可能也可以实现出来，但他们的实现风格要么乱七八糟，要么“随心所欲”。如果你对前端开发有兴趣或前端技术水平无法提升欢迎参与到这一期的话题活动，与技术嘉宾探讨前端JavaScript与框架开发同时你还将有机会获得嘉宾亲笔著作的前端图书哦！&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 那么好的学习机会，还不如赶紧来参与↓李刚，十余年软件开发从业者疯狂软件教育中心教学总..." class="ques-con-content" href="/wenda/detail/383123" target="_blank">【有奖问答】与大咖交流前端JS与框架开发，免费赢取前端图书（11.28-12.4）</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="269840">
                            <div class="user">

                                <a href="/u/5787526/bbs" target="_blank">谢小波</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">我觉得不管学习哪门语言，到后面总还是要学习一下规范，程序员的素养必不可少啊！！</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>我觉得不管学习哪门语言，到后面总还是要学习一下规范，程序员的素养必不可少啊！！</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="383123" data-answer-id="269840" data-hasop=""><b>已帮助用户</b><em>32</em></span>
                                <span class="oppose " data-ques-id="383123" data-answer-id="269840" data-hasop=""><em>4人反对</em></span>
                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="269840" data-ques-uid="10000">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/26" target="_blank">
                                <img title="前端工具" src="//img.mukewang.com/59e96eb100019d5902400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/26" target="_blank">前端工具</a>
                            <a style="color:#999">2018-04-28</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="还是很多用户忘记初心，近期检查到很多用户恶意刷分的行为，也已进行处罚~~同时欢迎其他用户来举报慕课积分体系全新上线后，慕女神收到部分用户的举报，说有人恶意进行刷积分行为，已经严重影响到竞技的公平性和其他用户的竞技体验。针对此问题，慕女神和团队迅速进行了排查，收集以及监控所有影响用户公平赚积分的行为（课程、猿问、手记、第三方分享），发现了该ID1949284的用户存在严重作弊行为→利用马甲在猿问自问自答，课程恶意刷积分，特此发出公告↓↓慕课网将对ID为1949284的用户进行如下处理：1、清除作弊数据记录；2、永久冻结他的马甲号希望大家能以此为鉴，不要忽略了来慕课网的初衷，积分只是我们学习的一个..." class="ques-con-content" href="/wenda/detail/320982" target="_blank">刷分零容忍！关于刷分用户的处罚公告</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="173959">
                            <div class="user">

                                <a href="/u/112179/bbs" target="_blank">爱生活爱胖胖</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">&nbsp;学习使人进步，诚信使人发光！六星好评，支持慕课网！</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>&nbsp;学习使人进步，诚信使人发光！六星好评，支持慕课网！</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="320982" data-answer-id="173959" data-hasop=""><b>已帮助用户</b><em>363</em></span>
                                <span class="oppose " data-ques-id="320982" data-answer-id="173959" data-hasop=""><em>15人反对</em></span>
                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <textarea placeholder="写下你的回复">写下你的回复</textarea>
                                </div>
                                <p class="err-tip"></p>
                                <div class="userCtrl clearfix">
                                    <div class="verify-code"></div>
                                    <div class="do-reply-btn" data-answer-id="173959" data-ques-uid="10000">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/33" target="_blank">
                                <img title="Unity 3D" src="//img.mukewang.com/59e96e6300011c3502400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/33" target="_blank">Unity 3D</a>
                            <a style="color:#999">2018-04-28</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="提到国内最赚钱、最火爆的游戏公司，那肯定非我们壕一样的主T：腾讯游戏莫属。&nbsp;横版之王DNF、竞技之王LOL还有枪战CF等大型网络游戏，以及品种多样的社交游戏，让腾讯帝国迅速崛起！&nbsp;腾讯是如何洞察游戏市场，快速做出对策的呢？&nbsp;同时他们对游戏的研发和运营又有哪些独到的见解？&nbsp;【热辣暑期档】慕课网邀请到腾讯GAD游戏学院的专家们来到猿问，给对游戏感兴趣或者从事游戏开发的朋友们带来清凉一夏！！&nbsp;通过问答形式，分享游戏开发、游戏设计与动画和游戏运营等干货知识！&nbsp; &nbsp;邓立丰&nbsp;-&nbsp;腾讯GAD游戏学院导师（慕课网昵称：MobileGameSafeBook）在2010年加入腾讯公司，早期从事端游客户端的安全工作..." class="ques-con-content" href="/wenda/detail/321340" target="_blank">腾讯游戏大牛在线，有问题尽管来</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="175008">
                            <div class="user">

                                <a href="/u/3051921/bbs" target="_blank">xiemioc</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">制作一个游戏的过程 &nbsp; 和需要的语言 &nbsp; &nbsp;具体说一下 &nbsp; &nbsp;@邓立丰@王睿杰@廖新洪</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>制作一个游戏的过程 &nbsp; 和需要的语言 &nbsp; &nbsp;具体说一下 &nbsp; &nbsp;@邓立丰@王睿杰@廖新洪</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="321340" data-answer-id="175008" data-hasop=""><b>已帮助用户</b><em>166</em></span>
                                <span class="oppose " data-ques-id="321340" data-answer-id="175008" data-hasop=""><em>14人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="175008" data-ques-uid="10000">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/30" target="_blank">
                                <img title="C++" src="//img.mukewang.com/59e96e7800018e5502400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/30" target="_blank">C++</a>
                            <a style="color:#999">2018-04-28</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="还是年轻时好，熬夜第二天也不会难受。" class="ques-con-content" href="/wenda/detail/344091" target="_blank">各位猿或者媛，一般几点睡啊。有时忍住头痛看java到很晚，第二天就头痛一整天</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="231626">
                            <div class="user">

                                <span class="had-solve">已采纳</span>
                                <a href="/u/1953317/bbs" target="_blank">肖申克de救赎</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">没有什么事情是需要熬夜完成的</div>
                            <div class="answer-content-all rich-text aimgPreview"><p><strong><span style="text-decoration:underline;">没有什么事情是需要熬夜完成的</span></strong><br></p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="344091" data-answer-id="231626" data-hasop=""><b>已帮助用户</b><em>619</em></span>
                                <span class="oppose " data-ques-id="344091" data-answer-id="231626" data-hasop=""><em>29人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="231626" data-ques-uid="2143740">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer no-answer">
                        <div class="tag-img">
                            <a href="/wenda/18" target="_blank">
                                <img title="Python" src="//img.mukewang.com/59e96f1c0001942802400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/18" target="_blank">Python</a>
                            <a style="color:#999">2018-04-28</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="这个为啥是死循环" class="ques-con-content" href="/wenda/detail/390837" target="_blank">这个为啥是死循环</a>
                        </div><!--.ques-con end-->
                        <div class="info-bar clearfix">
                            <a class="to-answer" href="/wenda/detail/390837">撰写答案</a>
                            <p class="integral-info"><a href="/about/faq?t=3" target="_blank">回答问题最高可获<span>2积分</span>哦！</a></p>
                            <a class="answer-num" href="/wenda/detail/390837">1个回答</a>
                            <a class="follow" href="javascript:;" data-ques-id="390837"><i class="heart">关注</i></a>
                        </div><!--.info-bar end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/12" target="_blank">
                                <img title="Android" src="//img.mukewang.com/59e96f7a0001117402400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/12" target="_blank">Android</a>
                            <a style="color:#999">2018-04-28</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="移动互联网已经成为当今世界发展最快、市场潜力最大的业务，而Android则是移动互联网上市场占有率最高的平台。移动互联网与Android的结合必然带来更多的就业机会与创业机会，这都值得每个安卓开发者好好把握的时机！What？有问题还不快快来提问，安卓大咖等你来！李刚，十余年软件开发从业者疯狂软件教育中心教学总监，疯狂Java实训营创始人广东技术师范学院计算机科学系兼职副教授培训的学生已在华为、IBM、阿里软件、网易、电信盈科等名企就职。国内著名高端IT技术图书作家，其中疯狂Java体系图书均已沉淀多年，赢得极高的市场认同，并被多所“985”、“211”高校选作教材。在评论区块，发布一条问题并在..." class="ques-con-content" href="/wenda/detail/325341" target="_blank">遇见好答案，Android开发问答专场</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="185072">
                            <div class="user">

                                <a href="/u/3794065/bbs" target="_blank">beijiyaya恋雨心声</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">@李刚老师老师您好，我现在在学习的是HTML5，都说HTML5以跨平台的优势将要取代android开发，我也认为HTML5在很多实际开发中节约了大量的人力和财力，老师您对这种观点怎么看呢？</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>@李刚老师</p><p>老师您好，我现在在学习的是HTML5，都说HTML5以跨平台的优势将要取代android开发，我也认为HTML5在很多实际开发中节约了大量的人力和财力，老师您对这种观点怎么看呢？</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="325341" data-answer-id="185072" data-hasop=""><b>已帮助用户</b><em>99</em></span>
                                <span class="oppose " data-ques-id="325341" data-answer-id="185072" data-hasop=""><em>27人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="185072" data-ques-uid="10000">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/3" target="_blank">
                                <img title="JAVA" src="//img.mukewang.com/59e9700900012e3602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/3" target="_blank">JAVA</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="java好学吗.??pp" class="ques-con-content" href="/wenda/detail/338299" target="_blank">java好学吗.??pp</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="217545">
                            <div class="user">

                                <a href="/u/3556300/bbs" target="_blank">时光_冰释</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">挺好的！</div>
                            <div class="answer-content-all rich-text aimgPreview">挺好的！</div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="338299" data-answer-id="217545" data-hasop=""><b>已帮助用户</b><em>40</em></span>
                                <span class="oppose " data-ques-id="338299" data-answer-id="217545" data-hasop=""><em>10人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="217545" data-ques-uid="4578849">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/28" target="_blank">
                                <img title="C" src="//img.mukewang.com/59e96e980001d29602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/28" target="_blank">C</a>
                            <a href="/wenda/2" target="_blank">PHP</a>
                            <a href="/wenda/18" target="_blank">Python</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="话说，大家想编程的最初初衷是什么" class="ques-con-content" href="/wenda/detail/332686" target="_blank">话说，大家想编程的最初初衷是什么</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="204239">
                            <div class="user">

                                <a href="/u/1926564/bbs" target="_blank">JustWannaHugU</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">说兴趣的话有没有人打我....</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>说兴趣的话有没有人打我....</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="332686" data-answer-id="204239" data-hasop=""><b>已帮助用户</b><em>330</em></span>
                                <span class="oppose " data-ques-id="332686" data-answer-id="204239" data-hasop=""><em>20人反对</em></span>

                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="204239" data-ques-uid="3319610">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/3" target="_blank">
                                <img title="JAVA" src="//img.mukewang.com/59e9700900012e3602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/3" target="_blank">JAVA</a>
                            <a href="/wenda/18" target="_blank">Python</a>
                            <a href="/wenda/35" target="_blank">大数据</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="理工本科非科班工作6年，目前在服务业，IT完全0基础。大学高数学不明白。在选IT学校，家附近只有北大青鸟和达内。脱产半年，花费勉强担负得起。只是已经这个年纪，又是女生，会不会没人招……现在才来学，是不是太晚了。各位能不能给我点鼓励啊" class="ques-con-content" href="/wenda/detail/362945" target="_blank">29岁大龄单身女0基础想转行学IT</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="263031">
                            <div class="user">

                                <a href="/u/5657247/bbs" target="_blank">长相思兮</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">种一棵树最好的时间是10年前，其次是现在。没有必要脱产学习，我就是从北大青鸟出来的。学完以后我根本就没找过这方面的工作，因为啥都没学明白。现在重新自学，感觉比以前效果还好，每天就晚上花两三个小时每天都进步一点。我</div>
                            <div class="answer-content-all rich-text aimgPreview"><p dir="ltr">种一棵树最好的时间是10年前，其次是现在。没有必要脱产学习，我就是从北大青鸟出来的。学完以后我根本就没找过这方面的工作，因为啥都没学明白。现在重新自学，感觉比以前效果还好，每天就晚上花两三个小时每天都进步一点。我</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="362945" data-answer-id="263031" data-hasop=""><b>已帮助用户</b><em>145</em></span>
                                <span class="oppose " data-ques-id="362945" data-answer-id="263031" data-hasop=""><em>29人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="263031" data-ques-uid="5865920">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/5" target="_blank">
                                <img title="Html/CSS" src="//img.mukewang.com/59e96ff90001ab0402400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/5" target="_blank">Html/CSS</a>
                            <a href="/wenda/3" target="_blank">JAVA</a>
                            <a href="/wenda/20" target="_blank">Linux</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="优秀的提问者，把相关信息私信给慕女神，将获得上下两册《linux大棚 命令百篇》time_is_everything &nbsp;http://www.imooc.com/u/2855983/bbsBruceWang85 &nbsp;http://www.imooc.com/u/208261/bbsGraceLin http://www.imooc.com/u/2163778/bbssanshu1 http://www.imooc.com/u/1992159/bbsNameless13&nbsp;http://www.imooc.com/u/2226199/bbs说到linux，那真的是在计算机领域是无处不在的。从嵌入式系..." class="ques-con-content" href="/wenda/detail/329082" target="_blank">【问答专场】实力派--Linux大棚来了，更有linux图书免费送</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="195095">
                            <div class="user">

                                <a href="/u/2855983/bbs" target="_blank">time_is_everything</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">@吴鹏冲老师，老师您好，我知道Linux这个系统是跨平台性高，兼容性强，开发拓展广。尤其是之前看到美剧中“黑客军团”里的黑客用基于linux的shell来编写去hack，所以想问您一下，如果学好了linux能不能对网络安全方面（hack方面）有更好的了解和知识认解呢？望解惑。。。</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>@吴鹏冲老师，老师您好，我知道Linux这个系统是跨平台性高，兼容性强，开发拓展广。尤其是之前看到美剧中“黑客军团”里的黑客用基于linux的shell来编写去hack，所以想问您一下，如果学好了linux能不能对网络安全方面（hack方面）有更好的了解和知识认解呢？望解惑。。。</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="329082" data-answer-id="195095" data-hasop=""><b>已帮助用户</b><em>35</em></span>
                                <span class="oppose " data-ques-id="329082" data-answer-id="195095" data-hasop=""><em>6人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="195095" data-ques-uid="10000">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/25" target="_blank">
                                <img title="CSS3" src="//img.mukewang.com/59e96ebe0001a9ad02400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/25" target="_blank">CSS3</a>
                            <a href="/wenda/5" target="_blank">Html/CSS</a>
                            <a href="/wenda/14" target="_blank">Html5</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="最近觉得自己变懒惰了，想找些一起有理想一起奋斗一起傻逼的人哈哈哈，本人小清新。" class="ques-con-content" href="/wenda/detail/318331" target="_blank">前端一起学，一起奋斗，一起有个学习的圈子！！！</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="169066">
                            <div class="user">

                                <a href="/u/10000/bbs" target="_blank">慕女神</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">&nbsp;慕课网Web前端讨论群②&nbsp;27810317慕课网粉丝群⑧&nbsp;433467017&nbsp;想要学习前端，可以加此群~~请大家谨慎加别人组建的群里</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>&nbsp;慕课网Web前端讨论群②&nbsp;27810317<br>慕课网粉丝群⑧&nbsp;433467017&nbsp;</p><p>想要学习前端，可以加此群~~请大家谨慎加别人组建的群里</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="318331" data-answer-id="169066" data-hasop=""><b>已帮助用户</b><em>75</em></span>
                                <span class="oppose " data-ques-id="318331" data-answer-id="169066" data-hasop=""><em>2人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="169066" data-ques-uid="2048737">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/25" target="_blank">
                                <img title="CSS3" src="//img.mukewang.com/59e96ebe0001a9ad02400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/25" target="_blank">CSS3</a>
                            <a href="/wenda/3" target="_blank">JAVA</a>
                            <a href="/wenda/12" target="_blank">Android</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="全新积分体系上线，超多好礼尽在积分商城慕女神现在就给大家科普下，积分是什么，有什么用？① 什么是积分 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;积分是慕课对用户的一种鼓励，而且还是最强的物质回报的体现。&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;慕课积分可以在积分商城兑超值礼包，有图有真相↓↓ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;★&nbsp;实战购买积分 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; ..." class="ques-con-content" href="/wenda/detail/319125" target="_blank"> 积分商城上线，超多好礼等你来兑</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="170531">
                            <div class="user">

                                <a href="/u/1008780/bbs" target="_blank">丶包菜</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">几个月的积累才38积分，觉得上升好慢。一直帮助别人解决问题的，即使答案正确或者先答也不被采纳，反馈没回复，也挺无奈的。好在我积极性还挺高，解决问题就是帮助自己巩固知识嘛。其实学生党我肯定想要个更好的手机啦，但是有个VR也挺不错。好吧，认真看了下没VR，修改为：愿赐我个慕课T恤，我真的挺喜欢慕课这个平台的。我可能要写点学习积累什么的了，但怎么可能每天都有。如果今年都没有达成目标，那就也不缺了，全部兑换成慕烟花什么的了。<span class="see-more">[ 查看全部 ]</span></div>
                            <div class="answer-content-all rich-text aimgPreview"><p><br>几个月的积累才38积分，觉得上升好慢。</p><p>一直帮助别人解决问题的，即使答案正确或者先答也不被采纳，反馈没回复，也挺无奈的。</p><p>好在我积极性还挺高，解决问题就是帮助自己巩固知识嘛。<br></p><p>其实学生党我肯定想要个更好的手机啦，但是有个VR也挺不错。</p><p>好吧，认真看了下没VR，修改为：愿赐我个慕课T恤，我真的挺喜欢慕课这个平台的。<br></p><p>我可能要写点学习积累什么的了，但怎么可能每天都有。<br></p><p>如果今年都没有达成目标，那就也不缺了，全部兑换成慕烟花什么的了。<br></p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="319125" data-answer-id="170531" data-hasop=""><b>已帮助用户</b><em>106</em></span>
                                <span class="oppose " data-ques-id="319125" data-answer-id="170531" data-hasop=""><em>5人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="170531" data-ques-uid="10000">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/12" target="_blank">
                                <img title="Android" src="//img.mukewang.com/59e96f7a0001117402400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/12" target="_blank">Android</a>
                            <a href="/wenda/5" target="_blank">Html/CSS</a>
                            <a href="/wenda/19" target="_blank">iOS</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2016年国庆节前夕，慕课网迎来了第5个大版本更新。作为国内首个移动端IT学习类应用，慕课网App有超10000+免费学习视频课程，在以内容为根本的同时，慕课网坚持深耕产品，通过版本升级不断完善用户的使用体验。在此次升级的版本中，慕课网采用了全新的UI界面，全新开发的播放器，调整了“猿问”“手记”入口，增加了课程问答、课程评价，更加贴近PC端编程学习。更加值得一提的是，该版本中增加了夜间模式，关爱双眸妥妥的。目前，手机App安卓v5.0.0在各大应用商店会陆续上线，请下载最新版本体验。iOS..." class="ques-con-content" href="/wenda/detail/330117" target="_blank">【慕课网】安卓v5.0.0版本功能升级 新界面新体验</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="197596">
                            <div class="user">

                                <a href="/u/3688168/bbs" target="_blank">LovingJava</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">只有我看到android打错还被用波浪线标出来了吗，，，</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>只有我看到android打错还被用波浪线标出来了吗，，，</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="330117" data-answer-id="197596" data-hasop=""><b>已帮助用户</b><em>36</em></span>
                                <span class="oppose " data-ques-id="330117" data-answer-id="197596" data-hasop=""><em>3人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="197596" data-ques-uid="10000">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/17" target="_blank">
                                <img title="JavaScript" src="//img.mukewang.com/59e96f340001faac02400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/17" target="_blank">JavaScript</a>
                            <a href="/wenda/5" target="_blank">Html/CSS</a>
                            <a href="/wenda/15" target="_blank">JQuery</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="基础差，学不好更深的知识，面试官问的问题答不上，已经这样坚持了快两个月了，没工作，用着家人的钱生活，想放弃回家了，大家可以给我一些建议让我有理由坚持下去吗?" class="ques-con-content" href="/wenda/detail/327235" target="_blank">前端找不到实习，想放弃了怎么办?</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="190022">
                            <div class="user">

                                <a href="/u/3074550/bbs" target="_blank">疯子520520</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">不是现实太残酷，只是你太弱了，虽是高薪，但你不努力，你也只能眼睁睁看着</div>
                            <div class="answer-content-all rich-text aimgPreview"><p dir="ltr">不是现实太残酷，只是你太弱了，虽是高薪，但你不努力，你也只能眼睁睁看着</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="327235" data-answer-id="190022" data-hasop=""><b>已帮助用户</b><em>211</em></span>
                                <span class="oppose " data-ques-id="327235" data-answer-id="190022" data-hasop=""><em>12人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="190022" data-ques-uid="3092233">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/12" target="_blank">
                                <img title="Android" src="//img.mukewang.com/59e96f7a0001117402400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/12" target="_blank">Android</a>
                            <a href="/wenda/3" target="_blank">JAVA</a>
                            <a href="/wenda/2" target="_blank">PHP</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="如题" class="ques-con-content" href="/wenda/detail/351144" target="_blank">为啥要做程序员，初心是什么？</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="245861">
                            <div class="user">

                                <a href="/u/3173159/bbs" target="_blank">望远</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">&lt;...code...&gt;<span class="see-more">[ 查看全部 ]</span></div>
                            <div class="answer-content-all rich-text aimgPreview">
                                <table class="syntaxhighlighter  bash" border="0" cellspacing="0" cellpadding="0">
                                    <tbody>
                                    <tr>
                                        <td class="gutter">
                                            <div class="line number1 index0 alt2">1</div>
                                        </td>
                                        <td class="code">
                                            <div class="container">
                                                <div class="line number1 index0 alt2">
                                                    <code class="bash functions">echo</code>&nbsp;
                                                    <code class="bash string">"一切不以赚钱为目的的工作都是在浪费生命！！"</code>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <p>
                                    <br>
                                </p>
                            </div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="351144" data-answer-id="245861" data-hasop=""><b>已帮助用户</b><em>83</em></span>
                                <span class="oppose " data-ques-id="351144" data-answer-id="245861" data-hasop=""><em>6人反对</em></span>


                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="245861" data-ques-uid="3527562">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/28" target="_blank">
                                <img title="C" src="//img.mukewang.com/59e96e980001d29602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/28" target="_blank">C</a>
                            <a href="/wenda/17" target="_blank">JavaScript</a>
                            <a href="/wenda/18" target="_blank">Python</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="Python天生有着开发效率高，部署简单，跨平台等诸多优点，与Java,C,C++一起成为全球前4大最流行语言。&nbsp;So，人生苦短，我用Python有其他语言编程经验的人，1周内能学会Python基础的内容。但大部分新手仅仅在Python语法和API层面体验了下，是无法在实际上胜任工作岗位的！！随意列举这些的高级Python编程知识点 ↓↓ &nbsp; &nbsp; &nbsp;你可知多少？！不懂肿么办？别担心，资深开发工程师告诉你python学习进阶的秘诀。有问题，就赶紧来提问吧~~刘硕 &nbsp;&nbsp;资深开发工程师曾就职于全球领先的半导体公司Freescale、清华大学信研院等知名企业及研究机构。是国内著名开源项目skyeye中..." class="ques-con-content" href="/wenda/detail/337758" target="_blank">遇见好答案---Python编程问答专场</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="216407">
                            <div class="user">

                                <a href="/u/2425508/bbs" target="_blank">tanhouyusheng</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">@刘硕老师&nbsp;我现在在做一些简单的项目，一般用的就是python，本来以前c++用的比较多，现在用过python之后觉得python真的很简单，很简单而且不容易出错，我现在就是做的主要是类似爬虫的探测工作，以及探测得到的数据的比较和存储，虽然没怎么用到那些各种各样的库以及装饰器之类的看起来高大上的东西，但是我用的还是挺(｡･∀･)ﾉﾞ嗨的。其次，我还曾经试着搭建过hadoop的环境，但是mapreduce程序使用python写的因为简单。下面是我的问题1、我这样用合适吗，2、我有个同学跟我说他们做爬虫用java说python不稳定，是这样的吗，我需要注意些什么3、虽然用的很多，心里还是挺没底的，...<span class="see-more">[ 查看全部 ]</span></div>
                            <div class="answer-content-all rich-text aimgPreview"><p>@刘硕老师&nbsp;</p><p>我现在在做一些简单的项目，一般用的就是python，本来以前c++用的比较多，现在用过python之后觉得python真的很简单，很简单而且不容易出错，我现在就是做的主要是类似爬虫的探测工作，以及探测得到的数据的比较和存储，虽然没怎么用到那些各种各样的库以及装饰器之类的看起来高大上的东西，但是我用的还是挺(｡･∀･)ﾉﾞ嗨的。</p><p>其次，我还曾经试着搭建过hadoop的环境，但是mapreduce程序使用python写的因为简单。</p><p>下面是我的问题</p><p>1、我这样用合适吗，</p><p>2、我有个同学跟我说他们做爬虫用java说python不稳定，是这样的吗，我需要注意些什么</p><p>3、虽然用的很多，心里还是挺没底的，我对底层了解的并不深入，这么简单，会不会有什么后顾之忧。</p><p>4、Python的最适合做的是什么。&nbsp;&nbsp;&nbsp;&nbsp;</p><p>顺便说一下我的理解，我觉得语言不是那么重要，只要能实现相对应的功能就可以了，但是现在好多问题好像都有主流的语言，比如hadoop用java，opencv应C++，这不是主要的，关键是处理的速度与用户感受还有思想。</p><p><br></p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="337758" data-answer-id="216407" data-hasop=""><b>已帮助用户</b><em>22</em></span>
                                <span class="oppose " data-ques-id="337758" data-answer-id="216407" data-hasop=""><em>1人反对</em></span>
                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="216407" data-ques-uid="10000">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/12" target="_blank">
                                <img title="Android" src="//img.mukewang.com/59e96f7a0001117402400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/12" target="_blank">Android</a>
                            <a href="/wenda/22" target="_blank">AngularJS</a>
                            <a href="/wenda/17" target="_blank">JavaScript</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="最近一直困扰我，到底长得丑应该干什么？" class="ques-con-content" href="/wenda/detail/332055" target="_blank">我长得丑，我适合学编程吗？</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="202458">
                            <div class="user">

                                <a href="/u/1020706/bbs" target="_blank">蜂之谷</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">长得丑才编程，不丑靠脸吃饭就行了，还编什么程序</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>长得丑才编程，不丑靠脸吃饭就行了，还编什么程序</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="332055" data-answer-id="202458" data-hasop=""><b>已帮助用户</b><em>219</em></span>
                                <span class="oppose " data-ques-id="332055" data-answer-id="202458" data-hasop=""><em>25人反对</em></span>
                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="202458" data-ques-uid="3050159">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/3" target="_blank">
                                <img title="JAVA" src="//img.mukewang.com/59e9700900012e3602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/3" target="_blank">JAVA</a>
                            <a href="/wenda/17" target="_blank">JavaScript</a>
                            <a href="/wenda/20" target="_blank">Linux</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="程序员说的最多的一句话是什么？" class="ques-con-content" href="/wenda/detail/340688" target="_blank">程序员说的最多的一句话是什么？</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="223186">
                            <div class="user">

                                <a href="/u/1020706/bbs" target="_blank">蜂之谷</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">Hello World！</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>Hello World！</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="340688" data-answer-id="223186" data-hasop=""><b>已帮助用户</b><em>208</em></span>
                                <span class="oppose " data-ques-id="340688" data-answer-id="223186" data-hasop=""><em>4人反对</em></span>

                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="223186" data-ques-uid="2305281">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/5" target="_blank">
                                <img title="Html/CSS" src="//img.mukewang.com/59e96ff90001ab0402400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/5" target="_blank">Html/CSS</a>
                            <a href="/wenda/19" target="_blank">iOS</a>
                            <a href="/wenda/11" target="_blank">MySQL</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="之前没改头像 都把我当男生看&nbsp; 说话还算正常把头像改成本人之后，昨天提了一个问题&nbsp;&nbsp; 怎么回答就带刺呢在群里也是&nbsp; 问我是不是女生 说什么你走 程序员的世界不需要女生我就呵呵了 女生搞编程怎么了&nbsp;干嘛有这种性别偏见啊" class="ques-con-content" href="/wenda/detail/330082" target="_blank">程序员是不是有性别歧视啊？</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="197485">
                            <div class="user">

                                <a href="/u/2036696/bbs" target="_blank">xingdefairy</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">两个东西：看脸+看实力</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>两个东西：看脸+看实力</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="330082" data-answer-id="197485" data-hasop=""><b>已帮助用户</b><em>50</em></span>
                                <span class="oppose " data-ques-id="330082" data-answer-id="197485" data-hasop=""><em>1人反对</em></span>
                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="197485" data-ques-uid="3812028">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/12" target="_blank">
                                <img title="Android" src="//img.mukewang.com/59e96f7a0001117402400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/12" target="_blank">Android</a>
                            <a href="/wenda/22" target="_blank">AngularJS</a>
                            <a href="/wenda/24" target="_blank">Bootstrap</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="入门编程学什么语言好" class="ques-con-content" href="/wenda/detail/332180" target="_blank">入门编程学什么语言好</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="202934">
                            <div class="user">

                                <a href="/u/1036936/bbs" target="_blank">大帅锅胚子</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">HTML + CSS + Javascript</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>HTML + CSS + Javascript</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="332180" data-answer-id="202934" data-hasop=""><b>已帮助用户</b><em>40</em></span>
                                <span class="oppose " data-ques-id="332180" data-answer-id="202934" data-hasop=""><em>9人反对</em></span>

                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="202934" data-ques-uid="4227647">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/2" target="_blank">
                                <img title="PHP" src="//img.mukewang.com/59e970190001280402400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/2" target="_blank">PHP</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="&nbsp;&nbsp;&nbsp;&nbsp;我如今学习编程纯属被调剂过来的，个人爱好文学（尤其诗歌）。在大学学了一段时间，就对编程有了很大的兴趣（对诗歌的爱好依然保存），我想以后写一个很厉害的个人网站（所以现在学的是PHP，大学专业是云计算）" class="ques-con-content" href="/wenda/detail/343319" target="_blank">请问大家最初学编程的梦想是什么？</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="229917">
                            <div class="user">

                                <a href="/u/2814321/bbs" target="_blank">最好的语言最菜的人</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">挣钱！挣钱！挣钱！！</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>挣钱！挣钱！挣钱！！<br></p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="343319" data-answer-id="229917" data-hasop=""><b>已帮助用户</b><em>96</em></span>
                                <span class="oppose " data-ques-id="343319" data-answer-id="229917" data-hasop=""><em>7人反对</em></span>
                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="229917" data-ques-uid="3118245">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/3" target="_blank">
                                <img title="JAVA" src="//img.mukewang.com/59e9700900012e3602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/3" target="_blank">JAVA</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="&amp;#36825;&amp;#20010;&amp;#24590;&amp;#20040;&amp;#20889;&amp;#65311;" class="ques-con-content" href="/wenda/detail/390810" target="_blank">定义一个学校类（其中包括的属性和行为），并创建对象进行引用</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="283249">
                            <div class="user">

                                <a href="/u/6562665/bbs" target="_blank">宝慕林5026421</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">应该多看看书</div>
                            <div class="answer-content-all rich-text aimgPreview"><p dir="ltr">应该多看看书</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="390810" data-answer-id="283249" data-hasop=""><b>已帮助用户</b><em>1</em></span>
                                <span class="oppose " data-ques-id="390810" data-answer-id="283249" data-hasop=""><em>0人反对</em></span>

                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="283249" data-ques-uid="6329435">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/3" target="_blank">
                                <img title="JAVA" src="//img.mukewang.com/59e9700900012e3602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/3" target="_blank">JAVA</a>
                            <a href="/wenda/35" target="_blank">大数据</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="我是信息管理与信息系统专业的，毕业也好几年了，经过这几年在社会上的经历，还是想学一门技术，我就想到了Java和数据分析，也是奔三的人了，现在也在纠结，现在在学这些技术，是不是已经晚了？" class="ques-con-content" href="/wenda/detail/322420" target="_blank">是不是现在学就晚了？</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="177664">
                            <div class="user">

                                <a href="/u/3565843/bbs" target="_blank">qq_小毛驴_43565843</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">你要真想学，难道别人说晚了你就不学了么？我都奔四的人了，依然0基础开始学习。</div>
                            <div class="answer-content-all rich-text aimgPreview"><p>你要真想学，难道别人说晚了你就不学了么？</p><p>我都奔四的人了，依然0基础开始学习。</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="322420" data-answer-id="177664" data-hasop=""><b>已帮助用户</b><em>117</em></span>
                                <span class="oppose " data-ques-id="322420" data-answer-id="177664" data-hasop=""><em>8人反对</em></span>

                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="177664" data-ques-uid="3638822">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/3" target="_blank">
                                <img title="JAVA" src="//img.mukewang.com/59e9700900012e3602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/3" target="_blank">JAVA</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="现在大三，还有三个多月我就想去找工作了，现在会javase，slq，html5+css这样能找到工作实习吗？" class="ques-con-content" href="/wenda/detail/344003" target="_blank">我现在的情况能找到工作吗？</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="231641">
                            <div class="user">

                                <a href="/u/3813249/bbs" target="_blank">ChiuMungZit_HK</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">看到SLQ感觉你有点危险。</div>
                            <div class="answer-content-all rich-text aimgPreview"><p><strong>看到SLQ感觉你有点危险。</strong></p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="344003" data-answer-id="231641" data-hasop=""><b>已帮助用户</b><em>336</em></span>
                                <span class="oppose " data-ques-id="344003" data-answer-id="231641" data-hasop=""><em>2人反对</em></span>
                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <!--<li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>-->

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
                                    <div class="do-reply-btn" data-answer-id="231641" data-ques-uid="4984745">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/28" target="_blank">
                                <img title="C" src="//img.mukewang.com/59e96e980001d29602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/28" target="_blank">C</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="我现在上高一学习编程要怎么学？要先学什么?" class="ques-con-content" href="/wenda/detail/362136" target="_blank">我现在上高一学习编程要怎么学？要先学什么?</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="261027">
                            <div class="user">

                                <span class="had-solve">已采纳</span>
                                <a href="/u/1862731/bbs" target="_blank">JAVAengineer</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">学泡妞，学什么编程</div>
                            <div class="answer-content-all rich-text aimgPreview"><p dir="ltr">学泡妞，学什么编程</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="362136" data-answer-id="261027" data-hasop=""><b>已帮助用户</b><em>117</em></span>
                                <span class="oppose " data-ques-id="362136" data-answer-id="261027" data-hasop=""><em>3人反对</em></span>
                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>

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
                                    <div class="do-reply-btn" data-answer-id="261027" data-ques-uid="5798953">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="/wenda/3" target="_blank">
                                <img title="JAVA" src="//img.mukewang.com/59e9700900012e3602400240.jpg">
                            </a>
                        </div><!--.tag-img end-->
                        <div class="from-tag">        来自
                            <a href="/wenda/3" target="_blank">JAVA</a>
                            <a href="/wenda/2" target="_blank">PHP</a>
                            <a href="/wenda/26" target="_blank">前端工具</a>
                        </div><!--.from-tag end-->
                        <div class="ques-con">
                            <a title="本人是大专应届毕业生，21岁，护理专业，现在想转行做IT。由于最近几天才开始接触IT行业，所以想请教各位大神：1.零基础没有工作经验从哪一块开始学起比较好找工作？2.女生适合从事哪一方面的工作比较有前途？3.是自学好还是报班好？(分类是随便选的，这个不作为参考）谢谢大家了！" class="ques-con-content" href="/wenda/detail/327470" target="_blank">大专女生想转行做IT，应该先学哪一块？</a>

                        </div>
                        <div class="answer-con first" id="answer-con" data-answer-id="190810">
                            <div class="user">

                                <a href="/u/2760782/bbs" target="_blank">慕大叔</a><span class="signature">回答：</span>
                            </div>
                            <div class="answer-content">因为是零基础，我不太建议你报班。先自己找点资料视频了解一下。虽然it行业目前是热门行业，但是你想有长远的发展的话纯看技术水平。请三思</div>
                            <div class="answer-content-all rich-text aimgPreview"><p><br>因为是零基础，我不太建议你报班。先自己找点资料视频了解一下。虽然it行业目前是热门行业，但是你想有长远的发展的话纯看技术水平。请三思</p></div>
                            <div class="ctrl-bar clearfix">
                                <span class="agree-with " data-ques-id="327470" data-answer-id="190810" data-hasop=""><b>已帮助用户</b><em>35</em></span>
                                <span class="oppose " data-ques-id="327470" data-answer-id="190810" data-hasop=""><em>2人反对</em></span>
                            </div><!--.ctrl-bar end-->
                        </div><!--.answer-con end-->
                        <div class="reply-con">
                            <ul class="reply-list">
                                <li>
                                    <div class="user-pic">
                                        <a href="?" target="_blank">
                                            <img src="/static/img/appbg.jpg" alt="?"/>
                                        </a>
                                    </div>&lt;!&ndash;.user end&ndash;&gt;
                                    <div class="user-info clearfix">
                                        <em>提问者</em>
                                        <a class="from-user" href="?">张三</a>
                                        <span>回复</span>
                                        <a class="to-user" href="?">李四</a>
                                        <span class="time">14小时前</span>
                                    </div>
                                    <div class="reply-content">显示本次终端运行路线，或者其他命令可以做我送来的数据，在地图上显示本次终端运行路线，或者其他命令可以做我需要在安卓终端上做个软件。</div>
                                    <div class="reply-btn">回复</div>
                                </li>

                            </ul><!--.reply-list end-->
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
                                    <div class="do-reply-btn" data-answer-id="190810" data-ques-uid="2889606">回复</div>
                                </div>
                            </div><!--.release-reply-con end-->
                        </div><!--.reply-con end-->
                    </div><!--.ques-answer end-->
                    <div class="page"><span class="disabled_page">首页</span><span class="disabled_page">上一页</span><a class="active text-page-tag" href="javascript:void(0)">1</a><a class="text-page-tag" href="/wenda/recommend/2">2</a><a class="text-page-tag" href="/wenda/recommend/3">3</a><a class="text-page-tag" href="/wenda/recommend/4">4</a><a class="text-page-tag" href="/wenda/recommend/5">5</a><a class="text-page-tag" href="/wenda/recommend/6">6</a><a class="text-page-tag" href="/wenda/recommend/7">7</a><a href="/wenda/recommend/2">下一页</a><a href="/wenda/recommend/2223">尾页</a></div>


                </div>
            </div>
            <div class="r wenda-slider">


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
                    <div class="tag-box clearfix">
                        <a href="">云计算</a>
                        <a href="">CSS3</a>
                        <a href="">Bootstrap</a>
                    </div><!--.tag-box end-->
                </div><!--.my-follow-class end-->

                <div class="hot-ques">
                    <h3 class="title">热门问题</h3>
                    <ul>
                        <c:forEach var="hotQuestion" items="${hotQuestion}">
                        <li>
                            <p class="content">
                                <a href="" target="_blank">${hotQuestion.questionContent} </a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="" target="_blank">${hotQuestion.lookNum} 浏览</a>
                                <a class="follow-num" href="" target="_blank">${hotQuestion.attentionNum} 关注</a>
                            </div>
                        </li>
                        </c:forEach>
                        <li>
                            <p class="content"><a href="/wenda/detail/390712" target="_blank">一个网站的前端和后台是怎么连接的，后台管理页面怎么做，怎么连接数据库，他们到底是什么...</a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/390712" target="_blank">1 浏览</a>
                                <a class="follow-num" href="/wenda/detail/390712" target="_blank">0 关注</a>
                            </div>
                        </li>
                        <li>
                            <p class="content"><a href="/wenda/detail/390606" target="_blank">定制网站需要掌握哪些知识</a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/390606" target="_blank">1 浏览</a>
                                <a class="follow-num" href="/wenda/detail/390606" target="_blank">0 关注</a>
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
                        <img alt="" src="//img.mukewang.com/59e96f340001faac02400240.jpg">
                        <span>JavaScript</span>
                    </li>
                    <li data-tag-id="13">
                        <img alt="" src="//img.mukewang.com/59e96f5d00011f3602400240.jpg">
                        <span>Node.js</span>
                    </li>
                    <li data-tag-id="52">
                        <img alt="" src="//img.mukewang.com/59e96deb0001f9d302400240.jpg">
                        <span>Vue.js</span>
                    </li>
                    <li data-tag-id="50">
                        <img alt="" src="//img.mukewang.com/59e96e0d0001a63a02400240.jpg">
                        <span>React.JS</span>
                    </li>
                    <li data-tag-id="14">
                        <img alt="" src="//img.mukewang.com/59e96f4f0001379302400240.jpg">
                        <span>Html5</span>
                    </li>
                    <li data-tag-id="5">
                        <img alt="" src="//img.mukewang.com/59e96ff90001ab0402400240.jpg">
                        <span>Html/CSS</span>
                    </li>
                    <li data-tag-id="22">
                        <img alt="" src="//img.mukewang.com/59e96ed90001e4e702400240.jpg">
                        <span>AngularJS</span>
                    </li>
                    <li data-tag-id="27">
                        <img alt="" src="//img.mukewang.com/59e96ea50001e08602400240.jpg">
                        <span>WebApp</span>
                    </li>
                    <li data-tag-id="15">
                        <img alt="" src="//img.mukewang.com/59e96f420001726302400240.jpg">
                        <span>JQuery</span>
                    </li>
                    <li class="active" data-tag-id="24">
                        <img alt="" src="//img.mukewang.com/59e96ecc0001850802400240.jpg">
                        <span>Bootstrap</span>
                    </li>
                    <li data-tag-id="26">
                        <img alt="" src="//img.mukewang.com/59e96eb100019d5902400240.jpg">
                        <span>前端工具</span>
                    </li>
                    <li class="active" data-tag-id="25">
                        <img alt="" src="//img.mukewang.com/59e96ebe0001a9ad02400240.jpg">
                        <span>CSS3</span>
                    </li>
                    <li data-tag-id="53">
                        <img alt="" src="//img.mukewang.com/59e96dd80001be3802400240.jpg">
                        <span>Sass/Less</span>
                    </li>
                    <li data-tag-id="3">
                        <img alt="" src="//img.mukewang.com/59e9700900012e3602400240.jpg">
                        <span>JAVA</span>
                    </li>
                    <li data-tag-id="18">
                        <img alt="" src="//img.mukewang.com/59e96f1c0001942802400240.jpg">
                        <span>Python</span>
                    </li>
                    <li data-tag-id="31">
                        <img alt="" src="//img.mukewang.com/59e96e6c0001108502400240.jpg">
                        <span>Go</span>
                    </li>
                    <li data-tag-id="2">
                        <img alt="" src="//img.mukewang.com/59e970190001280402400240.jpg">
                        <span>PHP</span>
                    </li>
                    <li data-tag-id="28">
                        <img alt="" src="//img.mukewang.com/59e96e980001d29602400240.jpg">
                        <span>C</span>
                    </li>
                    <li data-tag-id="30">
                        <img alt="" src="//img.mukewang.com/59e96e7800018e5502400240.jpg">
                        <span>C++</span>
                    </li>
                    <li data-tag-id="38">
                        <img alt="" src="//img.mukewang.com/59e96e2900010d7d02400240.jpg">
                        <span>C#</span>
                    </li>
                    <li data-tag-id="11">
                        <img alt="" src="//img.mukewang.com/59f2cdc30001916a02400240.jpg">
                        <span>MySQL</span>
                    </li>
                    <li data-tag-id="36">
                        <img alt="" src="//img.mukewang.com/59e96e370001ac0202400240.jpg">
                        <span>SQL Server</span>
                    </li>
                    <li data-tag-id="29">
                        <img alt="" src="//img.mukewang.com/59e96e890001d79b02400240.jpg">
                        <span>Oracle</span>
                    </li>
                    <li data-tag-id="8">
                        <img alt="" src="//img.mukewang.com/59e96fd30001e6e502400240.jpg">
                        <span>MongoDB</span>
                    </li>
                    <li data-tag-id="12">
                        <img alt="" src="//img.mukewang.com/59e96f7a0001117402400240.jpg">
                        <span>Android</span>
                    </li>
                    <li data-tag-id="19">
                        <img alt="" src="//img.mukewang.com/59e96f0a0001f87902400240.jpg">
                        <span>iOS</span>
                    </li>
                    <li data-tag-id="33">
                        <img alt="" src="//img.mukewang.com/59e96e6300011c3502400240.jpg">
                        <span>Unity 3D</span>
                    </li>
                    <li data-tag-id="34">
                        <img alt="" src="//img.mukewang.com/59e96e560001cb2902400240.jpg">
                        <span>Cocos2d-x</span>
                    </li>
                    <li data-tag-id="35">
                        <img alt="" src="//img.mukewang.com/59e96e4a0001989102400240.jpg">
                        <span>大数据</span>
                    </li>
                    <li class="active" data-tag-id="21">
                        <img alt="" src="//img.mukewang.com/59e96ee90001485b02400240.jpg">
                        <span>云计算</span>
                    </li>
                    <li data-tag-id="58">
                        <img alt="" src="//img.mukewang.com/5a4f53af0001b16d02400240.jpg">
                        <span>深度学习</span>
                    </li>
                    <li data-tag-id="57">
                        <img alt="" src="//img.mukewang.com/5a4f53bd00019af102400240.jpg">
                        <span>机器学习</span>
                    </li>
                    <li data-tag-id="51">
                        <img alt="" src="//img.mukewang.com/59e96df800014e9902400240.jpg">
                        <span>测试</span>
                    </li>
                    <li data-tag-id="20">
                        <img alt="" src="//img.mukewang.com/59e96ef70001954402400240.jpg">
                        <span>Linux</span>
                    </li>
                    <li data-tag-id="10">
                        <img alt="" src="//img.mukewang.com/59e96fab0001534402400240.jpg">
                        <span>Photoshop</span>
                    </li>
                    <li data-tag-id="7">
                        <img alt="" src="//img.mukewang.com/59e96fe20001da2602400240.jpg">
                        <span>Maya</span>
                    </li>
                    <li data-tag-id="9">
                        <img alt="" src="//img.mukewang.com/59e96fbe000168f102400240.jpg">
                        <span>Premiere</span>
                    </li>
                    <li data-tag-id="40">
                        <img alt="" src="//img.mukewang.com/59e96e1f000178aa02400240.jpg">
                        <span>ZBrush</span>
                    </li>
                    <li data-tag-id="39">
                        <img alt="" src="//img.mukewang.com/59e96db800015f3902400240.jpg">
                        <span>数据结构</span>
                    </li>
                    <li data-tag-id="54">
                        <img alt="" src="//img.mukewang.com/59e96dc70001bc0b02400240.jpg">
                        <span>Ruby</span>
                    </li>
                </ul>
                <div>
                    <input id='ok'onclick="tagonclick()" type="button" class="button green" value="        确    认        " />
                    <input id='cancel' type="button" class="button blue" value="        取    消        " />
                </div>
            </div><!--.tag-main end-->
        </div><!--.tag-pop end-->
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
            $("this").click(function() {
                alert(1);
//                var n=0;
//                alert(oLi[i].val());
                this.className = 'active';
                spans[n]=$(this).find("span").text();
                alert(spans[n]);
                n++;
            })

        )
    </script>

<%@ include file="../footer.jsp" %>
</body>
</html>
