<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


    <link href="static/user/article/clothes/match/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/user/article/clothes/match/css/common.css" rel="stylesheet" type="text/css">
    <link href="static/user/article/clothes/match/css/article.css" rel="stylesheet">
    <link href="static/user/article/clothes/match/css/foot.css" rel="stylesheet" type="text/css">



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

<div class="container clearfix">
    <script type="text/javascript">
        _TrackObj.id=14700;
        _TrackObj.type=0;
    </script>
    <div class="clearfix article-tip">
        <div class="pull-left text-overflow nav-crob">
            <span>当前位置&nbsp;:&nbsp;</span>
            <span><a href="">iFashion</a></span>
            <i class="icon icon-crob"></i>
            <a href="">时装</a>
            <i class="icon icon-crob"></i>
            <a href="">时尚穿搭</a>
            <i class="icon icon-crob"></i>
            <span><b>${article.articleTitle}</b></span>
        </div>
    </div>
    <div class="main pull-left">
        <article>
            <h1>${article.articleTitle}</h1>
            <div class="clearfix text-black80 article-info-option">
                <div class="inline-block pull-left article-info">
                    <span>by <a href="" target="_blank">iFashion</a></span>
                    <span>2018/05/31-10:00:00</span>
                    <span>作者：iFashion</span>				<span>来源：iFashion</span>
                    <!-- <span>浏览：22</span> -->
                </div>
                <div class="inline-block pull-right text-right article-option">
                    <label ><i class="icon icon-like-3 icon-edit" id="praise_14700" data-tabid="0" data-id="14700"></i><span>0</span></label>
                    <label ><i class="icon icon-collect icon-edit" id="collect_14700" data-tabid="0" data-id="14700"></i><span>0</span></label>
                    <label ><i class="icon icon-comment" id="comment_14700" onclick="javascript:window.location.href='#comment-data';"></i><span>0</span></label>
                </div>
            </div>

            <div style="margin:40px auto">
                ${article.content}
            </div>


            <div class="article-tag">
                标签&nbsp;:&nbsp;
                <a href="">活力</a>
                <a href="">清爽</a>
                <a href="">清凉</a>
                <a href="">元素</a>
                <a href="">必备单品</a>
                <a href="">卫衣搭配</a>
                <a href="">水果</a>
                <a href="">潮人</a>
                <a href="">配饰</a>
                <a href="">搭配</a>
            </div>
        </article>

        <div class="clearfix text-center article-other">
            <div class="pull-left text-overflow">
                上一篇：
                <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${article.articleId-1}">
                    做时尚Office Lady,就请你白衬衫不要那么无聊！			</a>
            </div>
            <div class="pull-right text-overflow">
                下一篇：
                <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${article.articleId+1}">
                    NIRO WANG品牌加入英国伦敦I LOVE LINEN亚麻推广运动				</a>
            </div>
        </div>


        <div class="text-center article-sm">声明：未经授权，不得部分或全部转载本站内容，否则将追究相关的法律责任。</div>


        <div class="other-article">
            <h3>相关阅读</h3>
            <ul class="clearfix list-unstyled">
                <li>
                    <a title="运动鞋搭裙子，绝配！" href="" target="_blank">
                        <div class="center-block img-wrap">
                            <img width="275" height="277" title="运动鞋搭裙子，绝配！" class="lazy" style="display: inline;" alt="运动鞋搭裙子，绝配！" src="../image/29.jpg" data-original="../image/29.jpg">
                        </div>
                    </a>
                    <a title="运动鞋搭裙子，绝配！" href="" target="_blank">
                        <h4 class="center-block text-overflow">
                            运动鞋搭裙子，绝配！                        </h4>
                    </a>
                    <p class="center-block text-black80">这个季节绝对是裙子的主场，毫无疑问也是最为常见的出街造型，无需费力就能...</p>
                </li>
                <li>
                    <a title="要想生活过得去，时髦又高级的来点“绿”！" href="" target="_blank">
                        <div class="center-block img-wrap">
                            <img width="275" height="277" title="要想生活过得去，时髦又高级的来点“绿”！" class="lazy" style="display: inline;" alt="要想生活过得去，时髦又高级的来点“绿”！" src="../image/30.jpg" data-original="../image/30.jpg">
                        </div>
                    </a>
                    <a title="要想生活过得去，时髦又高级的来点“绿”！" href="" target="_blank">
                        <h4 class="center-block text-overflow">
                            要想生活过得去，时髦又高级的来点...                        </h4>
                    </a>
                    <p class="center-block text-black80">绿色，是一个充满希望的颜色，夏天穿上一抹绿，总是给人清新、活力、美好的...</p>
                </li>
                <li>
                    <a title="近期买买，红黑榜了解一下！" href="" target="_blank">
                        <div class="center-block img-wrap">
                            <img width="275" height="277" title="近期买买，红黑榜了解一下！" class="lazy" style="display: inline;" alt="近期买买，红黑榜了解一下！" src="../image/31.jpg" data-original="../image/31.jpg">
                        </div>
                    </a>
                    <a title="近期买买，红黑榜了解一下！" href="" target="_blank">
                        <h4 class="center-block text-overflow">
                            近期买买，红黑榜了解一下！                        </h4>
                    </a>
                    <p class="center-block text-black80">滴，5月已打卡。转眼间小半年过去了，从年前到现在买了不少好东西，也踩了...</p>
                </li>
            </ul>
        </div>
        <div class="other-article">
            <h3>推荐阅读</h3>
            <ul class="clearfix list-unstyled">
                <li>
                    <a title="早春乱穿衣，一件卫衣解锁潮范儿新姿势！" href="" target="_blank">
                        <div class="center-block img-wrap">
                            <img width="275" height="277" title="早春乱穿衣，一件卫衣解锁潮范儿新姿势！" class="lazy" style="display: inline;" alt="早春乱穿衣，一件卫衣解锁潮范儿新姿势！" src="../image/32.jpg" data-original="../image/32.jpg">
                        </div>
                    </a>
                    <a title="早春乱穿衣，一件卫衣解锁潮范儿新姿势！" href="" target="_blank">
                        <h4 class="center-block text-overflow">早春乱穿衣，一件卫衣解锁潮范儿新...</h4>
                    </a>
                    <p class="center-block text-black60">被大衣缠绕的冬季已然离去，春天的到来，不仅是花仙子的专场，印花仙女裙固...</p>
                </li>
                <li>
                    <a title="高领衫：六招穿搭让你赢很大" href="" target="_blank">
                        <div class="center-block img-wrap">
                            <img width="275" height="277" title="高领衫：六招穿搭让你赢很大" class="lazy" style="display: inline;" alt="高领衫：六招穿搭让你赢很大" src="../image/33.jpg" data-original="../image/33.jpg">
                        </div>
                    </a>
                    <a title="高领衫：六招穿搭让你赢很大" href="" target="_blank">
                        <h4 class="center-block text-overflow">高领衫：六招穿搭让你赢很大</h4>
                    </a>
                    <p class="center-block text-black60">2017年的时尚圈，有很多曾经一度被嫌弃的单品都卷土重来，以时髦的姿态...</p>
                </li>
                <li>
                    <a title="厉害了我的针织裙！云淡风轻时髦不掉线" href="" target="_blank">
                        <div class="center-block img-wrap">
                            <img width="275" height="277" title="厉害了我的针织裙！云淡风轻时髦不掉线" class="lazy" style="display: inline;" alt="厉害了我的针织裙！云淡风轻时髦不掉线" src="../image/34.jpg" data-original="../image/34.jpg">
                        </div>
                    </a>
                    <a title="厉害了我的针织裙！云淡风轻时髦不掉线" href="" target="_blank">
                        <h4 class="center-block text-overflow">厉害了我的针织裙！云淡风轻时髦不...</h4>
                    </a>
                    <p class="center-block text-black60">2017秋冬，时髦的单品太多，格纹、丝绒、金属...在这些独具个性的元...</p>
                </li>
            </ul>
        </div>

        <div class="comment-area" id="comment-data">
            <div class="comment-box">
                <div class="text-black80">穿搭评论</div>

                <c:forEach var="arvo" items="${arvo}">

                    <div class="ques-answer">
                        <div class="tag-img">
                            <img title="${arvo.user.username}" src="${arvo.user.userImgurl}">
                        </div>

                        <div class="from-tag">
                            <a>${arvo.user.username}</a>
                            <a>${arvo.reviewDate}</a>
                            <a href="" target="_blank" style="">回复</a>
                        </div>

                        <div class="ques-con">
                            <p class="ques-con-content">${arvo.reviewContent}</p>
                            <%--<div class="answer-content-all rich-text aimgPreview">--%>
                                <%--<p> 价格这么好吗</p>--%>
                            <%--</div>--%>
                        </div>
                    </div>


                    <div class="answer-con first" id="answer-con" data-answer-id="269840">
                        <div class="user">
                            <hr>
                            <%--<a>根本不行小姐 (作者) ：</a>--%>
                            <span class="signature"></span>
                        </div>
                        <%--<div class="answer-content"> 价格这么好吗</div>--%>
                    </div>
                </c:forEach>


                <div>
                    <textarea name="commentcontent" class="text-black80" id="commentcontent" rows="2" cols="20"></textarea>
                </div>
                <div class="comment-option">

                    <input class="btn btn-green text-white" id="btncomment" type="button" value="发布">
                </div>
            </div>
            <div id="scroller"><ul class="comment-list list-unstyled text-black80"></ul></div>
        </div>
        <script src="/js/d3rich.comment.js" type="text/javascript"></script>
        <script type="text/javascript">
            var outer_id = "14700";
            var outer_type = 0;
            var score = 5;
        </script>
    </div>
    <aside class="pull-right" style="margin-right: 0px;margin-bottom: 0px;margin-top:0px;">
        <div class="gyzb com">
            <div class="clearfix">
                <div class="pull-left zs"></div>
                <div class="pull-left bt">关于编辑</div>
            </div>
            <dl class="clearfix">
                <dt class="pull-left">
                    <a href="">
                        <img width="50" height="50" class="lazy" style="display: inline;" alt="iFashion" src="${user.userImgurl}">
                    </a>
                </dt>
                <dd class="pull-left">
                    <a href=""><h4 class="text-overflow">${user.username}</h4></a>
                    <div class="text-overflow"></div>
                </dd>
            </dl>
            <div class="option">
                <a class="inline-block text-center subscribe" id="subscribe_14700" href="javascript:void(0);" data-id="81" data-type="0">订阅</a><a class="inline-block text-center send-message" href="javascript:void(0);">消息</a>
            </div>

            <div><b>最近作品 :</b></div>
            <ul class="list-unstyled">

                <c:forEach var="articles" items="${articles}">
                <li class="text-overflow">
                    <a title="${articles.articleTitle}" class="text-black80" href="">
                            ${articles.articleTitle}</a>
                </li>
                </c:forEach>

            </ul>
        </div>
        <div class="weektop10 com">
            <div class="zs"></div>
            <ul class="list-unstyled">
                <li>
                    <span class="inline-block top3">1</span>
                    <c:forEach items="${hotArticle}" var="hotArticle" begin="0" end="0">
                    <dl class="inline-block dl-horizontal">
                        <dt>
                            <a title="${hotArticle.articleTitle}" href="" target="_blank">
                                <img width="125" height="110" title="${hotArticle.articleTitle}" class="lazy" style="display: inline;" alt="${hotArticle.articleTitle}" src="${hotArticle.imgurl}">
                            </a>
                        </dt>
                        <dd>
                            <a title="${hotArticle.articleTitle}" class="text-black90" href="" target="_blank">
                                <h4>${hotArticle.articleTitle}</h4>
                            </a>
                            <div class="text-right">
                                <!-- <i class="icon icon-view"></i><span>455</span> -->
                            </div>
                        </dd>
                    </dl>
                    </c:forEach>
                </li>

                <c:forEach items="${hotArticle}" var="hotArticle" varStatus="i" begin="1" end="9">
                <li>
                    <span class="inline-block top3">${i.index+1}</span>
                    <a title="${hotArticle.articleTitle}" class="text-black80" href="" target="_blank">
                        <p class="inline-block text-overflow">${hotArticle.articleTitle}</p>
                    </a>
                    <!-- <i class="icon icon-view"></i><span>388</span> -->
                </li>
                </c:forEach>


            </ul>
        </div>
        <div class="hot-zt com">
            <div class="zs">最新资讯</div>
            <dl class="clearfix">
                <dt class="pull-left">
                    <a title="不大不时髦，Oversize耳饰让你的脸小一个Size!" href="" target="_blank">
                        <img width="125" height="100" title="不大不时髦，Oversize耳饰让你的脸小一个Size!" class="lazy" style="display: inline;" alt="不大不时髦，Oversize耳饰让你的脸小一个Size!" src="../image/41.jpg" data-original="../image/41.jpg">
                    </a>
                </dt>
                <dd class="pull-left">
                    <a class="text-black90" href="">
                        <h4 title="不大不时髦，Oversize耳饰让你的脸小一个Size!">
                            不大不时髦，Oversize耳饰让你的脸...					</h4>
                    </a>
                    <p class="text-black80">大部分姑娘入手的第一件耳饰，是不是都是小巧精致似有若无的那种...</p>
                </dd>
            </dl>
            <dl class="clearfix">
                <dt class="pull-left">
                    <a title="学会Bella Hadid的白色穿搭，一样拥有高级颜！" href="" target="_blank">
                        <img width="125" height="100" title="学会Bella Hadid的白色穿搭，一样拥有高级颜！" class="lazy" style="display: inline;" alt="学会Bella Hadid的白色穿搭，一样拥有高级颜！" src="../image/42.jpg" data-original="../image/42.jpg">
                    </a>
                </dt>
                <dd class="pull-left">
                    <a class="text-black90" href="">
                        <h4 title="学会Bella Hadid的白色穿搭，一样拥有高级颜！">
                            学会Bella Hadid的白色穿搭，一...					</h4>
                    </a>
                    <p class="text-black80">Bella Hadid与姐姐Gigi Hadid为现今时尚圈...</p>
                </dd>
            </dl>
            <dl class="clearfix">
                <dt class="pull-left">
                    <a title="将清爽的水果元素穿上身 变身元气时尚咖" href="" target="_blank">
                        <img width="125" height="100" title="将清爽的水果元素穿上身 变身元气时尚咖" class="lazy" style="display: inline;" alt="将清爽的水果元素穿上身 变身元气时尚咖" src="../image/43.jpg" data-original="../image/43.jpg">
                    </a>
                </dt>
                <dd class="pull-left">
                    <a class="text-black90" href="">
                        <h4 title="将清爽的水果元素穿上身 变身元气时尚咖">
                            将清爽的水果元素穿上身 变身元气时尚咖					</h4>
                    </a>
                    <p class="text-black80">炎热的夏天即将抵达，你准备好用清爽的姿态迎接了嘛？说到夏天，...</p>
                </dd>
            </dl>
            <dl class="clearfix">
                <dt class="pull-left">
                    <a title="做时尚Office Lady,就请你白衬衫不要那么无聊！" href="" target="_blank">
                        <img width="125" height="100" title="做时尚Office Lady,就请你白衬衫不要那么无聊！" class="lazy" style="display: inline;" alt="做时尚Office Lady,就请你白衬衫不要那么无聊！" src="../image/44.jpg" data-original="../image/44.jpg">
                    </a>
                </dt>
                <dd class="pull-left">
                    <a class="text-black90" href="">
                        <h4 title="做时尚Office Lady,就请你白衬衫不要那么无聊！">
                            做时尚Office Lady,就请你白衬...					</h4>
                    </a>
                    <p class="text-black80">衬衫作为四季的必备单品，不止是因为百搭，更重要的可优雅、可青...</p>
                </dd>
            </dl>
        </div>
        <div class="text-center theone com">
            <div class="center-block zs"></div>
            <div class="to"><a href="">Special</a></div>
            <div class="banner" id="theone">
                <div class="hd">
                    <ul class="text-center list-unstyled"><li>1</li><li>2</li><li class="on">3</li><li>4</li></ul>
                </div>
                <div class="bd">
                    <div class="tempWrap" style="overflow:hidden; position:relative; width:328px"><ul class="list-unstyled" style="margin: 0px; padding: 0px; left: -984px; width: 1968px; overflow: hidden; position: relative;"><li class="clone" style="width: 328px; float: left;">
                        <a title="没有这5种颜色的衣橱，秋冬怎么过？" href="" target="_blank">
                            <div class="img-wrap">
                                <img width="328" height="447" title="没有这5种颜色的衣橱，秋冬怎么过？" class="lazy" alt="没有这5种颜色的衣橱，秋冬怎么过？" src="../image/36.jpg" data-original="../image/36.jpg">
                            </div>
                        </a>
                        <h4><a title="没有这5种颜色的衣橱，秋冬怎么过？" href="" target="_blank">
                            没有这5种颜色的衣橱...                                </a></h4>
                        <p>每到换季都是一个大工程，一打开衣橱全是黑白灰，偶尔想换换口味又怕穿错。</p>
                    </li>
                        <li style="width: 328px; float: left;">
                            <a title="为什么众女神专宠这条烟管裤？因为它遮肉显瘦，关键是百搭！" href="" target="_blank">
                                <div class="img-wrap">
                                    <img width="328" height="447" title="为什么众女神专宠这条烟管裤？因为它遮肉显瘦，关键是百搭！" class="lazy" style="display: inline;" alt="为什么众女神专宠这条烟管裤？因为它遮肉显瘦，关键是百搭！" src="../image/38.jpg" data-original="../image/38.jpg">
                                </div>
                            </a>
                            <h4><a title="为什么众女神专宠这条烟管裤？因为它遮肉显瘦，关键是百搭！" href="" target="_blank">
                                为什么众女神专宠这条...                                </a></h4>
                            <p>有没有一条裤子遮肉显瘦，还精致大方，关键是相当百搭，甚至适宜出现在任何场合？有这...</p>
                        </li>
                        <li style="width: 328px; float: left;">
                            <a title="时装精的诞生，就靠高级感的大地色！" href="" target="_blank">
                                <div class="img-wrap">
                                    <img width="328" height="447" title="时装精的诞生，就靠高级感的大地色！" class="lazy" style="display: inline;" alt="时装精的诞生，就靠高级感的大地色！" src="../image/39.jpg" data-original="../image/39.jpg">
                                </div>
                            </a>
                            <h4><a title="时装精的诞生，就靠高级感的大地色！" href="" target="_blank">
                                时装精的诞生，就靠高...                                </a></h4>
                            <p>一般人提到驼色、卡其色、咖啡色等就会想到知性简约、无印风的文青穿搭。不过其实这些...</p>
                        </li>
                        <li style="width: 328px; float: left;">
                            <a title="衬衫是法式衣橱挚爱，也是亲肤的时髦单品" href="" target="_blank">
                                <div class="img-wrap">
                                    <img width="328" height="447" title="衬衫是法式衣橱挚爱，也是亲肤的时髦单品" class="lazy" style="display: inline;" alt="衬衫是法式衣橱挚爱，也是亲肤的时髦单品" src="../image/37.jpg" data-original="../image/37.jpg">
                                </div>
                            </a>
                            <h4><a title="衬衫是法式衣橱挚爱，也是亲肤的时髦单品" href="" target="_blank">
                                衬衫是法式衣橱挚爱，...                                </a></h4>
                            <p>在更新换代如此之快的时尚圈，衬衫是一个不过时的神话。它能衬托和挖掘出每一个穿着者...</p>
                        </li>

                    </ul></div>
                </div>
            </div>
        </div>
        <!--
<div class="searchbox com">
    <form action="/search/index" method="get" id="searchform2">
        <input class="searchtext" id="searchtext2" name="keywords" type="text"/><input class="searchbtn icon icon-search" type="button" onclick="if($('#searchtext2').val()!='') $('#searchform2').submit();" value="|">
    </form>
</div>
 -->
    </aside>
    <script>
        $(function() {
            $(".gifs").jqGifPreview();
        });
    </script>
    <script language="Javascript">
        document.oncontextmenu=new Function("event.returnValue=false");
        document.onselectstart=new Function("event.returnValue=false");
    </script>
</div>


<%@ include file="../../footer.jsp" %>

</body>
</html>
