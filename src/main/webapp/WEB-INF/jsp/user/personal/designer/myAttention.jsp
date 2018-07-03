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
    <link href="static/user/designer/css/myAttention.css" rel="stylesheet" type="text/css">


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
<body style="background-color: #fff">
<c:set var="user" value="${sessionScope.user}"/>
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
        <%--<li><a title="设计之家" class="i_22_dashboard" href="design.jsp"></a></li>--%>
        <%--<li><a title="我的收藏" class="i_22_inbox" href="mycollect.jsp"></a></li>--%>
        <%--<li><a title="设计上传" class="i_22_charts" href="designUp.jsp"></a></li>--%>
        <%--<li><a title="关注&粉丝" class="i_22_ui smActive" href="myAttention.jsp"></a></li>--%>
        <%--<li><a title="我的发表" class="i_22_tables" href="myPublish.jsp"></a></li>--%>
        <%--<li><a title="个人信息" class="i_22_forms" href="personalInfo.jsp"></a></li>--%>
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
            <li class="i_32_inbox">
                <a href="${pageContext.request.contextPath}/user/mycollections.action" title="我的收藏">
                    <span class="tab_label">我的收藏</span>

                </a>
            </li>
            <li class="i_32_charts">
                <a href="${pageContext.request.contextPath}/user/designUp.action" title="设计上传">
                    <span class="tab_label">设计上传</span>

                </a>
            </li>
            <li class="active_tab i_32_ui">
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
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">关注与粉丝</strong> / <small>Attention</small></div>
                </div>
                <hr/>

                <div class="am-tabs am-tabs-d2" data-am-tabs>
                    <ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">我的关注</a></li>
                        <li><a href="#tab2">我的粉丝</a></li>
                        <%--<li><a href="#tab3">交易信息</a></li>--%>

                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                        <ul class="member_ul clearfix" node-type="relation_user_list">
                            <c:forEach var="attention" items="${attentions}">
                            <li class="member_li S_bg1" node-type="user_item" action-type="user_item" >
                                <div class="member_wrap clearfix" style="padding: 15px">
                                    <div class="mod_pic S_line1">
                                        <p class="pic_box">
                                            <a action-type="ignore_list" target="_blank" class="">
                                                <img src="${attention.user.userImgurl}" title="${attention.user.username}"  width="50" height="50" alt="${attention.user.username}" class="W_face_radius">
                                            </a>
                                        </p>
                                    </div>

                                    <div class="mod_info">
                                        <div class="title W_fb W_autocut ">
                                            <a target="_blank" href="" class="S_txt1" title="${attention.user.username}" >${attention.user.username}</a>
                                            <a target="_blank" href="http://verified.weibo.com/verify"><i title="认证 " class="W_icon icon_approve_gold"></i></a>
                                        </div>
                                        <div class="statu" style="height: 30px">
                                            <em class="W_ficon ficon_right S_ficon">Y</em><span class="S_txt1">已关注</span>
                                        </div>
                                        <div class="text W_autocut S_txt2">
                                                ${attention.user.userIntroduce}    </div>
                                        <div class="opt">
                                            <p class="btn_bed">
                                                <a class="W_btn_b"  href="javascript:void(0);" title="设计师or用户">
                                                    <span  node-type="groupName" class="txt W_autocut" style="color: #0a0a0a;text-align: center">
                                                        <c:if test="${attention.user.userMark eq 1}">
                                                            设计师
                                                        </c:if>
                                                        <c:if test="${attention.user.userMark eq 0}">
                                                            用户
                                                        </c:if>
                                                    </span>
                                                </a>
                                                <a class="W_btn_b btn_spe" action-type="special_follow" href="javascript:void(0);" action-data="uids=1667860154">
                                                    <em class="W_ficon S_ficon ficon_add">×</em>特别关注
                                                </a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="markup_choose"></div>
                            </li>
                            </c:forEach>

                        </ul>
                        </div>
                        <div class="am-tab-panel am-fade" id="tab2">
                            <ul class="member_ul clearfix" node-type="relation_user_list">
                                <c:forEach var="fan" items="${fans}">
                                <li class="member_li S_bg1" node-type="user_item" action-type="user_item" >
                                    <div class="member_wrap clearfix" style="padding: 15px">
                                        <div class="mod_pic S_line1">
                                            <p class="pic_box">
                                                <a action-type="ignore_list" target="_blank" class="">
                                                    <img src="${fan.user.userImgurl}" title="${fan.user.username}"  width="50" height="50" alt="${fan.user.username}" class="W_face_radius">
                                                </a>
                                            </p>
                                        </div>

                                        <div class="mod_info">
                                            <div class="title W_fb W_autocut ">
                                                <a target="_blank" href="" class="S_txt1" title="雷佳音" >${fan.user.username}</a>
                                                <a target="_blank" href=""><i title="微博个人认证 " class="W_icon icon_approve_gold"></i></a>
                                            </div>
                                            <div class="statu" style="height: 30px">
                                                <em class="W_ficon ficon_right S_ficon">Y</em><span class="S_txt1">已关注</span>
                                            </div>
                                            <div class="text W_autocut S_txt2">
                                                    ${fan.user.userIntroduce}    </div>
                                            <div class="opt">
                                                <p class="btn_bed">
                                                    <a class="W_btn_b"  href="javascript:void(0);" title="明星">
                                                        <span node-type="groupName" class="txt W_autocut">
                                                            <c:if test="${attention.user.userMark eq 1}">
                                                                设计师
                                                            </c:if>
                                                            <c:if test="${attention.user.userMark eq 0}">
                                                                用户
                                                            </c:if>
                                                        </span>
                                                    </a>
                                                    <a class="W_btn_b btn_spe" action-type="special_follow" href="javascript:void(0);" action-data="uids=1667860154">
                                                        <em class="W_ficon S_ficon ficon_add">×</em>关注
                                                    </a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="markup_choose"></div>
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
<%@ include file="../../footer.jsp" %>
</body>
</html>
