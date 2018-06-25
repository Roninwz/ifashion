<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/4
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



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


    <link rel="stylesheet" href="static/user/article/clothes/css/index.html_aio_f90dc93.css">
    <link rel="stylesheet" href="static/user/article/clothes/css/index.html_aio_2_ebc95bc.css">
    <link href="static/user/article/clothes/match/css/bootstrap.min.css" rel="stylesheet">



    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>
    <style>
        #mypublish{
            position: absolute;
            top: 600px;
            left:980px;
        }
    </style>

</head>
<body>
<%@ include file="../../header.jsp" %>
<div class="js-page-wrap" >
    <div class="side-page-wrap clearfix">
        <div class="js-side-right-wrap side-right-wrap float-right">
            <div class="title"><span class="icon-title"></span>热门推荐</div>

            <div class="float-left round-button-container" style="width: 33.33%">
                <a class="round-button ie-hack" href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=3">日系</a>
            </div>

            <div class="float-left round-button-container" style="width: 33.33%">
                <a class="round-button ie-hack" href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=2">休闲</a>
            </div>

            <div class="float-left round-button-container" style="width: 33.33%">
                <a class="round-button ie-hack" href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=4">民族风</a>
            </div>

            <div class="float-left round-button-container" style="width: 33.33%">
                <a class="round-button ie-hack" href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=5">轻熟</a>
            </div>

            <div class="float-left round-button-container" style="width: 33.33%">
                <a class="round-button ie-hack" href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=6">遮粗腿</a>
            </div>

            <div class="float-left round-button-container" style="width: 33.33%">
                <a class="round-button ie-hack" href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=14">活力黄</a>
            </div>

            <div class="float-left round-button-container" style="width: 33.33%">
                <a class="round-button ie-hack" href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=22">出行</a>
            </div>

            <div class="float-left round-button-container" style="width: 33.33%">
                <a class="round-button ie-hack" href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=23">聚会</a>
            </div>


            <c:set var="user" value="${sessionScope.user}"/>
            <c:if test="${not empty user}">
                <input id="current_user_name" value="${user.username}" hidden>
                <input id="current_user_img" value="${user.userImgurl}" hidden>
            </c:if>


            <c:if test="${not empty user}">
                <a id="mypublish" class="btn btn-default" role="button" href="${pageContext.request.contextPath }/user/publish.action?clothesTagId=${param.clothesTagId}" target="_blank">我要发表</a>
            </c:if>
            <c:if test="${empty user}">
                <a id="mypublish" class="btn btn-default" role="button"  data-toggle="modal" href="#login-modal" >我要发表</a>
            </c:if>


        </div>





        <div class="js-side-left-wrap side-left-wrap">
            <div>
                <div class="waterfall-list-wrap">
                    <div class="js-content-base-info content-base-info">
                        <c:forEach  items="${tagImg}" var="tagImg" begin="0" end="0">
                        <div class="suit-tag-base-wrap">
                                <img src="${tagImg.clothesTagImgUrl}"/>
                        </div>
                        </c:forEach>
                    </div>

                    <%--设置变量--%>
                    <c:set var="heightvar" value="${(tagImgCount-1)/2*506}"></c:set>
                    <c:if test="${tagImgCount%2 ne 0}">
                        <c:set var="endvar" value="${(tagImgCount-1)/2-1}"></c:set>
                    </c:if>
                    <c:if test="${tagImgCount%2 eq 0}">
                        <c:set var="endvar" value="${tagImgCount/2-1}"></c:set>
                    </c:if>


                    <div class="list-gap-hack">
                        <div class="js-content-list-wrap content-list-wrap waterfall-container" style="overflow: hidden; position: relative; height:${heightvar+260}px;">
                            <c:forEach var="i" begin="0" end="${endvar}">
                                <c:forEach var="j" begin="0" end="1">
                                    <div class="waterfall-cell-wrap card-suit-5-cell-wrap" style="position: absolute; left: ${20*(j+1)+290*j}px; top: ${i*506}px;">
                                        <div class="img-wrap">
                                            <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${tagImg1[2*i+j].articleId}">
                                                <img class="lazye" width="290px" height="435px" src="${tagImg1[2*i+j].clothesTagImgUrl}"
                                                     style="display: inline;">
                                            </a>
                                        </div>
                                        <div class="item-info-wrap">
                                            <div class="single-line-wrap clearfix">
                                                <span class="float-left goods-count"><label class="suitcase-icon"></label><label class="goods-num">2</label></span>
                                                <span class="float-right collect-count"><label class="love-icon"></label><label class="collect-num">17</label></span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:forEach>
                        </div>
                        <div id="waterfall-message" style="text-align:center;color:#999;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="../../footer.jsp" %>
</body>
</html>
