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
    <link rel="stylesheet" href="static/user/article/clothes/css/gai.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <link rel="stylesheet" href="static/user/article/clothes/css/index1.css">
    <link rel="stylesheet" href="static/user/article/clothes/css/index2.css">
    <!-- clothes  的css -->
    <link rel="stylesheet" href="static/user/article/clothes/css/index.html_aio_f90dc93.css">
    <link rel="stylesheet" href="static/user/article/clothes/css/index.html_aio_2_4a7134b.css">
    <style>
        .clothes-img {
            position: relative;
            width: 1200px;
            height: 235px;
            margin: 0 auto;
            top: 15px;
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

</head>
<body>
<%@ include file="../../header.jsp" %>
<!-- clothes上部分开始 -->
<div class="clothes-img">
    <!-- 小头像 -->

    <div class="all-menu-container js_all_menu_container fleft">
        <div class="menu-container">
            <div class="title">
                风格
            </div>
            <div class="container">
                <c:forEach var="tagType1" items="${tagType1}" >
                    <div class="pic-item">
                        <a >
                            <img class="avatar" src="static/user/article/clothes/images/${tagType1.clothesTagTypeImgUrl}">
                            <div class="name">${tagType1.clothesTagTypeName}</div>
                        </a>
                    </div>
                </c:forEach>

            </div>
            <div class="container">

                <c:forEach var="tag1" items="${tag1}">
                <div class="list-item">
                    <a href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=${tag1.clothesTagId}">
                        ${tag1.clothesTagName}
                    </a>
                </div>
                </c:forEach>


            </div>

        </div>

        <div class="menu-container">
            <div class="title">
                效果
            </div>
            <div class="container">

                <c:forEach var="tagType2" items="${tagType2}" >
                    <div class="pic-item">
                        <a>
                            <img class="avatar" src="static/user/article/clothes/images/${tagType2.clothesTagTypeImgUrl}">
                            <div class="name">${tagType2.clothesTagTypeName}</div>
                        </a>
                    </div>
                </c:forEach>

            </div>
            <div class="container">

                <c:forEach items="${tag2}" var="tag2">
                <div class="list-item">
                    <a href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=${tag2.clothesTagId}">
                        ${tag2.clothesTagName}
                    </a>
                </div>
                </c:forEach>

            </div>

        </div>

        <div class="menu-container">
            <div class="title">
                颜色
            </div>
            <div class="container">

                <c:forEach var="tagType3" items="${tagType3}" >
                    <div class="pic-item">
                        <a >
                            <img class="avatar" src="static/user/article/clothes/images/${tagType3.clothesTagTypeImgUrl}">
                            <div class="name">${tagType3.clothesTagTypeName}</div>
                        </a>
                    </div>
                </c:forEach>


            </div>
            <div class="container">

                <c:forEach var="tag3" items="${tag3}">
                <div class="list-item">
                    <a href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=${tag3.clothesTagId}">
                        ${tag3.clothesTagName}
                    </a>
                </div>
                </c:forEach>


            </div>

        </div>

        <div class="menu-container">
            <div class="title">
                场合
            </div>
            <div class="container">

                <c:forEach var="tagType4" items="${tagType4}" >
                    <div class="pic-item">
                        <a>
                            <img class="avatar" src="static/user/article/clothes/images/${tagType4.clothesTagTypeImgUrl}">
                            <div class="name">${tagType4.clothesTagTypeName}</div>
                        </a>
                    </div>
                </c:forEach>


            </div>
            <div class="container">

                <c:forEach items="${tag4}" var="tag4">
                <div class="list-item">
                    <a href="${pageContext.request.contextPath }/user/clothes/clothesTag.action?clothesTagId=${tag4.clothesTagId}">
                        ${tag4.clothesTagName}
                    </a>
                </div>
                </c:forEach>

            </div>

        </div>
    </div>

    <!-- 大图 -->


    <div class="recommend-pic-container fleft">
        <div class="icon-recommend"></div>
        <img class="js_tomorrow_recommend_main_pic main-pic" src="static/user/article/clothes/images/big.jpg">
        <div class="recommend-text-container">
            <div class="info">明天&nbsp;&nbsp;20°C~26°C
                <div class="fright">苏州</div>
            </div>
            <div class="text js_text"></div>
            <div class="btn js_btn">
                查看相似搭配 &gt;
            </div>
        </div>
    </div>
    <!-- 最右侧链接  -->
    <div class="recommend-menu-list fleft">
        <div class="recommend-menu-list-wrap">

            <div class="menu-item active">约会必备斩男装</div>

            <div class="menu-item ">争当学霸兼女神</div>

            <div class="menu-item ">不用费脑穿上就走</div>

            <div class="menu-item ">运动才能保持好身材</div>

            <div class="menu-item ">职场OL优雅秘籍</div>

            <div class="menu-item ">文艺青年着装指南</div>

            <div class="menu-item ">清爽日系休闲风</div>

            <div class="menu-item ">少女心炸裂</div>

            <div class="menu-item ">低调穿出女人味</div>

        </div>
    </div>


</div>

<!-- clothes上部分结束 -->

<div class="header-container">
    <!--－－－－－－－－－－－－－－－－－logo＋服务承诺－－－－－－－－－－－－－－－－－－－－-->


    <!--－－－－－－－－－－－－－－－－－－－－－导航－－－－－－－－－－－－－－－－－－－－－-->

</div>
<!--回到顶部btn-->

<!--header引入基础的公共代码-->

<!--模板-->


<div class="page-container" style="min-height: 230px;">

    <!--潮流单品-->
    <div id="fashion-goods-container" class="content-container fashion-goods-container">
        <!--图片小于6张不显示-->
    </div>

    <!--最in搭配-->
    <div id="in-suit-container" class="content-container in-suit-container clearfix">
        <!--添加此class 底部会有分割线-->
        <div class="border-bottom-wrap clearfix">
            <h1 class="title">最IN搭配</h1>
            <div id="js_suits_cell_container" class="js-waterfall-cell-wrap">

                <c:forEach items="${hotMatch}" var="hotMatch" >
                    <div class="in-suit-item">
                        <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${hotMatch.articleId}" target="_blank">
                            <div class="in-suit-pic-warp">
                                <img class="item-pic js_in_suit_pic" src="${hotMatch.imgurl}">
                            </div>
                        </a>
                        <a href="matchInfo.jsp" target="_blank">
                            <img class="avatar ie-hack" src="${hotMatch.user.userImgurl}">
                        </a>
                        <div class="goods-info">
                            <div class="shop-keeper-name fleft">${hotMatch.user.username}</div>
                            <div class="like fright">
                                <div class="like-number fright">
                                    ${hotMatch.zanNum}
                                </div>
                                <div class="icon-like fright"></div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>

        </div>
    </div>

    <!--每日精选-->
    <div id="daily-choice-container" class="content-container daily-choice-container clearfix">
        <h1 class="title">每日精选</h1>

        <!--－－－－－－－－－循环部分*10－－－－－－－－－－－-->
        <c:forEach items="${dailyBest}" var="dailyBest">
            <div class="daily-choice-item">
                <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${dailyBest.articleId}" target="_blank">
                    <img class="item-pic lazy" src="${dailyBest.imgurl}"></a>

                <div class="item-name">${dailyBest.articleTitle}</div>
                <div class="item-info">
                    <div class="item-price fleft">¥143</div>
                    <div class="like fright">
                        <div class="icon-like fleft">
                        </div>
                        <div class="like-number fright">
                            ${dailyBest.zanNum}
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

        <!--－－－－－－－－－循环部分*10－－－－－－－－－－－-->

    </div>
</div>




<%@ include file="../../footer.jsp" %>


</body>
</html>
