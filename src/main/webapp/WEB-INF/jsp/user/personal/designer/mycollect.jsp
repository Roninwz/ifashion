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


    <!-- 公用css  -->
    <link href="static/user/person/css/admin.css" rel="stylesheet" type="text/css">
    <link href="static/user/person/css/amazeui.css" rel="stylesheet" type="text/css">
    <!--  个人中心共用的 -->
    <link href="static/user/designer/css/personal.css" rel="stylesheet" type="text/css">
    <link href="static/user/designer/css/2.css" rel="stylesheet" type="text/css">


    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>


    <script src="static/user/person/js/amazeui.js" type="text/javascript"></script>


</head>
<body style="background-color: white">
<div class="bg">
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

<%--<div class="wrapper small_menu">--%>
    <%--<ul class="menu_small_buttons">--%>
        <%--<li><a title="General Info" class="i_22_dashboard" href="index.html"></a></li>--%>
        <%--<li><a title="Your Messages" class="i_22_inbox smActive" href="inbox.html"></a></li>--%>
        <%--<li><a title="Visual Data" class="i_22_charts" href="charts.html"></a></li>--%>
        <%--<li><a title="Kit elements" class="i_22_ui" href="ui.html"></a></li>--%>
        <%--<li><a title="Some Rows" class="i_22_tables" href="tables.html"></a></li>--%>
        <%--<li><a title="Some Fields" class="i_22_forms" href="forms.html"></a></li>--%>
    <%--</ul>--%>
<%--</div>--%>

<div class="wrapper contents_wrapper">

    <aside class="sidebar">
        <ul class="tab_nav">
            <li class="i_32_dashboard">
                <a href="${pageContext.request.contextPath}/designer/design.action" title="设计之家">
                    <span class="tab_label">设计之家</span>

                </a>
            </li>
            <li class="active_tab i_32_inbox">
                <a href="${pageContext.request.contextPath}/user/mycollections.action" title="我的收藏">
                    <span class="tab_label">我的收藏</span>

                </a>
            </li>
            <li class="i_32_charts">
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

            <div class="user-news">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的收藏</strong> / <small>Collection</small></div>
                </div>
                <hr/>

                <div class="am-tabs am-tabs-d2" data-am-tabs>
                    <ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">文章收藏</a></li>
                        <li><a href="#tab2">话题收藏</a></li>
                        <%--<li><a href="#tab3">交易信息</a></li>--%>

                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                            <div class="issue-list">
                                <ul class="issue-box">
                                    <c:forEach var="collectArticle" items="${collectArticles}">
                                    <li class="issue-item clearfix">
                                        <a class="l issue-img-box" href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${collectArticle.articleUserVo.articleId}" target="_blank">
                                            <img class="l issue-img" alt="${collectArticle.articleUserVo.articleTitle}" src="${collectArticle.articleUserVo.imgurl}">

                                        </a>
                                        <div class="issue-content l">
                                            <p class="issue-title">

                                                <a title="${collectArticle.articleUserVo.articleTitle}" href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${collectArticle.articleUserVo.articleId}" target="_blank">${collectArticle.articleUserVo.articleTitle}</a>
                                                <%--<a style="float:right; margin-top:-30px">--%>
                                                    <%--<img src="static/user/talk/image/attention.png">--%>
                                                <%--</a>--%>
                                            </p>
                                            <p title="${collectArticle.articleUserVo.imgmark}" class="issue-desc">${collectArticle.articleUserVo.imgmark}"</p>
                                            <div class="detail-box clearfix">
                                                <div class="left-detail l">
                                                    <span class="join">${collectArticle.articleUserVo.zanNum}获赞</span>
                                                    <span class="look">${collectArticle.articleUserVo.collectNum}收藏量</span>
                                                </div>
                                                <div class="right-guest r js-usercard-box">
                                                    <span class="l">发布者</span>
                                                    <div class="guest-box l">
                                                        <a class="l guest " href="" target="_blank">
                                                            <img class="js-usercard-dialog" alt="${collectArticle.articleUserVo.user.username}" src="${collectArticle.articleUserVo.user.userImgurl}" data-userid="108492">
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>

                        <div class="am-tab-panel am-fade" id="tab2">
                            <div class="issue-list">
                                <ul class="issue-box">
                                    <c:forEach var="collectTopic" items="${collectTopics}">
                                        <li class="issue-item clearfix">
                                            <a class="l issue-img-box" href="${pageContext.request.contextPath }/user/topicInfo.action?topicId=${collectTopic.topicUser.topicId}" target="_blank">
                                                <img class="l issue-img" alt="${collectTopic.topicUser.topicTitle}" src="${collectTopic.topicUser.topicImgurl}">

                                            </a>
                                            <div class="issue-content l">
                                                <p class="issue-title">

                                                    <a title="${collectTopic.topicUser.topicTitle}" href="${pageContext.request.contextPath }/user/topicInfo.action?topicId=${collectTopic.topicUser.topicId}" target="_blank">${collectTopic.topicUser.topicTitle}</a>
                                                        <%--<a style="float:right; margin-top:-30px">--%>
                                                        <%--<img src="static/user/talk/image/attention.png">--%>
                                                        <%--</a>--%>
                                                </p>
                                                <p title="${collectTopic.topicUser.topicContent}" class="issue-desc">${collectTopic.topicUser.topicContent}"</p>
                                                <div class="detail-box clearfix">
                                                    <div class="left-detail l">
                                                        <span class="join">${collectTopic.topicUser.topicPeople}参与</span>
                                                        <span class="look">${collectTopic.topicUser.lookNum}浏览</span>
                                                    </div>
                                                    <div class="right-guest r js-usercard-box">
                                                        <span class="l">发布者</span>
                                                        <div class="guest-box l">
                                                            <a class="l guest " href="" target="_blank">
                                                                <img class="js-usercard-dialog" alt="${collectTopic.topicUser.user.username}" src="${collectTopic.topicUser.user.userImgurl}" data-userid="108492">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<footer>
    <div class="wrapper">
			<span class="copyright">
				COPYRIGHT © 2012 Mahieddine Abd-kader
			</span>
    </div>
</footer>

</div>
<%@ include file="../../footer.jsp" %>

</body>
</html>
