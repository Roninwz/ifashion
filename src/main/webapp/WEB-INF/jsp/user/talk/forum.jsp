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
<div id="main" style="margin-top:-40px">

    <div class="wenda clearfix">
        <div class="js-layout-change">
            <div class="l wenda-main">
                <div class="wd-top-slogan">
                    <span>时尚人士自己的问答社区</span>
                    <a class="js-quiz" href="${pageContext.request.contextPath }/user/seditor1.action">我要发布</a>
                </div>
                <div class="nav">
                    <a class="active" href="${pageContext.request.contextPath }/user/forum.action">推荐</a>
                    <a href="javascript:void(0)" onclick="wait(this)">等待回答</a>
                    <a href="${pageContext.request.contextPath }/user/topic.action">话题</a>
                    <a href="${pageContext.request.contextPath }/user/question.action">问题</a>


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
                <div class="wenda-list" id="issue-list">

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
                            <a title="&nbsp;${discussUsers.discussTitle}" class="ques-con-content" href="${pageContext.request.contextPath }/user/forumInfo.action?discussId=${discussUsers.discussId}" target="_blank">${discussUsers.discussTitle}</a>

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
换一件衣服，牛仔裙立马Rock起来！再加上街头感十足的气垫造型运动凉鞋，燥起来也是So Easy！" class="ques-con-content" href="" target="_blank">
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
在夏天,墨镜不一定要带脸上，衬衫不一定要好好穿，牛仔裙更不一定要穿常规款！" class="ques-con-content" href="" target="_blank">
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
                            <a title="
露肩连衣裙，爱臭美的懒癌星人只吃不减也不怕！" class="ques-con-content" href="/wenda/detail/383123" target="_blank">
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
蕾丝连衣裙外搭牛仔外套，踏着青草香，开启森林漫步模式。" class="ques-con-content" href="" target="_blank">
                                蕾丝连衣裙外搭牛仔外套，踏着青草香，开启森林漫步模式。</a>

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
                            <a title="
半裙可以说是夏天最能遮肉的裙子了，刚好到膝盖或者过了膝盖的长度能很明显的遮住臀部的赘肉" class="ques-con-content" href="" target="_blank">
                                半裙可以说是夏天最能遮肉的裙子了，刚好到膝盖或者过了膝盖的长度能很明显的遮住臀部的赘肉</a>

                        </div>
                    </div>
                    <div class="ques-answer">
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
                            <a title="
永不过时牛仔裙今夏再登场" class="ques-con-content" href="" target="_blank">
                                永不过时牛仔裙今夏再登场</a>

                        </div>
                    </div>
                    <div class="ques-answer">
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
                            <a title="
A字短裙在手，魅力不怕没有" class="ques-con-content" href="" target="_blank">
                                A字短裙在手，魅力不怕没有</a>

                        </div>
                    </div>
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
                            <a title="
纯白色的夏天清爽变时髦" class="ques-con-content" href="" target="_blank">
                                纯白色的夏天清爽变时髦</a>

                        </div>
                    </div>
                    <div class="ques-answer">
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
                            <a title="
裤子靠边站，裙子才是这个季节的主角啊" class="ques-con-content" href="" target="_blank">
                                裤子靠边站，裙子才是这个季节的主角啊</a>

                        </div>
                    </div>
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
                            <a title="
女人在你的年龄 穿你的裙子" class="ques-con-content" href="" target="_blank">
                                女人在你的年龄 穿你的裙子</a>

                        </div>
                    </div>

                    <div class="page">
                        <a href="${pageContext.request.contextPath}/user/forum.action?curPage=1">首页</a>
                        <span class="disabled_page">
                            <c:if test="${pageInfo.hasPreviousPage}">
                                    <a href="${pageContext.request.contextPath}/user/forum.action?curPage=${pageInfo.pageNum-1}" aria-label="Previous">
                                        <span aria-hidden="true">上一页</span>
                                    </a>
                            </c:if>
                        </span>

                        <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                            <c:if test="${page_num == pageInfo.pageNum}">
                                <a class="active text-page-tag" href="javascript:void(0)">${page_num}</a>
                            </c:if>
                            <c:if test="${page_num != pageInfo.pageNum}">
                                <a class="text-page-tag"  href="${pageContext.request.contextPath}/user/forum.action?curPage=${page_num}">${page_num}</a>
                            </c:if>
                        </c:forEach>
                        <c:choose>
                            <c:when test="${pageInfo.hasNextPage}">
                                <a href="${pageContext.request.contextPath}/user/forum.action?curPage=${pageInfo.pageNum+1}" aria-label="Next">
                                    <span aria-hidden="true">下一页</span>
                                </a>
                            </c:when>
                        </c:choose>
                        <a href="${pageContext.request.contextPath}/user/forum.action?curPage=${pageInfo.pages}">尾页</a>
                    </div>


                </div>
            </div>
            <div class="r wenda-slider">

              <c:if test="${not empty user}">
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
              </c:if>
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
                                <p class="content">
                                    <a href="${pageContext.request.contextPath }/user/topicInfo.action?topicId=2" target="_blank">${tlistr.topicTitle}</a>
                                </p>
                                <div class="info-bar clearfix">
                                    <a class="answer-num" href="/wenda/detail/390322" target="_blank">${tlistr.topicPeople} 回答</a>
                                    <a class="follow-num" href="/wenda/detail/390322" target="_blank">1 关注</a>

                                </div>
                            </li>
                        </c:forEach>
                        <li>
                            <p class="content"><a href="${pageContext.request.contextPath }/user/topicInfo.action?topicId=2" target="_blank">Slip Dress，复古与个性，姑娘的选择与挑战</a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/390033" target="_blank">12 回答</a>
                                <a class="follow-num" href="/wenda/detail/390033" target="_blank">1 关注</a>

                            </div>
                        </li>
                        <li>
                            <p class="content"><a href="${pageContext.request.contextPath }/user/topicInfo.action?topicId=2" target="_blank">FASHION丨一件单品多重风格-随意切换的帽子戏法儿</a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/389877" target="_blank">12 回答</a>
                                <a class="follow-num" href="/wenda/detail/389877" target="_blank">0 关注</a>

                            </div>
                        </li>
                        <li>
                            <p class="content"><a href="${pageContext.request.contextPath }/user/topicInfo.action?topicId=2" target="_blank">史上最全遮肉显瘦穿衣指南 </a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/390184" target="_blank">9 回答</a>
                                <a class="follow-num" href="/wenda/detail/390184" target="_blank">1 关注</a>

                            </div>
                        </li>
                        <li>
                            <p class="content"><a href="${pageContext.request.contextPath }/user/topicInfo.action?topicId=2" target="_blank">25套超美冰激凌色穿搭 照着穿显瘦又减龄~ </a></p>
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
