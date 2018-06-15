<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/6
  Time: 10:04
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
    <title>话题详情</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <link href="static/user/talk/css/topicInfo.css" rel="stylesheet">


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


</head>
<body style="background-color: white">

<div id="main" style="margin-top:-20px">

    <!-- 顶部 -->
    <div class="issue-top">
        <!-- 面包屑 -->
        <div class="bread-box width-wrap">
            <a href="/wenda" target="_blank">论坛</a>
            <span>\</span>
            <a href="/wenda/issue" target="_blank">话题</a>
        </div>
        <!-- 面包屑 end-->

        <!-- 话题介绍 -->
        <div class="issue-box clearfix width-wrap">
            <div class="l issue-img-box">
                <!-- 话题状态 is_begin 1未开始 2已结束 3进行中-->
                <img alt="${topic.topicTitle}" src="${topic.topicImgurl}">
            </div>

            <div class="l issue-content">
                <h1 title="${topic.topicTitle}" class="issue-title more-ellipsis">${topic.topicTitle}</h1>
                <div class="issue-desc-box js-issue-desc-box">
                    <p class="MsoListParagraph" style='padding: 0px; color: rgb(77, 85, 93); line-height: 16.1px; text-indent: 32px; font-family: "PingFang SC", 微软雅黑, "Microsoft YaHei", Helvetica, "Helvetica Neue", Tahoma, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; margin-left: 28px; white-space: normal; background-color: rgb(255, 255, 255);'>            <span style="color: rgb(0, 0, 0); line-height: 18.4px; font-family: 微软雅黑, sans-serif; font-size: 16px;">
            </span>
                    </p>
                    <p style="background: white; line-height: 16px;">
                        <span style="color: rgb(0, 0, 0); font-family: 微软雅黑, sans-serif; font-size: 16px;">${topic.topicContent}
            </span>
                    </p>
                </div>
                <div class="issue-desc js-issue-description max-height-issue">
                    <p class="MsoListParagraph" style='padding: 0px; color: rgb(77, 85, 93); line-height: 16.1px; text-indent: 32px; font-family: "PingFang SC", 微软雅黑, "Microsoft YaHei", Helvetica, "Helvetica Neue", Tahoma, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; margin-left: 28px; white-space: normal; background-color: rgb(255, 255, 255);'>              <span style="color: rgb(0, 0, 0); line-height: 18.4px; font-family: 微软雅黑, sans-serif; font-size: 16px;">
               </span>
                    </p>
                    <p style="background: white; line-height: 16px;">               <span style="color: rgb(0, 0, 0); font-family: 微软雅黑, sans-serif; font-size: 16px;">${topic.topicContent}
               </span>
                    </p>
                    <p><span></span></p>
                    <p><span></span></p>
                    <!--<div class="look-more-box" style="display: block;">
                       <span>...</span>
                       <a class="look-more js-look-more" href="javascript:void(0);">查看更多<i class="imv2-arrow2_d look-more-icon"></i></a>
                     </div>
                    <div class="no-look-box" style="display: none;">
                       <a class="look-more js-nolook-more no-look" href="javascript:void(0);">收起更多<i class="imv2-arrow2_u look-more-icon"></i></a>
                    </div>-->
                </div>
                <div class="issue-bottom">
                    <a class="js-quiz quiz-btn l" href="${pageContext.request.contextPath }/user/seditor.action" target="_blank" data-topicid="27">参与话题</a>
                    <a class="js-quiz quiz-btn l" href="${pageContext.request.contextPath }/user/seditor.action" target="_blank" data-topicid="27">发布话题</a>
                </div>
            </div>
        </div>
        <!-- 话题介绍 end -->
    </div>
    <!-- 顶部 end -->

    <!-- 主体 -->
    <div class="issue-box width-wrap clearfix">
        <!-- 话题列表 -->
        <div class="issue-list-box l">

            <div class="issue-list-title clearfix">
                <a class="issue-ques-title l  on" href="">全部参与者</a>
            </div>
            <ul class="issue-list" id="issue-list">
              <c:forEach var="discussUsers" items="${discussUsers}">
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="${discussUsers.user.userImgurl}">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">${discussUsers.user.username}</a>
                            <a style="color:#999"><fmt:formatDate value="${discussUsers.discussDate}"/></a>
                        </div>
                        <a title="&nbsp;${discussUsers.discussContent}" class="issue-title" href="" target="_blank">${discussUsers.discussContent}</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="277994" data-ques-id="387476">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>5</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
              </c:forEach>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/01_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">兔兔dovika</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="
▎LOOK2
换一件衣服，牛仔裙立马Rock起来！再加上街头感十足的气垫造型运动凉鞋，燥起来也是So Easy！" class="issue-title" href="" target="_blank">
                            ▎LOOK2
                            换一件衣服，牛仔裙立马Rock起来！再加上街头感十足的气垫造型运动凉鞋，燥起来也是So Easy！</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="277994" data-ques-id="387476">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>5</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/04_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">小麦</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="
▎LOOK3
在夏天,墨镜不一定要带脸上，衬衫不一定要好好穿，牛仔裙更不一定要穿常规款！" class="issue-title" href="" target="_blank">
                            ▎LOOK3
                            在夏天,墨镜不一定要带脸上，衬衫不一定要好好穿，牛仔裙更不一定要穿常规款！</a>

                        <div class="has-answer clearfix">

                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="278014" data-ques-id="387496">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>4</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/08_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">不用擦洗</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="▎LOOK4
露肩连衣裙，爱臭美的懒癌星人只吃不减也不怕！" class="issue-title" href="/wenda/detail/383123" target="_blank">▎LOOK4
                            露肩连衣裙，爱臭美的懒癌星人只吃不减也不怕！</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="277994" data-ques-id="387476">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>5</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>

                    </div>

                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/10_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">沉鱼落雁</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="
▎LOOK5
蕾丝连衣裙外搭牛仔外套，踏着青草香，开启森林漫步模式。" class="issue-title" href="" target="_blank">
                            ▎LOOK5
                            蕾丝连衣裙外搭牛仔外套，踏着青草香，开启森林漫步模式。</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="277994" data-ques-id="387476">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>5</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/11_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">格格baby啊</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="
▎LOOK6
黑白色的连衣裙，好像是永远都穿不腻的命题，衣柜里都是它，却又少了它，自带亮点的不用动脑穿搭，你值得拥有。" class="issue-title" href="" target="_blank">
                            ▎LOOK6
                            黑白色的连衣裙，好像是永远都穿不腻的命题，衣柜里都是它，却又少了它，自带亮点的不用动脑穿搭，你值得拥有。</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="277994" data-ques-id="387476">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>5</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/15_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">piqiudaer</a>
                            <a style="color:#999">2018-04-28</a>

                        </div>
                        <a title="辣妈范玮琪身上穿的估计能算的上市17年的网红爆款了，侧面深色拼接对于下身比上身胖一些的mm来说简直是福音，外深内浅的色彩搭配显瘦度满分，还有所谓凹字型的设计就是正面裙摆处被裁出一块凹字缺口，露出更多的肌肤看起来有拉长腿部线条的神奇视觉效果。" class="issue-title" href="" target="_blank">辣妈范玮琪身上穿的估计能算的上市17年的网红爆款了，侧面深色拼接对于下身比上身胖一些的mm来说简直是福音，外深内浅的色彩搭配显瘦度满分，还有所谓凹字型的设计就是正面裙摆处被裁出一块凹字缺口，露出更多的肌肤看起来有拉长腿部线条的神奇视觉效果。</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="277994" data-ques-id="387476">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>5</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>

                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/17_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">大家闺秀</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="小葡萄试衣间牛仔裙和白色睡裙居然也能搭里面的睡裙比较长，也可以单独穿个人觉得如果牛仔裙是单排纽扣的款式会更好可是我没有纽扣款大家只能想象一下。" class="issue-title" href="" target="_blank">小葡萄试衣间牛仔裙和白色睡裙居然也能搭里面的睡裙比较长，也可以单独穿个人觉得如果牛仔裙是单排纽扣的款式会更好可是我没有纽扣款大家只能想象一下。</a>

                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="280534" data-ques-id="389245"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i><em>
                                    2</em></a>
                                <!-- 点赞end -->

                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/18_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">魔力召唤</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="第一套是我最爱的露肩款的裙子。因为我手臂超级多肉，露肩款是最遮肉的。这样的长裙穿着逛街，约会都适合，搭配浅色的包包。小女人的感觉。" class="issue-title" href="" target="_blank">第一套是我最爱的露肩款的裙子。因为我手臂超级多肉，露肩款是最遮肉的。这样的长裙穿着逛街，约会都适合，搭配浅色的包包。小女人的感觉。</a>
                        <div class="has-answer clearfix">

                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="279491" data-ques-id="388642"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i><em>
                                    3</em></a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/18_avatar_middle1.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">GvaFoo</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="这个夏天，把牛仔裙穿好就这么简单" class="issue-title" href="" target="_blank">这个夏天，把牛仔裙穿好就这么简单</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="277994" data-ques-id="387476">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>5</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/23_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">Lexi</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="夏天必备的牛仔裙只要这么穿就一定时髦" class="issue-title" href="" target="_blank">夏天必备的牛仔裙只要这么穿就一定时髦</a>
                        <div class="has-answer clearfix">

                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="279269" data-ques-id="388503"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i><em>
                                    3</em></a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/30_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">katrina</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="破洞牛仔是王道" class="issue-title" href="" target="_blank">破洞牛仔是王道</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="278750" data-ques-id="387484"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i><em>
                                    2</em></a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/32_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">Teresa</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="一条牛仔裙的千百种姿态" class="issue-title" href="/wenda/detail/332686" target="_blank">一条牛仔裙的千百种姿态</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="277994" data-ques-id="387476">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>5</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/33_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">Maria Jernov</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="这个夏日，你需要一条这样的拼接牛仔裙" class="issue-title" href="" target="_blank">这个夏日，你需要一条这样的拼接牛仔裙</a>

                        <div class="has-answer clearfix">

                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="278591" data-ques-id="387480"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i><em>
                                    1</em></a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/36_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">Summer</a>
                            <a style="color:#999">2018-04-28</a>

                        </div>
                        <a title="半裙可以说是夏天最能遮肉的裙子了，刚好到膝盖或者过了膝盖的长度能很明显的遮住臀部的赘肉" class="issue-title" target="_blank">半裙可以说是夏天最能遮肉的裙子了，刚好到膝盖或者过了膝盖的长度能很明显的遮住臀部的赘肉</a>
                        <div class="has-answer clearfix">

                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="278226" data-ques-id="387891"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i><em>
                                    1</em></a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/40_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">Seven</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="永不过时牛仔裙今夏再登场" class="ques-con-content" href="" target="_blank">永不过时牛仔裙今夏再登场</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="278170" data-ques-id="387688"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i><em>
                                    5</em></a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/41_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">katrinaaa</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="A字短裙在手，魅力不怕没有" class="issue-title" href="" target="_blank">A字短裙在手，魅力不怕没有</a>

                        <div class="has-answer clearfix">

                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="278168" data-ques-id="387693"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i><em>
                                    4</em></a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/44_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">阮阮</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="纯白色的夏天清爽变时髦" class="issue-title" href="" target="_blank">纯白色的夏天清爽变时髦</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="277994" data-ques-id="387476">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>5</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/46_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">Meng.Li</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="裤子靠边站，裙子才是这个季节的主角啊" class="issue-title" href="" target="_blank">裤子靠边站，裙子才是这个季节的主角啊</a>
                        <div class="has-answer clearfix">

                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="278052" data-ques-id="387481"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i><em>
                                    3</em></a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/47_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">邑</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <a title="女人在你的年龄 穿你的裙子" class="issue-title" href="" target="_blank">女人在你的年龄 穿你的裙子</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="278037" data-ques-id="387482"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i><em>
                                    15</em></a>
                                <!-- 点赞end -->
                            </div>
                        </div>
                    </div>
                </li>
                <li class="issue-item js-issue-item clearfix">
                    <a class="tag-img l" href="" target="_blank">
                        <img src="static/user/talk/image/50_avatar_middle.jpg">
                    </a>
                    <div class="issue-content-box l">
                        <div class="tag-box">
                            <a href="" target="_blank">刘方仪</a>
                            <a style="color:#999">2018-04-28</a>

                        </div>
                        <a title="衬衫与裙子是命中注定的相爱" class="issue-title" href="" target="_blank">衬衫与裙子是命中注定的相爱</a>
                        <div class="has-answer clearfix">
                            <div class="answer-bottom clearfix">
                                <!-- 点赞 -->
                                <a class="l js-parise-btn issue-btn " href="javascript:void(0);" data-hasop="" data-answer-id="277994" data-ques-id="387476">
                                    <i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png"></i>
                                    <em>5</em>
                                </a>
                                <!-- 点赞end -->
                            </div>
                        </div>

                    </div>
                </li>

            </ul>
            <!-- 分页 -->
            <!-- 分页 end -->
        </div>
        <!-- 话题列表end -->

        <!-- 话题右侧 -->
        <div class="issue-right-box r">
            <!-- 话题说明 -->
            <%--<p class="smalle-title">话题信息</p>--%>
            <%--<div class="issue-intro-box">--%>
                <%--<!-- 标签 -->--%>
                <%--<p class="tag-title">话题相关标签</p>--%>
                <%--<div class="tag-box">--%>
                    <%--<a class="tag" href="" target="_blank">穿搭</a>--%>
                    <%--<a class="tag" href="" target="_blank">裙子</a>--%>
                    <%--<a class="tag" href="" target="_blank">夏天</a>--%>
                <%--</div>--%>
                <%--<!-- 标签end -->--%>
            <%--</div>--%>
            <!-- 话题说明 end -->
            <!--.hot-ques-->
            <div class="hot-ques" style="margin-top: 40px">
                <h3 class="title">热门话题</h3>
                <ul>
                    <c:forEach var="tlistr" items="${tlistr}" begin="0" end="5">
                        <li>
                            <p class="content"><a href="" target="_blank">${tlistr.topicTitle}</a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/390322" target="_blank">${tlistr.topicPeople} 回答</a>
                                <a class="follow-num" href="/wenda/detail/390322" target="_blank">1 关注</a>

                            </div>
                        </li>
                    </c:forEach>
                    <li>
                        <p class="content"><a href="" target="_blank">Slip Dress，复古与个性，姑娘的选择与挑战</a></p>
                        <div class="info-bar clearfix">
                            <a class="answer-num" href="/wenda/detail/390033" target="_blank">12 回答</a>
                            <a class="follow-num" href="/wenda/detail/390033" target="_blank">1 关注</a>

                        </div>
                    </li>
                    <li>
                        <p class="content"><a href="/wenda/detail/389877" target="_blank">FASHION丨一件单品多重风格-随意切换的帽子戏法儿</a></p>
                        <div class="info-bar clearfix">
                            <a class="answer-num" href="/wenda/detail/389877" target="_blank">12 回答</a>
                            <a class="follow-num" href="/wenda/detail/389877" target="_blank">0 关注</a>

                        </div>
                    </li>
                    <li>
                        <p class="content"><a href="/wenda/detail/390184" target="_blank">史上最全遮肉显瘦穿衣指南 </a></p>
                        <div class="info-bar clearfix">
                            <a class="answer-num" href="/wenda/detail/390184" target="_blank">9 回答</a>
                            <a class="follow-num" href="/wenda/detail/390184" target="_blank">1 关注</a>

                        </div>
                    </li>
                    <li>
                        <p class="content"><a href="/wenda/detail/390226" target="_blank">25套超美冰激凌色穿搭 照着穿显瘦又减龄~ </a></p>
                        <div class="info-bar clearfix">
                            <a class="answer-num" href="/wenda/detail/390226" target="_blank">9 回答</a>
                            <a class="follow-num" href="/wenda/detail/390226" target="_blank">0 关注</a>

                        </div>
                    </li>
                </ul>
                <!--ul end-->
            </div>
            <!--.hot-ques end-->
            <!-- 回答雷锋榜 -->
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
                                    <a href="" target="_blank">
                                        <img title="是谁再呼叫舰队" src="static/user/talk/image/53_avatar_middle.jpg.gif">
                                    </a>
                                </div>
                                <!--.user-pic end-->
                                <div class="user-name">
                                    <a href="" target="_blank">是谁再呼叫舰队...</a>
                                </div>
                                <!--.user-name end-->
                                <div class="user-info clearfix">
                                    <span class="role">尤银湿人</span>
                                    <span class="answer-num">12回答</span>
                                </div>
                                <!--.user-info end-->
                            </li>
                            <li>
                                <div class="ranking third">3</div>
                                <div class="user-pic">
                                    <a href="" target="_blank">
                                        <img title="魔力召唤 " src="static/user/talk/image/60_avatar_middle.jpg">
                                    </a>
                                </div>
                                <!--.user-pic end-->
                                <div class="user-name">
                                    <a href="" target="_blank">魔力召唤 </a>
                                </div>
                                <!--.user-name end-->
                                <div class="user-info clearfix">
                                    <span class="role">时尚达人</span>
                                    <span class="answer-num">4回答</span>
                                </div>
                                <!--.user-info end-->
                            </li>
                            <li>
                                <div class="ranking ">4</div>
                                <div class="user-pic">
                                    <a href="" target="_blank">
                                        <img title="seojianz" src="static/user/talk/image/54_avatar_middle1.jpg">
                                    </a>
                                </div>
                                <!--.user-pic end-->
                                <div class="user-name">
                                    <a href="" target="_blank">seojianz</a>
                                </div>
                                <!--.user-name end-->
                                <div class="user-info clearfix">
                                    <span class="role">奥特兄弟</span>
                                    <span class="answer-num">3回答</span>
                                </div>
                                <!--.user-info end-->
                            </li>
                            <li>
                                <div class="ranking ">5</div>
                                <div class="user-pic">
                                    <a href="" target="_blank">
                                        <img title="小哈哈v" src="static/user/talk/image/60_avatar_middle1.jpg">
                                    </a>
                                </div>
                                <!--.user-pic end-->
                                <div class="user-name">
                                    <a href="" target="_blank">小哈哈v</a>
                                </div>
                                <!--.user-name end-->
                                <div class="user-info clearfix">
                                    <span class="role">奥特兄弟</span>
                                    <span class="answer-num">2回答</span>
                                </div>
                                <!--.user-info end-->
                            </li>
                        </ul>

                    </div>

                    <div class="tabdiv leifeng-tab-box leifeng-week js-leifeng-tab-box" data-type="week" style="display:block;">
                        <ul id="bb" class="leifeng-tab-box-min">
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
                                    <a href="" target="_blank">
                                        <img title="qq_炫_03909954" src="static/user/talk/image/99_avatar_middle.jpg">
                                    </a>
                                </div>
                                <!--.user-pic end-->
                                <div class="user-name">
                                    <a href="" target="_blank">qq_炫_03909954</a>
                                </div>
                                <!--.user-name end-->
                                <div class="user-info clearfix">
                                    <span class="role">奥特兄弟</span>
                                    <span class="answer-num">22回答</span>
                                </div>
                                <!--.user-info end-->
                            </li>
                            <li>
                                <div class="ranking third">3</div>
                                <div class="user-pic">
                                    <a href="" target="_blank">
                                        <img title="TamborTang" src="static/user/talk/image/96_avatar_middle.jpg">
                                    </a>
                                </div>
                                <!--.user-pic end-->
                                <div class="user-name">
                                    <a href="" target="_blank">TamborTang</a>
                                </div>
                                <!--.user-name end-->
                                <div class="user-info clearfix">
                                    <span class="role">奥特兄弟</span>
                                    <span class="answer-num">21回答</span>
                                </div>
                                <!--.user-info end-->
                            </li>
                            <li>
                                <div class="ranking ">4</div>
                                <div class="user-pic">
                                    <a href="" target="_blank">
                                        <img title="Keyro" src="static/user/talk/image/94_avatar_middle.jpg">
                                    </a>
                                </div>
                                <!--.user-pic end-->
                                <div class="user-name">
                                    <a href="" target="_blank">Keyro</a>
                                </div>
                                <!--.user-name end-->
                                <div class="user-info clearfix">
                                    <span class="role">摩登初上</span>
                                    <span class="answer-num">16回答</span>
                                </div>
                                <!--.user-info end-->
                            </li>
                            <li>
                                <div class="ranking ">5</div>
                                <div class="user-pic">
                                    <a href="" target="_blank">
                                        <img title="amani" src="static/user/talk/image/93_avatar_middle.jpg">
                                    </a>
                                </div>
                                <!--.user-pic end-->
                                <div class="user-name">
                                    <a href="" target="_blank">amani</a>
                                </div>
                                <!--.user-name end-->
                                <div class="user-info clearfix">
                                    <span class="role">摩登初上</span>
                                    <span class="answer-num">16回答</span>
                                </div>
                                <!--.user-info end-->
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
        <!-- 话题右侧end -->
    </div>


</div>


<div class="footer" style="height:450px;">
    <div class="footer-wrap">
        <div class="footer-info clearfix">
            <div class="footer-address col-md-6">
                <div class="footer-logo">
                    <span></span>
                    <h3>iFashion</h3>
                </div>
                <p>郑州航空工业管理学院东校区</p>
                <p>客服电话：000-000-0000</p>
                <p>邮箱：11111111@qq.com</p>
            </div>
            <div class="footer-nav col-md-6 clearfix">
                <dl class="col-md-4">
                    <dt><span>关于iFashion</span></dt>
                    <dd><a href="">网站地图</a></dd>
                    <dd><a href="">版权声明</a></dd>
                    <dd><a href="">加入我们</a></dd>
                    <dd><a href="">联系我们</a></dd>
                </dl>
                <dl class="col-md-4">
                    <dt><span>iFashion产品</span></dt>
                    <dd><a href="">穿衣搭配</a></dd>
                    <dd><a href="">社区精选</a></dd>
                    <dd><a href="">私人订制</a></dd>
                    <dd><a href="">资讯</a></dd>
                </dl>
                <dl class="col-md-4">
                    <dt><span>商业合作</span></dt>
                    <dd><a href="" target="_blank">设计师合作</a></dd>
                    <dd><a class="kol-join">杂志合作</a></dd>
                    <dd><a class="kol-join">媒体合作</a></dd>
                </dl>
            </div>
        </div>
        <div class="copyright">
            <p>Copyright ©2016 京 ICP 备 16021078 号</p>
            <p>ICP 号: 京 B2-20170261</p>
        </div>
    </div>
</div>


</body>
</html>

