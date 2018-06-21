<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
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


    <link rel="stylesheet" href="static/user/article/community/css/Untitled-5.css">



    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>


    <script type='text/javascript' src='static/user/article/community/js/mobile.js'></script>
    <script src="static/user/article/community/js/jquery.js"></script>
    <script src="static/user/article/community/js/swiper.jquery.min.js"></script>
    <script src="static/user/article/community/js/jquery.switchable.min.js"></script>
    <script src="static/user/article/community/js/cookie.js"></script>
    <script src="static/user/article/community/js/login.js"></script>
    <script src="static/user/article/community/js/global.js"></script>
    <script src="static/user/article/community/js/loadgif.js"></script>

</head>
<body style="background: #fff">






<div class="container">
    <div class="ad1000-90" id="TR_SYS_151"></div>

    <!--head-->
    <div class="header">
        <div class="logo">
        </div>
    </div>
    <!--head end-->
    <div class="crumbs">
        <a href="" title="首页" target="_blank">首页</a>  &gt;
        <a href="" title="时装潮流" target="_blank">社区</a> &gt;
        <span>${article.articleTitle}</span>
    </div>

    <div class="content clearfix detail-content">

        <!--left-container -->
        <div class="left-container">

            <!--left-container right-side -->
            <div class="article-wrap">
                <h1 class="title-h1">${article.articleTitle}</h1>
                <p class="info">
                    <span class="“time”">时间：2018-05-22 00:31</span>
                    <span>来源：iFashion</span>
                </p>

                <div class="article-content clearfix">
                    ${article.content}
                    <p class="statement">©版权声明：时尚芭莎网编辑K.C，本文系时尚芭莎网独家原创，如需转载请注明出处。</p>
                </div>


                <div class="pager-tip clearfix">
                    <div class="left-pager">
                        <c:if test="${empty preArticle.articleId}">
                            <a>
                                <span>上一篇</span>已是第一篇
                            </a>
                        </c:if>
                        <c:if test="${not empty preArticle.articleId}">
                            <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${preArticle.articleId}" title="">
                                <span>上一篇</span>${preArticle.articleTitle}
                            </a>
                        </c:if>
                    </div>
                    <div class="right-pager">
                        <c:if test="${empty nextArticle.articleId}">
                            <a>
                                <span>下一篇</span>已是最后一篇
                            </a>
                        </c:if>
                        <c:if test="${not empty nextArticle.articleId}">
                            <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${nextArticle.articleId}" title="">
                                <span>下一篇</span>${nextArticle.articleTitle}
                            </a>
                        </c:if>
                    </div>
                </div>
                <!--pager end-->

                <!--other-->
                <div class="share-container clearfix">
                    <div class="bdsharebuttonbox bdshare-button-style0-16" data-tag="share_1" data-bd-bind="1528009056701">
                        <%--<a class="bds_tsina" data-cmd="tsina" title="点赞"></a>--%>
                    </div>
                    <div class="like-to"> <span class="heart"></span> 收藏 | <span class="like-num">1</span> </div>
                    <div class="collect-tips">提示</div>
                </div>
                <!--other end-->
            </div>
            <!--left-container right-side end -->



            <!--可能喜欢-->
            <div class="may-love">
                <div class="title-ml clearfix">
                    <h2 class="name-ml">YOU MIGHT LIKE 你可能喜欢</h2>
                </div>
                <ul class="list-ml">
                    <li>
                        <a href="" title="" target="_blank">
                            <img src="../image/info/libEmMl69G8mw.jpg" height="170" width="170" alt="朋友圈靠鞋抢镜大赛，宋茜和周冬雨靠Bling Bling的宝石鞋赢了！">
                        </a>
                        <span class="caret"></span>
                        <div class="text-ml">
                            <a href="" title="FEATURE" class="name-ml" target="_blank">FEATURE</a>
                            <a href="" title="朋友圈靠鞋抢镜大赛，宋茜和周冬雨靠Bling Bling的宝石鞋赢了！" target="_blank">朋友圈靠鞋抢镜大赛，宋茜和周冬雨靠Bling Bling的宝石鞋赢了！</a>
                        </div>
                    </li>
                    <li>
                        <a href="" title="" target="_blank">
                            <img src="../image/info/lij2sOW5mgkTI.jpg" height="170" width="170" alt="你以为盐系男孩只是花瓶摆设？戏痴坂口健太郎给你答案">
                        </a>
                        <span class="caret"></span>
                        <div class="text-ml">
                            <a href="" title="STAR" class="name-ml" target="_blank">STAR</a>
                            <a href="" title="你以为盐系男孩只是花瓶摆设？戏痴坂口健太郎给你答案" target="_blank">你以为盐系男孩只是花瓶摆设？戏痴坂口健太郎给你答案</a>
                        </div>
                    </li>
                    <li>
                        <a href="" title="" target="_blank">
                            <img src="../image/info/ligom1wv6hrN6.jpg" height="170" width="170" alt="125岁的牛仔裤能卖到10万美金！杨幂热巴易烊千玺的球服造型你pick谁？"></a>
                        <span class="caret"></span>
                        <div class="text-ml">
                            <a href="" title="STAR" class="name-ml" target="_blank">STAR</a>
                            <a href="" title="125岁的牛仔裤能卖到10万美金！杨幂热巴易烊千玺的球服造型你pick谁？" target="_blank">125岁的牛仔裤能卖到10万美金！杨幂热巴易烊千玺的球服造型你pick谁？</a>
                        </div>
                    </li>
                    <li>
                        <a href="" title="" target="_blank">
                            <img src="../image/info/liNxFNXX1EmO2.jpg" height="170" width="170" alt="娜扎的仙女裙领口有点低，但原来好身材全靠穿上这件深V！">
                        </a>
                        <span class="caret"></span>
                        <div class="text-ml">
                            <a href="" title="FASHION" class="name-ml" target="_blank">FASHION</a>
                            <a href="" title="娜扎的仙女裙领口有点低，但原来好身材全靠穿上这件深V！" target="_blank">娜扎的仙女裙领口有点低，但原来好身材全靠穿上这件深V！</a>
                        </div>
                    </li>
                </ul>
            </div>
            <!--可能喜欢 end-->
        </div>
        <!--left-container end-->

        <!--right-container -->
        <div class="right-container" style="height: 1500px;">
            <div class="sidebar-sticky" style="display: block; height: 1486px; width: auto; margin: auto; position: relative; float: none; left: auto; right: auto; top: auto; bottom: auto; vertical-align: top;">
                <div class="right-sticky" style="width: 300px; top: 0px; bottom: auto; left: 0px; right: auto; position: absolute;">

                    <div class="advertising" id="TR_SYS_150" style="overflow: hidden">
                        <div style="right:0px;bottom:0px;" class="ad-icon">
                        </div>
                        <a href="" target="_blank">
                            <img src="static/user/article/clothes/match/image/guanggao.jpg" width="300" height="510" alt="" title="" border="0">
                        </a>
                    </div>


                    <!--编辑推荐-->
                    <div class="editors-recommend">
                        <div class="title-er">
                            <h2 class="name-er"></h2>
                        </div>
                        <div class="conte-er fxCoverflow" id="img-flip">
                            <span class="pre-er" id="prv"></span>
                            <span class="next-er" id="next"></span>
                            <ul class="list-er clearfix" id="list" style="position: absolute; left: 0px; width: 3000px;">
                                <li class="active">
                                    <a href="" title="娜扎的仙女裙领口有点低，但原来好身材全靠穿上这件深V！" target="_blank" style="overflow: hidden">
                                        <img src="static/user/article/clothes/match/image/lb1.jpg" height="220" width="220" alt="娜扎的仙女裙领口有点低，但原来好身材全靠穿上这件深V！">
                                    </a>
                                    <div class="article-er">
                                        <a href="" title="娜扎的仙女裙领口有点低，但原来好身材全靠穿上这件深V！" target="_blank">
                                            娜扎的仙女裙领口有点低，但原来好身材全靠穿上这件深V！
                                            <span>为什么娜扎阿娇Kendall都纷纷离不开深V啦？当然是因为V领能够让她们秀出完美身型～</span>
                                        </a>
                                    </div>
                                </li>

                                <li class="active">
                                <a href="" title="对话 澳洲版Harper's BAZAAR 总编辑Kellie Hush" target="_blank" style="overflow: hidden">
                                    <img src="static/user/article/clothes/match/image/lb2.png" height="220" width="220" alt="对话 澳洲版Harper's BAZAAR 总编辑Kellie Hush">
                                </a>

                                <div class="article-er">
                                    <a href="" title="对话 澳洲版Harper's BAZAAR 总编辑Kellie Hush" target="_blank">
                                        对话 澳洲版Harper's BAZAAR 总编辑Kellie Hush
                                        <span>作为澳洲版时尚芭莎的总编辑Kellie Hush，在今年被评为澳洲仅有的16位NSW时尚面孔荣誉称号之一。</span>
                                    </a>
                                </div>
                                </li>

                                <li class="active">
                                    <a href="" title="儿童节就要这样穿，谁还不是个宝宝？【芭莎90秒】" target="_blank" style="overflow: hidden">
                                        <img src="static/user/article/clothes/match/image/lb3.jpg" height="220" width="220" alt="儿童节就要这样穿，谁还不是个宝宝？【芭莎90秒】">
                                    </a>

                                    <div class="article-er">
                                        <a href="" title="儿童节就要这样穿，谁还不是个宝宝？【芭莎90秒】" target="_blank">
                                            儿童节就要这样穿，谁还不是个宝宝？【芭莎90秒】
                                            <span>各位网友大家好，欢迎来到本期时尚芭莎90秒。又到了一年一度超龄儿童卖萌的日子，儿童节。光发票圈可不行，穿着有趣才能更好的体验节日的乐趣。所以今天小编想跟大家说说那些充满童趣的时尚品牌和单品。</span>
                                        </a>
                                    </div>
                                </li>

                                <li class="active">
                                    <a href="" title="我也能跟霍思燕一起过儿童节了，会呼吸的蕾丝穿上居然这么嫩" target="_blank">
                                        <img src="static/user/article/clothes/match/image/lb4.jpg" height="220" width="220" alt="我也能跟霍思燕一起过儿童节了，会呼吸的蕾丝穿上居然这么嫩">
                                    </a>
                                    <div class="article-er">
                                        <a href="" title="我也能跟霍思燕一起过儿童节了，会呼吸的蕾丝穿上居然这么嫩" target="_blank">
                                            我也能跟霍思燕一起过儿童节了，会呼吸的蕾丝穿上居然这么嫩
                                            <span>芭姐的小伙伴们六一快乐啊！《妈妈是超人》中宝贝们的可爱比拼让我已经被完全击败，妈妈们的私服更让芭姐眼花缭乱，比如霍思燕这件蕾丝镂空装</span>
                                        </a>
                                    </div>
                                </li>

                                <li class="active">
                                    <a href="" title="中国设计 | 通过影像介入时装，展现最具独特的品牌风格" target="_blank">
                                        <img src="static/user/article/clothes/match/image/lb5.jpg" height="220" width="220" alt="中国设计 | 通过影像介入时装，展现最具独特的品牌风格">
                                    </a>

                                    <div class="article-er">
                                        <a href="" title="中国设计 | 通过影像介入时装，展现最具独特的品牌风格" target="_blank">
                                            中国设计 | 通过影像介入时装，展现最具独特的品牌风格
                                            <span>Content的很多故事都是从影像中展开的，廖晓玲说，这或许这来源于作为建筑师的工作方式。它的作用就像一个抓手，让她可以寻求方案解决这个假设的问题。因为只有寻找问题，才能创造性解决问题。</span>
                                        </a>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <!--编辑推荐 end-->
                </div></div>
        </div>
        <!--content end-->
    </div>


</div>


<%@ include file="../../footer.jsp" %>


<script type="text/javascript" src="static/user/article/community/js/jquery.hc-sticky.min.js"></script>
<script type="text/javascript" src="static/user/article/community/js/article.js"></script>


</body>
</html>

