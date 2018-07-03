<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
  Created by IntelliJ IDEA.
  User: gxy
  Date: 2018/6/6
  Time: 8:58
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
<base href="<%=basePath%>">
<head>
    <meta charset="utf-8">
    <title>设计师主页</title>
    <!-- Global styles START -->
    <link href="static/user/online/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="static/user/online/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Global styles END -->
    <%--关注--%>
  <%--  <link href="https://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">--%>
    <!-- Page level plugin styles START -->
    <link href="static/user/online/assets/pages/css/animate.css" rel="stylesheet">
    <link href="static/user/online/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <link href="static/user/online/assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
    <!-- Page level plugin styles END -->

    <!-- Theme styles START -->
    <link href="static/user/online/assets/pages/css/components.css" rel="stylesheet">
    <!-- <link href="assets/pages/css/slider.css" rel="stylesheet">-->
    <link href="static/user/online/assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
    <link href="static/user/online/assets/corporate/css/style.css" rel="stylesheet">
    <link href="static/user/online/assets/corporate/css/style-responsive.css" rel="stylesheet">
    <link href="static/user/online/assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
    <link href="static/user/online/assets/corporate/css/custom.css" rel="stylesheet">


    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css" />
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css"/>
    <script type="text/javascript" src="static/user/common/top/js/jquery-1.11.2.min.js"></script>

    <!--设计师开始-->
    <script src="static/user/online/js/tools.js"></script>
    <link rel="stylesheet" type="text/css" href="static/user/online/css/public-desiger.css">
    <!-- <link rel="shortcut icon" href="favicon.ico"> <!--设计师结束-->

    <!--底部-->
    <link href="static/user/common/foot/css/foot.css" rel="stylesheet" type="text/css">
    <!--底部-->

    <style>
        .clearfix .label{
            color:#000;
            font-size:12px;
        }
        #content{
            height:800px;
            width:90%;
        }
        #cloth_price{
            margin-top:30px;
            margin-left:20px;
        }
        .goods_list{
            margin-top:-10px;
        }
        .chat img{
            width:30px;
            height:20px;

        }
        .attention{
            margin-left:50px;
        }
        .attention img{
            width:40px;
            height:23px;
        }
        /*关注*/
        .follow {
            margin: 1.5em auto 0 auto;
            background-color: #2589cc;
            width: 70px;
            color: white;
            font-family: 'Microsoft YaHei','Lantinghei SC','Open Sans',Arial,'Hiragino Sans GB','STHeiti','WenQuanYi Micro Hei','SimSun',sans-serif;
            text-align: center;
            padding: .5em;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            -ms-border-radius: 5px;
            -o-border-radius: 5px;
            border-radius: 5px;
            -webkit-transition-property: all;
            -moz-transition-property: all;
            -o-transition-property: all;
            transition-property: all;
            -webkit-transition-duration: 0.3s;
            -moz-transition-duration: 0.3s;
            -o-transition-duration: 0.3s;
            transition-duration: 0.3s;
            -webkit-transition-timing-function: ease;
            -moz-transition-timing-function: ease;
            -o-transition-timing-function: ease;
            transition-timing-function: ease; }

        .follow1 {
            margin: 1.5em auto 0 auto;
            background-color: #34CF7A;
            width: 70px;
            color: white;
            font-family: 'Microsoft YaHei','Lantinghei SC','Open Sans',Arial,'Hiragino Sans GB','STHeiti','WenQuanYi Micro Hei','SimSun',sans-serif;
            text-align: center;
            padding: .5em;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            -ms-border-radius: 5px;
            -o-border-radius: 5px;
            border-radius: 5px;
            -webkit-transition-property: all;
            -moz-transition-property: all;
            -o-transition-property: all;
            transition-property: all;
            -webkit-transition-duration: 0.3s;
            -moz-transition-duration: 0.3s;
            -o-transition-duration: 0.3s;
            transition-duration: 0.3s;
            -webkit-transition-timing-function: ease;
            -moz-transition-timing-function: ease;
            -o-transition-timing-function: ease;
            transition-timing-function: ease; }
        .follow:hover,.follow1:hover {
            cursor: pointer; }


    </style>
</head>
<body>

<%@ include file="../header.jsp" %>
<%@ include file="sixin.jsp"%>
<!--crazy end-->
<div class="piece gray">
    <!--个人简介开始-->
    <div class="content-wrap">
        <div class="profiles">
            <dl class="clearfix">
                <%--<a href="#" class="chat">私信</a>
                <a href="#" class="chat">关注</a>
--%>
                <a href="javascript:void(0)"  target="_self">
                    <dt><img src="${user.userImgurl}" alt="${user.username}" /></dt>
                </a>
                <dd>

                    <h2 class="name clearfix">
                        <a href="javascript:void(0)"  target="_self">
                            <strong  class="n">${user.truename}</strong>

                        </a>
                        <br/>
                        <span style="font-size:16px;color:#000;">设计师</span>
                    </h2>
                    <br/>
                    <%--<p class="desc">李一桐，1990年9月6日出生于山东济南，中国内地女演员，毕业于北京舞蹈学院。2015年，因在试戏中表现突出，李一桐被于正钦点主演民国玄幻网络剧《半妖倾城》&ndash;%&gt;--%>
                    <%--，并正式进入 ……<a href="/dna/star/d-30822.html" target="_self">【详情】</a></p>--%>

                    <p class="desc">${user.userIntroduce} ……<a href="/dna/star/d-30822.html" target="_self">【详情】</a></p>
                    <a href="${pageContext.request.contextPath}/user/chat.action" class="chat"><img src="static/user/online/images/gif-0185.gif" title="私信"/></a>
                    <%--<a href="#" class="attention"><img src="static/user/online/images/attention.png" title="关注"/></a>--%>
                    <div class="container">
                        <div class="content">
                            <c:choose>
                                <c:when test="${empty userId}">
                                    <div class="follow" onclick="noLogin()"> <div class="icon-twitter"></div> 关注</div>  <%--未登录--%>
                                </c:when>
                                <c:when test="${not empty userId}">
                                    <c:if test="${mark==0}">
                                        <div class="follow" onclick="noAttention()"> <div class="icon-twitter"></div>关注 </div>
                                    </c:if>
                                    <c:if test="${mark==1}">
                                        <div class="follow1" onclick="attention()"> <div class="icon-ok"></div>已关注</div>
                                    </c:if>
                                </c:when>
                            </c:choose>


                        </div>
                    </div>
            <script>
                var i=0;
                var j=0;
                function noLogin() {
                    alert("请先登录");
                }
                function noAttention(){
                    i++;
                    if(i%2==1){
                        $.ajax({
                            url:"user/online_addAttention.action?desId="+${user.userId},
                            type:"POST",
                            success:function (data) {
                                alert("关注成功");

                                $('.content').html('<div class="follow1" onclick="noAttention()"><div class="icon-twitter"></div> 已关注</div>');
                            }
                        });

                      /*  $('.follow').css('background-color','#34CF7A');*/
                     /*   $('.content').html('<div class="follow1" onclick="noAttention()"><div class="icon-ok"></div> 已关注</div>');*/


                    }
                    if(i%2==0){
//                        $('.follow').css('background-color','#2589cc');
                       /* $('.follow').html('<div class="icon-twitter"></div> 转粉');*/
                        $.ajax({
                            url:"user/online_removeAttention.action?desId="+${user.userId},
                            type:"POST",
                            success:function (data) {
                                alert("取消关注成功");

                                $('.content').html('<div class="follow" onclick="noAttention()"><div class="icon-twitter"></div> 关注</div>');
                            }
                        });
                       /* $('.content').html('<div class="follow" onclick="noAttention()"><div class="icon-twitter"></div> 关注</div>')*/
                    }
                }
                function attention() {
                    j++;
                    if(j%2==1){
                        $.ajax({
                            url:"user/online_removeAttention.action?desId="+${user.userId},
                            type:"POST",
                            success:function (data) {
                                alert("取消关注成功");

                                $('.content').html('<div class="follow" onclick="attention()"><div class="icon-twitter"></div> 关注</div>');
                            }

                        });

                    }
                    if(j%2==0){
                        $.ajax({
                            url:"user/online_addAttention.action?desId="+${user.userId},
                            type:"POST",
                            success:function (data) {
                                alert("关注成功")
                                $('.content').html('<div class="follow1" onclick="attention()"><div class="icon-ok"></div> 已关注</div>');
                            }

                        });

                    }
                }
                 /*   $(document).ready(

                        function iniciar(){

                            var i=0;
                            $('.follow').on("click", function(){
                            i++;
                            if(i%2==1){

                            $('.follow').css('background-color','#34CF7A');
                            $('.follow').html('<div class="icon-ok"></div> 已转粉');


                            }
                            if(i%2==0){
                            $('.follow').css('background-color','#2589cc');
                            $('.follow').html('<div class="icon-twitter"></div> 转粉');
                            }

                    });
                    }
                    );*/
        </script>

                </dd>
            </dl>
        </div>
    </div>
</div>

<!--商品列表开始-->
<div>
    <div class="main">

        <h2 style="font-size:20px;font-weight: 900;margin-left: 100px;">设计师作品</h2>
        <c:forEach var="i" begin="0" end="${fn:length(goodsList)/5-1}">
            <div class="container">
                <div class="row margin-bottom-40">
                    <div class="col-md-12 sale-product">
                        <div class="owl-carousel owl-carousel5">
                            <c:forEach var="j" begin="0" end="4">
                                <div>
                                    <div class="product-item">
                                        <div class="pi-img-wrapper">
                                            <img src="${goodsList[i*5+j].goodsImgList[0].goodsImgurl}" class="img-responsive" alt="${goodsList[i*5+j].goodsName}">
                                            <div>
                                                <a href="${goodsList[i*5+j].goodsImgList[0].goodsImgurl}" class="btn btn-default fancybox-button">Zoom</a>
                                                <%--<a href="#product-pop-up" class="btn btn-default fancybox-fast-view view">View</a>--%>
                                                <a href="#${goodsList[i*5+j].goodsId}" class="btn btn-default fancybox-fast-view view">View</a>
                                            </div>
                                        </div>
                                        <h3><a href="shop-item.html">${goodsList[i*5+j].goodsName}</a></h3>
                                        <div class="pi-price">${goodsList[i*5+j].goodsPrice}</div>
                                        <a href="user/online_buy.action?id=${goodsList[i*5+j].goodsId}&userId=${user.userId}" class="btn btn-default add2cart">立即购买</a>
                                        <div class="sticker sticker-sale"></div>
                                    </div>
                                </div>

                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>



    <!-- BEGIN fast view of a product -->

 <!--弹出框开始-->
<c:forEach var="i" begin="0" end="${fn:length(goodsList)/5}">
    <c:forEach var="j" begin="0" end="4">
        <div id="${goodsList[i*5+j].goodsId}" style="display: none; width: 700px;">
        <div class="product-page product-pop-up">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-3">
                    <%--<c:out value="${j}">--%>
                    <%--</c:out>--%>
                    <div class="product-main-image">

                       <img src="${goodsList[i*5+j].goodsImgList[0].goodsImgurl}" alt="${goodsList[i*5+j].goodsName}" class="img-responsive">
                    </div>
                    <div class="product-other-images">

                        <c:forEach var="img" items="${goodsList[i*5+j].goodsImgList}">
                            <a href="javascript:;"><img alt="${goodsList[i*5+j].goodsName}" src="${img.goodsImgurl}"></a>
                        </c:forEach>
                 <!--       <a href="javascript:;" class="active"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model3.jpg"></a>
                        <a href="javascript:;"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model4.jpg"></a>
                        <a href="javascript:;"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model5.jpg"></a>-->
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-9">
                    <br/>
                    <div class="price-availability-block clearfix">
                        <div class="price" id="cloth_price">
                            <strong><span>${goodsList[i*5+j].goodsPrice}</span></strong>
                            <em>￥<span>${goodsList[i*5+j].goodsPrice+200}</span></em>
                        </div>
                        <div class="availability">

                        </div>
                    </div>
                    <div class="description">
                        <p>${goodsList[i*5+j].goodsIntroduce}</p>
                        <%--<p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat Nostrud duis molestie at dolore.</p>--%>
                    </div>
                    <div class="product-page-options">
                        <div class="pull-left">
                            <label class="control-label">Size:</label>
                            <select class="form-control input-sm">
                                <c:forEach items="${fn:split(goodsList[i*5+j].size,',')}" var="size">
                                    <option>${size}</option>
                                </c:forEach>

                            </select>
                        </div>
                        <div class="pull-left">
                            <label class="control-label">Color:</label>
                            <select class="form-control input-sm">
                                <c:forEach items="${fn:split(goodsList[i*5+j].color,',')}" var="color">
                                    <option>${color}</option>
                                </c:forEach>

                            </select>
                        </div>
                    </div>
                    <div class="product-page-cart">

                            <div class="product-quantity">
                                <input id="product-quantity2" type="text" value="1" readonly class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary"  id="buyGoods" onclick="buy(${goodsList[i*5+j].goodsId},${user.userId})">立即购买</button>


                        <%--<div id="paidimg">
                        </div>--%>
                        <script>
                            function buy(id,userId) {
                                alert(111)
                                alert(id)
                                alert(userId)

                                window.location.href="${pageContext.request.contextPath }/user/online_buygoods.action?id="+id+"&userId="+userId;
                            }



                        </script>
                    </div>

                    <%--<div class="sticker sticker-sale"></div>--%>
                </div>
            </div>
        </div>
    </div>
    </c:forEach>
</c:forEach>

    <script src="static/user/online/assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="static/user/online/assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="static/user/online/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="static/user/online/assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
    <script src="static/user/online/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="static/user/online/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="static/user/online/assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='static/user/online/assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="static/user/online/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->

    <script src="static/user/online/assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script src="static/user/online/assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();
            Layout.initOWL();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initTwitter();
        });
    </script>

</div><!--商品列表结束-->

<%--<div class="footer" style="margin-top:50px; height:460px" >
    <div class="footer-wrap">
        <div class="footer-info">
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
</div>--%>
    <%@ include file="../footer.jsp" %>

</body>
</html>
