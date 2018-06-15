<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: gxy
  Date: 2018/6/6
  Time: 9:25
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
    <title>购物页面</title>
    <link href="static/user/online/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="static/user/online/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Global styles END -->

    <link rel="shortcut icon" href="favicon.ico">


    <!-- Page level plugin styles START -->
    <link href="static/user/online/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <link href="static/user/online/assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="static/user/online/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
    <link href="static/user/online/assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin styles END -->

    <!-- Theme styles START -->
    <link href="static/user/online/assets/pages/css/components.css" rel="stylesheet">
    <link href="static/user/online/assets/corporate/css/style.css" rel="stylesheet">
    <link href="static/user/online/assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
    <!-- <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">-->
    <link href="static/user/online/assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
    <!-- <link href="assets/corporate/css/custom.css" rel="stylesheet"> -->
    <!-- Theme styles END -->
    <!--底部-->
    <link href="static/user/common/foot/css/foot.css" rel="stylesheet" type="text/css">

    <!--导航栏-->
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css" />
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css"/>
    <script type="text/javascript" src="static/user/common/top/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="static/user/common/top/js/index_search.js"></script>
    <!--导航栏-->


    <style>
        #goods{
            margin-left:120px;
            margin-top:20px;
        }
        #goods .product-item{
            width:280px;
            height:280px;
            margin-right:0px;
            margin-left:0px;
        }
        #cloth_price{
            margin-top:30px;
            margin-left:20px;
        }
        #content{
            margin-left:100px;
        }

    </style>
</head>
<body>
<div class='w1180 ad' id="OL_SYS_925_51">
</div>

<div class='w1180 logoAndlogin'>
    <h1 class='logo'>
        <a href="">
            <img src="static/user/common/top/images/top.png" height='72' width='840' style='padding-left:200px' alt='iFashion' title='iFashion' />
        </a>
    </h1>
    <div class="login">

        <a href="" target="_self" rel="nofollow">登录</a> |
        <a href="" target="_self" rel="nofollow">注册</a>

        <!-- 个人中心 -->
        <!-- <a href="" target="_self" rel="nofollow">个人中心</a> -->
    </div>
</div>
<div class='navSearch'>
    <div class="navBg"></div>
    <div class="w1180">
        <div class="nav1">
            <a href="index.html" class="here">首页</a>
            <a href="clothes.html">穿衣搭配</a>
            <a href="community.html">社区精选</a>
            <a href="information.html">资讯</a>
            <a href="online.html">私人定制</a>
            <a href="javascript:void(0);" class="searchBt"></a>
        </div>
        <div class="navChilren">
            <ul>
                <li></li>
                <li></li>
                <li>
                    <a href="forum.html" target="_blank">论坛</a>
                    <a href="community">社区</a>
                </li>
                <li></li>

            </ul>
        </div>
    </div>
    <div class='w1180 search'>
        <form id="searchPage" target="_blank" method="get" action="user/search" accept-charset="utf8">
            <div class="mainsearch">
                <input onkeyup="selBrand('searchpro','auto_brand')" type="text" class="main_input" id="searchpro" autocomplete="off" name="q" value="请输入名称">
                <div class="c1_se_2_c" id="auto_brand" style="display: none;"></div>
            </div>
            <input type="hidden" name="s" value="15679544665037353740">
            <input type="hidden" name="nsid" value="1" class="aritcleType">
            <input type="button" class="mainbtn" id="J_search_sub" value="">
            <input type="button" title='关闭搜索框' class="closeSearchbtn" value="">
        </form>
        <div class='hotpro'>
            <a href="" title="资讯-夏纳电影节" target="_blank">资讯-夏纳电影节</a>
            <a href="" title="定制-裙子" target="_blank">定制-裙子</a>
            <a href="" title="定制-运动鞋" target="_blank">定制-运动鞋</a>
            <!-- 设计师 -->
            <a href="" title="设计师-房莹" target="_blank">设计师-房莹</a>
            <a href="" title="话题" target="_blank">话题-PVC</a>
            <!-- <a href="" title="?????" target="_blank"></a> -->
        </div>
    </div>



</div>


<!--crazy start-->
<div id="crazynavdown">
    <div id="OL_SYS_938_51" class="w1180 s"></div>
    <div class="b">
        <div id="OL_SYS_943_51" class="b1"></div>
        <div id="OL_SYS_448_51" class="b2"></div>
    </div>
</div>
<!--crazy end-->

<div class="main ecommerce">
    <div class="container">
        <%--<ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="">Store</a></li>
            <li class="active">Cool green dress with red bell</li>
        </ul>--%>
        <div class="col-md-9 col-sm-7" id="content">
            <div class="product-page">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="product-main-image">
                            <%--<img src="static/user/online/assets/pages/img/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive" data-BigImgsrc="static/user/online/assets/pages/img/products/model7.jpg">--%>
                            <img src="${goodsAndImgDesignerVO.goodsImgList[0].goodsImgurl}" alt="${goodsAndImgDesignerVO.goodsName}" class="img-responsive" data-BigImgsrc="${goodsAndImgDesignerVO.goodsImgList[0].goodsImgurl}">
                        </div>
                        <div class="product-other-images">
                            <c:forEach var="img" items="${goodsAndImgDesignerVO.goodsImgList}">
                                <a href="${img.goodsImgurl}" class="fancybox-button" rel="photos-lib">
                                    <img alt="${goodsAndImgDesignerVO.goodsName}" src="${img.goodsImgurl}"></a>
                            </c:forEach>
                           <%-- <a href="static/user/online/assets/pages/img/products/model3.jpg" class="fancybox-button" rel="photos-lib"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model3.jpg"></a>
                            <a href="static/user/online/assets/pages/img/products/model4.jpg" class="fancybox-button" rel="photos-lib"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model4.jpg"></a>
                            <a href="static/user/online/assets/pages/img/products/model5.jpg" class="fancybox-button" rel="photos-lib"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model5.jpg"></a>--%>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <h1>${goodsAndImgDesignerVO.goodsName}</h1>
                        <div class="price-availability-block clearfix">
                            <div class="price">
                                <strong><span>$</span>${goodsAndImgDesignerVO.goodsPrice}</strong>
                                <em>$<span>${goodsAndImgDesignerVO.goodsPrice+200}</span></em>
                            </div>
                            <div class="availability">
                                Availability: <strong>In Stock</strong>
                            </div>
                        </div>
                        <div class="description">
                            <p>${goodsAndImgDesignerVO.goodsIntroduce}</p>
                        </div>
                        <div class="product-page-options">
                            <div class="pull-left">
                                <label class="control-label">Size:</label>
                                <select class="form-control input-sm">
                                    <c:forEach items="${fn:split(goodsAndImgDesignerVO.size,',')}" var="size">
                                        <option>${size}</option>
                                    </c:forEach>
                                    <%--<option>L</option>
                                    <option>M</option>
                                    <option>XL</option>--%>
                                </select>
                            </div>
                            <div class="pull-left">
                                <label class="control-label">Color:</label>
                                <select class="form-control input-sm">
                                    <c:forEach items="${fn:split(goodsAndImgDesignerVO.color,',')}" var="color">
                                        <option>${color}</option>
                                    </c:forEach>

                                </select>
                            </div>
                        </div>
                        <div class="product-page-cart">
                            <div class="product-quantity">
                                <input id="product-quantity" type="text" value="1" readonly class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary" type="submit">立即购买</button>
                        </div>
                        <div class="review">
                            <input type="range" value="4" step="0.25" id="backing4">
                            <div class="rateit" data-rateit-backingfld="#backing4" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">

                            </div>
                        </div>
                        <ul class="social-icons">
                            <li><a class="facebook" data-original-title="facebook" href="javascript:;"></a></li>
                            <li><a class="twitter" data-original-title="twitter" href="javascript:;"></a></li>
                            <li><a class="googleplus" data-original-title="googleplus" href="javascript:;"></a></li>
                            <li><a class="evernote" data-original-title="evernote" href="javascript:;"></a></li>
                            <li><a class="tumblr" data-original-title="tumblr" href="javascript:;"></a></li>
                        </ul>
                    </div>

                    <div class="product-page-content">
                        <ul id="myTab" class="nav nav-tabs">
                            <li><a href="#Description" data-toggle="tab">商品描述</a></li>
                            <li><a href="#Information" data-toggle="tab">商品信息</a></li>
                            <li class="active"><a href="#Reviews" data-toggle="tab">评论(${goodsAndImgDesignerVO.reviewNum})</a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane fade" id="Description">
                                <p>${goodsAndImgDesignerVO.goodsIntroduce}</p>
                            </div>
                            <div class="tab-pane fade" id="Information">
                                <table class="datasheet">
                                    <tr>
                                        <th colspan="2">Additional features</th>
                                    </tr>
                                    <tr>
                                        <td class="datasheet-features-type">Value 1</td>
                                        <td>21 cm</td>
                                    </tr>
                                    <tr>
                                        <td class="datasheet-features-type">Value 2</td>
                                        <td>700 gr.</td>
                                    </tr>
                                    <tr>
                                        <td class="datasheet-features-type">Value 3</td>
                                        <td>10 person</td>
                                    </tr>
                                    <tr>
                                        <td class="datasheet-features-type">Value 4</td>
                                        <td>14 cm</td>
                                    </tr>
                                    <tr>
                                        <td class="datasheet-features-type">Value 5</td>
                                        <td>plastic</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="tab-pane fade in active" id="Reviews">
                                <!--<p>There are no reviews for this product.</p>-->
                                <c:forEach items="${goodsReviewList}" var="review">
                                <div class="review-item clearfix">
                                    <div class="review-item-submitted">
                                        <c:forEach items="${user}" var="user">
                                            <c:if test="${user.userId==review.userId}">
                                                <strong>${user.username}</strong>
                                            </c:if>
                                        </c:forEach>

                                        <em><fmt:formatDate value="${review.reviewData}" pattern="yyyy/MM/dd"></fmt:formatDate></em>
                                        <div class="rateit" data-rateit-value="${review.reviewRank}" data-rateit-ispreset="true" data-rateit-readonly="true"></div>
                                    </div>
                                    <div class="review-item-content">
                                        <p> ${review.reviewContent}</p>
                                    </div>
                                </div>
                                </c:forEach>

                            </div>
                        </div>
                    </div>

                    <div class="sticker sticker-sale"></div>
                </div>
            </div>
        </div>
        <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->

    <!-- BEGIN SIMILAR PRODUCTS -->
    <div class="row margin-bottom-40" id="goods">
        <div class="col-md-12 col-sm-12">
            <h2>猜你喜欢</h2>
            <div class="owl-carousel owl-carousel4">
                <div>
                    <div class="product-item">
                        <div class="pi-img-wrapper">
                            <img src="static/user/online/assets/pages/img/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                            <div>
                                <a href="static/user/online/assets/pages/img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                            </div>
                        </div>
                        <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                        <div class="pi-price">$29.00</div>
                        <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                        <div class="sticker sticker-new"></div>
                    </div>
                </div>
                <div>
                    <div class="product-item">
                        <div class="pi-img-wrapper">
                            <img src="static/user/online/assets/pages/img/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                            <div>
                                <a href="static/user/online/assets/pages/img/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                            </div>
                        </div>
                        <h3><a href="shop-item.html">Berry Lace Dress2</a></h3>
                        <div class="pi-price">$29.00</div>
                        <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                    </div>
                </div>
                <div>
                    <div class="product-item">
                        <div class="pi-img-wrapper">
                            <img src="static/user/online/assets/pages/img/products/k3.jpg" class="img-responsive" alt="Berry Lace Dress">
                            <div>
                                <a href="static/user/online/assets/pages/img/products/k3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                            </div>
                        </div>
                        <h3><a href="shop-item.html">Berry Lace Dress3</a></h3>
                        <div class="pi-price">$29.00</div>
                        <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                    </div>
                </div>
                <div>
                    <div class="product-item">
                        <div class="pi-img-wrapper">
                            <img src="static/user/online/assets/pages/img/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">
                            <div>
                                <a href="static/user/online/assets/pages/img/products/k4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                            </div>
                        </div>
                        <h3><a href="shop-item.html">Berry Lace Dress4</a></h3>
                        <div class="pi-price">$29.00</div>
                        <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                        <div class="sticker sticker-sale"></div>
                    </div>
                </div>
                <div>
                    <div class="product-item">
                        <div class="pi-img-wrapper">
                            <img src="static/user/online/assets/pages/img/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                            <div>
                                <a href="static/user/online/assets/pages/img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                            </div>
                        </div>
                        <h3><a href="shop-item.html">Berry Lace Dress5</a></h3>
                        <div class="pi-price">$29.00</div>
                        <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                    </div>
                </div>
                <div>
                    <div class="product-item">
                        <div class="pi-img-wrapper">
                            <img src="static/user/online/assets/pages/img/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                            <div>
                                <a href="static/user/online/assets/pages/img/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                            </div>
                        </div>
                        <h3><a href="shop-item.html">Berry Lace Dress6</a></h3>
                        <div class="pi-price">$29.00</div>
                        <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END SIMILAR PRODUCTS -->
</div>
</div>
<div id="product-pop-up" style="display: none; width: 700px;">
    <div class="product-page product-pop-up">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-3">
                <div class="product-main-image">
                    <img src="static/user/online/assets/pages/img/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive">
                </div>
                <div class="product-other-images">
                    <a href="javascript:;" class="active"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model3.jpg"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model4.jpg"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model5.jpg"></a>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-9">

                <div class="price-availability-block clearfix">
                    <div class="price" id="cloth_price">
                        <strong><span>$</span>47.00</strong>
                        <em>$<span>62.00</span></em>
                    </div>
                    <div class="availability">
                        Availability: <strong>In Stock</strong>
                    </div>
                </div>
                <div class="description">
                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat
                        Nostrud duis molestie at dolore.</p>
                </div>
                <div class="product-page-options">
                    <div class="pull-left">
                        <label class="control-label">Size:</label>
                        <select class="form-control input-sm">
                            <option>L</option>
                            <option>M</option>
                            <option>XL</option>
                        </select>
                    </div>
                    <div class="pull-left">
                        <label class="control-label">Color:</label>
                        <select class="form-control input-sm">
                            <option>Red</option>
                            <option>Blue</option>
                            <option>Black</option>
                        </select>
                    </div>
                </div>
                <div class="product-page-cart">
                    <form action="" method="post">
                        <div class="product-quantity">
                            <input id="product-quantity2" type="text" value="1" readonly class="form-control input-sm">
                        </div>
                        <button class="btn btn-primary" type="submit">立即购买</button>
                    </form>

                </div>


                <div class="sticker sticker-sale"></div>
            </div>
        </div>
    </div>
</div>
<!-- END fast view of a product -->
<script src="static/user/online/assets/plugins/jquery.min.js" type="text/javascript"></script>
<script src="static/user/online/assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="static/user/online/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="static/user/online/assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
<script src="static/user/online/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="static/user/online/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="static/user/online/assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
<script src="static/user/online/assets/plugins/zoom/jquery.zoom.min.js" type="text/javascript"></script><!-- product zoom -->
<script src="static/user/online/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
<script src="static/user/online/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="static/user/online/assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>

<script src="static/user/online/assets/corporate/scripts/layout.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        Layout.init();
        Layout.initOWL();
        Layout.initTwitter();
        Layout.initImageZoom();
        Layout.initTouchspin();
        Layout.initUniform();
    });
</script>
<!-- END PAGE LEVEL JAVASCRIPTS -->
<div class="footer" style="margin-top:50px; height:440px" >
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
</div>

</body>
</html>
