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


<%--<%@ include file="../footer.jsp" %>--%>
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
    <title>论坛</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">
    <%--其他css--%>
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

</head>
<body style="background-color: white">
<%@ include file="../header.jsp" %>
<div id="main" style="margin-top:-40px">

    <div class="wenda clearfix">
        <div class="js-layout-change">
            <div class="l wenda-main">
                <div class="wd-top-slogan">
                    <span>时尚人士自己的问答社区</span>
                    <a class="js-quiz" href="${pageContext.request.contextPath }/user/seditor.action">我要提问</a>
                </div>
                <div class="nav">
                    <a class="active" href="">推荐</a>
                    <a href="">最新</a>
                    <a href="user/topic.action">话题</a>
                    <a href="user/question.action">问题</a>


                </div>
                <!--.nav end-->


                <!--推荐位-->
                <ul class="recommend">
                    <li>
                        <a class="recommend-tag canlink" href="">本期话题&nbsp;&nbsp;></a>
                        <a title="${topic.topicTitle}" class="recommend-link" href="" target="_blank" data-ast="yuanwenindex_1_1499">${topic.topicTitle}</a>
                    </li>
                </ul>
                <!--recommend end-->



                <!--左侧列表内容-->
                <div class="wenda-list">

                  <c:forEach var="discussUsers" items="${discussUsers}">
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="${discussUsers.user.userImgurl}">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">${discussUsers.user.username}</a>
                            <a style="color:#999"><fmt:formatDate value="${discussUsers.discussDate}"/></a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="&nbsp;${discussUsers.discussContent}" class="ques-con-content" href="user/forumInfo.action" target="_blank">${discussUsers.discussContent}</a>

                        </div>
                    </div>
                  </c:forEach>


                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/01_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">兔兔dovika</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="
▎LOOK2
换一件衣服，牛仔裙立马Rock起来！再加上街头感十足的气垫造型运动凉鞋，燥起来也是So Easy！" class="ques-con-content" href="" target="_blank">
                                ▎LOOK2
                                换一件衣服，牛仔裙立马Rock起来！再加上街头感十足的气垫造型运动凉鞋，燥起来也是So Easy！</a>

                        </div>

                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer no-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/04_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">小麦</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="
▎LOOK3
在夏天,墨镜不一定要带脸上，衬衫不一定要好好穿，牛仔裙更不一定要穿常规款！" class="ques-con-content" href="" target="_blank">
                                ▎LOOK3
                                在夏天,墨镜不一定要带脸上，衬衫不一定要好好穿，牛仔裙更不一定要穿常规款！</a>
                        </div>
                        <!--.ques-con end-->
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/08_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">不用擦洗</a>
                            <a style="color:#999">2018-04-28</a>

                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="▎LOOK4
露肩连衣裙，爱臭美的懒癌星人只吃不减也不怕！" class="ques-con-content" href="/wenda/detail/383123" target="_blank">▎LOOK4
                                露肩连衣裙，爱臭美的懒癌星人只吃不减也不怕！</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/10_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">沉鱼落雁</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="
▎LOOK5
蕾丝连衣裙外搭牛仔外套，踏着青草香，开启森林漫步模式。" class="ques-con-content" href="" target="_blank">
                                ▎LOOK5
                                蕾丝连衣裙外搭牛仔外套，踏着青草香，开启森林漫步模式。</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/11_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">格格baby啊</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="
▎LOOK6
黑白色的连衣裙，好像是永远都穿不腻的命题，衣柜里都是它，却又少了它，自带亮点的不用动脑穿搭，你值得拥有。" class="ques-con-content" href="" target="_blank">
                                ▎LOOK6
                                黑白色的连衣裙，好像是永远都穿不腻的命题，衣柜里都是它，却又少了它，自带亮点的不用动脑穿搭，你值得拥有。</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer no-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/15_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">piqiudaer</a>
                            <a style="color:#999">2018-04-28</a>

                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="辣妈范玮琪身上穿的估计能算的上市17年的网红爆款了，侧面深色拼接对于下身比上身胖一些的mm来说简直是福音，外深内浅的色彩搭配显瘦度满分，还有所谓凹字型的设计就是正面裙摆处被裁出一块凹字缺口，露出更多的肌肤看起来有拉长腿部线条的神奇视觉效果。" class="ques-con-content" href="" target="_blank">辣妈范玮琪身上穿的估计能算的上市17年的网红爆款了，侧面深色拼接对于下身比上身胖一些的mm来说简直是福音，外深内浅的色彩搭配显瘦度满分，还有所谓凹字型的设计就是正面裙摆处被裁出一块凹字缺口，露出更多的肌肤看起来有拉长腿部线条的神奇视觉效果。</a>
                        </div>
                        <!--.ques-con end-->
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/17_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">大家闺秀</a>
                            <a style="color:#999">2018-04-28</a>

                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="小葡萄试衣间牛仔裙和白色睡裙居然也能搭里面的睡裙比较长，也可以单独穿个人觉得如果牛仔裙是单排纽扣的款式会更好可是我没有纽扣款大家只能想象一下。" class="ques-con-content" href="" target="_blank">小葡萄试衣间牛仔裙和白色睡裙居然也能搭里面的睡裙比较长，也可以单独穿个人觉得如果牛仔裙是单排纽扣的款式会更好可是我没有纽扣款大家只能想象一下。</a>

                        </div>


                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer no-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/18_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">魔力召唤</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="第一套是我最爱的露肩款的裙子。因为我手臂超级多肉，露肩款是最遮肉的。这样的长裙穿着逛街，约会都适合，搭配浅色的包包。小女人的感觉。" class="ques-con-content" href="" target="_blank">第一套是我最爱的露肩款的裙子。因为我手臂超级多肉，露肩款是最遮肉的。这样的长裙穿着逛街，约会都适合，搭配浅色的包包。小女人的感觉。</a>
                        </div>
                        <!--.ques-con end-->
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer no-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/18_avatar_middle1.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">GvaFoo</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="这个夏天，把牛仔裙穿好就这么简单" class="ques-con-content" href="" target="_blank">这个夏天，把牛仔裙穿好就这么简单</a>
                        </div>
                        <!--.ques-con end-->
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/23_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">Lexi</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="夏天必备的牛仔裙只要这么穿就一定时髦" class="ques-con-content" href="" target="_blank">夏天必备的牛仔裙只要这么穿就一定时髦</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/30_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">katrina</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="破洞牛仔是王道" class="ques-con-content" href="" target="_blank">破洞牛仔是王道</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/32_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">Teresa</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="一条牛仔裙的千百种姿态" class="ques-con-content" href="/wenda/detail/332686" target="_blank">一条牛仔裙的千百种姿态</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/33_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">Maria Jernov</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="这个夏日，你需要一条这样的拼接牛仔裙" class="ques-con-content" href="" target="_blank">这个夏日，你需要一条这样的拼接牛仔裙</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/36_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">Summer</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="半裙可以说是夏天最能遮肉的裙子了，刚好到膝盖或者过了膝盖的长度能很明显的遮住臀部的赘肉" target="_blank">半裙可以说是夏天最能遮肉的裙子了，刚好到膝盖或者过了膝盖的长度能很明显的遮住臀部的赘肉</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer no-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/40_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">Seven</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="永不过时牛仔裙今夏再登场" class="ques-con-content" href="" target="_blank">永不过时牛仔裙今夏再登场</a>
                        </div>
                        <!--.ques-con end-->
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer no-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/41_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">katrinaaa</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="A字短裙在手，魅力不怕没有" class="ques-con-content" href="" target="_blank">A字短裙在手，魅力不怕没有</a>
                        </div>
                        <!--.ques-con end-->
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/44_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">阮阮</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="纯白色的夏天清爽变时髦" class="ques-con-content" href="" target="_blank">纯白色的夏天清爽变时髦</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer no-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/46_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">Meng.Li</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="裤子靠边站，裙子才是这个季节的主角啊" class="ques-con-content" href="" target="_blank">裤子靠边站，裙子才是这个季节的主角啊</a>
                        </div>
                        <!--.ques-con end-->

                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/47_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">邑</a>
                            <a style="color:#999">2018-04-28</a>
                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="女人在你的年龄 穿你的裙子" class="ques-con-content" href="" target="_blank">女人在你的年龄 穿你的裙子</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="ques-answer">
                        <div class="tag-img">
                            <a href="" target="_blank">
                                <img src="static/user/talk/image/50_avatar_middle.jpg">
                            </a>
                        </div>
                        <!--.tag-img end-->
                        <div class="from-tag"> 来自
                            <a href="" target="_blank">刘方仪</a>
                            <a style="color:#999">2018-04-28</a>

                        </div>
                        <!--.from-tag end-->
                        <div class="ques-con">
                            <a title="衬衫与裙子是命中注定的相爱" class="ques-con-content" href="" target="_blank">衬衫与裙子是命中注定的相爱</a>

                        </div>
                    </div>
                    <!--.ques-answer end-->
                    <div class="page"><span class="disabled_page">首页</span><span class="disabled_page">上一页</span><a class="active text-page-tag" href="javascript:void(0)">1</a>
                        <a class="text-page-tag" href="">2</a>
                        <a class="text-page-tag" href="">3</a>
                        <a class="text-page-tag" href="">4</a>
                        <a class="text-page-tag" href="">5</a>
                        <a class="text-page-tag" href="">6</a>
                        <a class="text-page-tag" href="">7</a>
                        <a href="">下一页</a><a href="">尾页</a></div>


                </div>
            </div>
            <div class="r wenda-slider">


                <div class="user-about">
                    <div class="user-info">
                        <div class="user-pic">
                            <a href="">
                                <img alt="AvaFoo" src="static/user/talk/image/01_avatar_middle.jpg">
                            </a>
                        </div>
                        <div class="user-name">
                            <a href="">AvaFoo</a>
                        </div>
                        <div class="integral-info clearifx">
                            <a class="integral" href="/u/4261959/credit">时尚值：100</a>

                        </div>
                    </div>
                    <!--.user-info end-->
                    <div class="user-action">
                        <span class="ques"><a href="">提问</a><!-- <i></i>--></span>
                        <span class="reply"><a href="">回答</a></span>
                        <span class="follow"><a href="">关注</a></span>
                    </div>
                    <!--.user-action end-->
                </div>
                <!--.user-about end-->

                <!--.my-follow-class登录后可见-->
                <!--<div class="my-follow-class">
                    <h3>我关注的分类 </h3>
                    <div class="no-tag">
                        <h4>您还没有关注任何分类</h4>
                        <div class="follow-immediately">马上关注</div>
                    </div>
                    <!--.no-tag end
                </div>-->
                <div class="hot-ques">
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
                                <li>
                                    <div class="ranking first">1</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="小草1434" src="static/user/talk/image/noavatar_middle.gif.jpg">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">小草1434</a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">奥特兄弟</span>
                                        <span class="answer-num">27回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
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
                <!--.leifeng-sort end-->
            </div>
        </div>
    </div>
</div>


<div class="footer" style="margin-top:50px; height:450px;">
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
