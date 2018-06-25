<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
    <title>matchInfo</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <%--仿微博评论部分--%>
    <link rel="stylesheet" href="static/user/article/clothes/match/css/style.css">
    <link rel="stylesheet" href="static/user/article/clothes/match/css/comment.css">

    <link href="static/user/article/clothes/match/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/user/article/clothes/match/css/common.css" rel="stylesheet" type="text/css">
    <link href="static/user/article/clothes/match/css/article.css" rel="stylesheet">
    <link href="static/user/article/clothes/match/css/foot.css" rel="stylesheet" type="text/css">



    <script type="text/javascript" src="static/user/article/clothes/match/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="static/user/article/clothes/match/js/jquery.flexText.js"></script>
    <%--<script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>--%>
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

            <div style="margin:40px 40px;font-size: 15px">
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
            <div class="pull-left text-overflow" style="font-size: 13px">
                上一篇：
                <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${preArticle.articleId}">
                    ${preArticle.articleTitle}			</a>
            </div>
            <div class="pull-right text-overflow" style="font-size: 13px">
                下一篇：
                <a href="${pageContext.request.contextPath }/user/clothes/matchInfo.action?articleId=${nextArticle.articleId}">
                    ${nextArticle.articleTitle}			</a>
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
            <div class="comment-box" >
                <div class="text-black80">穿搭评论</div>

                <input id="article_id_var" value="${article.articleId}" hidden>

                <c:set var="user" value="${sessionScope.user}"/>
                <c:if test="${not empty user}">
                    <input id="current_user_name" value="${user.username}" hidden>
                    <input id="current_user_img" value="${user.userImgurl}" hidden>
                </c:if>
                <div class="commentAll">
                    <!--评论区域 begin-->
                    <div class="reviewArea clearfix" >
                        <textarea style="height: 45px;font-size: 18px;font-family:Helvetica Neue;" class="content comment-input" id="comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>
                        <a href="javascript:;" class="plBtn">评论</a>
                    </div>

                    <!--评论区域 end-->
                    <!--回复区域 begin-->
                    <div class="comment-show">
                        <c:forEach var="arvo" items="${arvo}">
                            <div class="comment-show-con clearfix">

                                <div class="comment-show-con-img pull-left">
                                    <img src="${arvo.user.userImgurl}" alt="${arvo.user.username}">
                                </div>

                                <div class="comment-show-con-list pull-left clearfix">

                                    <div class="pl-text clearfix">
                                        <a href="#" class="comment-size-name">${arvo.user.username} : </a>
                                        <span class="my-pl-con">&nbsp;${arvo.reviewContent}</span>
                                    </div>

                                    <div class="date-dz">
                                        <span class="date-dz-left pull-left comment-time">2017-5-2 11:11:39</span>
                                        <div class="date-dz-right pull-right comment-pl-block">
                                            <a href="javascript:;" class="removeBlock">删除</a>
                                            <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                                            <span class="pull-left date-dz-line">|</span>
                                            <a href="javascript:;" class="date-dz-z pull-left">
                                                <i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)
                                            </a>
                                        </div>
                                    </div>
                                    <div class="hf-list-con"></div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!--回复区域 end-->
                </div>


            </div>
            <div id="scroller"><ul class="comment-list list-unstyled text-black80"></ul></div>
        </div>


        <script type="text/javascript">
            var outer_id = "14700";
            var outer_type = 0;
            var score = 5;
        </script>



        <!--textarea高度自适应-->
        <script type="text/javascript">
            $(function () {
                $('.content').flexText();
            });
        </script>
        <!--textarea限制字数-->
        <script type="text/javascript">
            function keyUP(t){
                var len = $(t).val().length;
                if(len > 180){
                    $(t).val($(t).val().substring(0,181));
                }
            }
        </script>
        <!--点击评论创建评论条-->
        <script type="text/javascript">
            $('.commentAll').on('click','.plBtn',function(){
                var myDate = new Date();
                //获取当前年
                var year=myDate.getFullYear();
                //获取当前月
                var month=myDate.getMonth()+1;
                //获取当前日
                var date=myDate.getDate();
                var h=myDate.getHours();       //获取当前小时数(0-23)
                var m=myDate.getMinutes();     //获取当前分钟数(0-59)
                if(m<10) m = '0' + m;
                var s=myDate.getSeconds();
                if(s<10) s = '0' + s;
                var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
                //获取输入内容
                var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
                console.log(oSize);
                alert("调用");
                var reviewContent = $("#comment-input").val();
                var articleId = $("#article_id_var").val();
                var username = $("#current_user_name").val();
                var userimg = $("#current_user_img").val();

                var datas = {"reviewContent":reviewContent,
                            "articleId":articleId};
                //动态创建评论模块
                oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="'+userimg+'" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">'+username+' </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
                if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
                    $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
                    $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
                }
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/user/clothes/ajaxAddReview.action',
                    dataType: 'json', //表示返回值的数据类型
                    contentType: 'application/json;charset=UTF-8', //内容类型
                    traditional: true, //使json格式的字符串不会被转码
                    data: JSON.stringify(datas),
                    success: function(data) {
                        alert("添加成功");
                    },
                    error: function(data) {
                        alert("失败");
                    },
                });
            });
        </script>
        <!--点击回复动态创建回复块-->
        <script type="text/javascript">
            $('.comment-show').on('click','.pl-hf',function(){
                //获取回复人的名字
                var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
                //回复@
                var fhN = '回复@'+fhName;
                //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
                var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
                //显示回复
                if($(this).is('.hf-con-block')){
                    $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
                    $(this).removeClass('hf-con-block');
                    $('.content').flexText();
                    $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
                    //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
                    //input框自动聚焦
                    $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
                }else {
                    $(this).addClass('hf-con-block');
                    $(this).parents('.date-dz-right').siblings('.hf-con').remove();
                }
            });
        </script>
        <!--评论回复块创建-->
        <script type="text/javascript">
            $('.comment-show').on('click','.hf-pl',function(){
                var oThis = $(this);
                var myDate = new Date();
                //获取当前年
                var year=myDate.getFullYear();
                //获取当前月
                var month=myDate.getMonth()+1;
                //获取当前日
                var date=myDate.getDate();
                var h=myDate.getHours();       //获取当前小时数(0-23)
                var m=myDate.getMinutes();     //获取当前分钟数(0-59)
                if(m<10) m = '0' + m;
                var s=myDate.getSeconds();
                if(s<10) s = '0' + s;
                var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
                //获取输入内容
                var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
                console.log(oHfVal)
                var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
                var oAllVal = '回复@'+oHfName;
                if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){

                }else {
                    alert('d');
                    $.getJSON("pl.json",function(data){
                        alert('1');
                        var oAt = '';
                        var oHf = '';
                        $.each(data,function(n,v){
                            delete v.hfContent;
                            delete v.atName;
                            var arr;
                            var ohfNameArr;
                            if(oHfVal.indexOf("@") == -1){
                                data['atName'] = '';
                                data['hfContent'] = oHfVal;
                            }else {
                                arr = oHfVal.split(':');
                                ohfNameArr = arr[0].split('@');
                                data['hfContent'] = arr[1];
                                data['atName'] = ohfNameArr[1];
                            }

                            if(data.atName == ''){
                                oAt = data.hfContent;
                            }else {
                                oAt = '回复<a href="#" class="atName">@'+data.atName+'</a> : '+data.hfContent;
                            }
                            oHf = data.hfName;
                        });

                        var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
                        oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
                    });
                }
            });
        </script>
        <!--删除评论块-->
        <script type="text/javascript">
            $('.commentAll').on('click','.removeBlock',function(){
                var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
                if(oT.siblings('.all-pl-con').length >= 1){
                    oT.remove();
                }else {
                    $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
                    oT.remove();
                }
                $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();

            })
        </script>
        <!--点赞-->
        <script type="text/javascript">
            $('.comment-show').on('click','.date-dz-z',function(){
                var zNum = $(this).find('.z-num').html();
                if($(this).is('.date-dz-z-click')){
                    zNum--;
                    $(this).removeClass('date-dz-z-click red');
                    $(this).find('.z-num').html(zNum);
                    $(this).find('.date-dz-z-click-red').removeClass('red');
                }else {
                    zNum++;
                    $(this).addClass('date-dz-z-click');
                    $(this).find('.z-num').html(zNum);
                    $(this).find('.date-dz-z-click-red').addClass('red');
                }
            })
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

            <div><b style="font-size: 15px">最近作品 :</b></div>
            <ul class="list-unstyled">

                <c:forEach var="articles" items="${articles}">
                <li class="text-overflow">
                    <a title="${articles.articleTitle}" class="text-black80" href="" style="font-size: 13px">
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

            <c:forEach var="newArticle" items="${newArticle}" begin="0" end="3">
            <dl class="clearfix">
                <dt class="pull-left">
                    <a title="${newArticle.articleTitle}" href="" target="_blank">
                        <img width="125" height="100" title="${newArticle.articleTitle}" class="lazy" style="display: inline;" alt="${newArticle.articleTitle}" src="${newArticle.imgurl}">
                    </a>
                </dt>
                <dd class="pull-left">
                    <a class="text-black90" href="">
                        <h4 title="${newArticle.articleTitle}" style="overflow: hidden;text-overflow: ellipsis;">
                                ${newArticle.articleTitle}	</h4>
                    </a>
                    <p class="text-black80" style="overflow: hidden;text-overflow: ellipsis;">${newArticle.articleTitle}</p>
                </dd>
            </dl>
            </c:forEach>

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
                                    <img width="328" height="447" title="衬衫是法式衣橱挚爱，也是亲肤的时髦单品" class="lazy" style="display: inline;" alt="衬衫是法式衣橱挚爱，也是亲肤的时髦单品" src="static/user/article/clothes/match/image/37.jpg">
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
