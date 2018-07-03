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

<%@ include file="../header.jsp"%>

<div class="main ecommerce">
    <div class="container">

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
                        <%--<ul class="social-icons">
                            <li><a class="facebook" data-original-title="facebook" href="javascript:;"></a></li>
                            <li><a class="twitter" data-original-title="twitter" href="javascript:;"></a></li>
                            <li><a class="googleplus" data-original-title="googleplus" href="javascript:;"></a></li>
                            <li><a class="evernote" data-original-title="evernote" href="javascript:;"></a></li>
                            <li><a class="tumblr" data-original-title="tumblr" href="javascript:;"></a></li>
                        </ul>--%>
                        <ul class="bdsharebuttonbox">
                            <li><a href="#" class="bds_more" data-cmd="more"></a></li><li><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></li>
                            <li><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a></li>
                            <li><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a></li></ul>
                        <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"32"},"share":{},"":{"viewList":["weixin","tsina","qzone"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["weixin","tsina","qzoe"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
                        <%--<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.0.min.js"></script>--%>
                        <script>
                            var url = "http://www.junlenet.com";
                            var desc_ = "iFashion";
                            function tencentWeiBo(){
                                var _url = "http://www.junlenet.com";
                                var _showcount = 0;
                                var _summary = "";
                                var _title = desc_;
                                var _site = "http://www.junlenet.com";
                                var _width = "600px";
                                var _height = "800px";
                                var _pic = "http://www.junlenet.com/uploads/allimg/150510/1-150510104044.jpg";
                                var _shareUrl = 'http://share.v.t.qq.com/index.php?c=share&a=index';
                                _shareUrl += '&title=' + encodeURIComponent(_title||document.title);    //分享的标题
                                _shareUrl += '&url=' + encodeURIComponent(_url||location.href);    //分享的链接
                                _shareUrl += '&appkey=5bd32d6f1dff4725ba40338b233ff155';    //在腾迅微博平台创建应用获取微博AppKey
                                //_shareUrl += '&site=' + encodeURIComponent(_site||'');   //分享来源
                                _shareUrl += '&pic=' + encodeURIComponent(_pic||'');    //分享的图片，如果是多张图片，则定义var _pic='图片url1|图片url2|图片url3....'
                                window.open(_shareUrl,'width='+_width+',height='+_height+',left='+(screen.width-_width)/2+',top='+(screen.height-_height)/2+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
                            }
                            var top = window.screen.height / 2 - 250;
                            var left = window.screen.width / 2 - 300;
                            var height = window.screen.height;
                            var width =  window.screen.width;
                            /*title是标题，rLink链接，summary内容，site分享来源，pic分享图片路径,分享到新浪微博*/
                            function shareTSina() {
                                var title = desc_;
                                var   rLink = "http://www.junlenet.com";
                                var backUrl = "http://wx.hengfu100.com/member/c_friend";
                                var site = desc_;
                                var pic = "http://www.junlenet.com/uploads/allimg/150510/1-150510104044.jpg";
                                window.open("http://service.weibo.com/share/share.php?pic=" +encodeURIComponent(pic) +"&title=" +
                                    encodeURIComponent(title.replace(/ /g, " ").replace(/<br \/>/g, " "))+ "&url=" + encodeURIComponent(rLink),
                                    "分享至新浪微博",
                                    "height=500,width=600,top=" + top + ",left=" + left + ",toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no");
                            }

                            function qqFriend() {
                                var p = {
                                    url : 'http://www.junlenet.com', /*获取URL，可加上来自分享到QQ标识，方便统计*/
                                    desc:'',
                                    //title : '新玩法，再不来你就out了！', /*分享标题(可选)*/
                                    title:desc_,
                                    summary : '', /*分享摘要(可选)*/
                                    pics : 'http://www.junlenet.com/uploads/allimg/150510/1-150510104044.jpg', /*分享图片(可选)*/
                                    flash : '', /*视频地址(可选)*/
                                    site : 'http://www.junlenet.com', /*分享来源(可选) 如：QQ分享*/
                                    style : '201',
                                    width : 32,
                                    height : 32
                                };
                                var s = [];
                                for ( var i in p) {
                                    s.push(i + '=' + encodeURIComponent(p[i] || ''));
                                }
                                var url = "http://connect.qq.com/widget/shareqq/index.html?"+s.join('&');
                                return url;
                                //window.location.href = url;
                                //document.write(['<a class="qcShareQQDiv" href="http://connect.qq.com/widget/shareqq/index.html?',s.join('&'), '" >分享给QQ好友</a>' ].join(''));
                            }

                            function qqZone(){
                                var _url = "http://www.junlenet.com";
                                var _showcount = 0;
                                var _desc = desc_;
                                var _summary = "";
                                var _title = "iFashion";
                                var _site = "";
                                var _width = "600px";
                                var _height = "800px";
                                var _summary = "";
                                var _pic = "http://www.junlenet.com/uploads/allimg/150510/1-150510104044.jpg";
                                var _shareUrl = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?';
                                _shareUrl += 'url=' + encodeURIComponent(_url||document.location);   //参数url设置分享的内容链接|默认当前页location
                                _shareUrl += '&showcount=' + _showcount||0;      //参数showcount是否显示分享总数,显示：'1'，不显示：'0'，默认不显示
                                _shareUrl += '&desc=' + encodeURIComponent(_desc||'分享的描述');    //参数desc设置分享的描述，可选参数
                                //_shareUrl += '&summary=' + encodeURIComponent(_summary||'分享摘要');    //参数summary设置分享摘要，可选参数
                                _shareUrl += '&title=' + encodeURIComponent(_title||document.title);    //参数title设置分享标题，可选参数
                                //_shareUrl += '&site=' + encodeURIComponent(_site||'');   //参数site设置分享来源，可选参数
                                _shareUrl += '&pics=' + encodeURIComponent(_pic||'');   //参数pics设置分享图片的路径，多张图片以＂|＂隔开，可选参数
                                window.open(_shareUrl,'width='+_width+',height='+_height+',top='+(screen.height-_height)/2+',left='+(screen.width-_width)/2+',toolbar=no,menubar=no,scrollbars=no,resizable=1,location=no,status=0');
                            }

                            $(function(){
                                var url = qqFriend();
                                $("#qq_id").attr("href",url);
                            })
                        </script>
                    </div>

                    <div class="product-page-content">
                        <ul id="myTab" class="nav nav-tabs">
                            <li><a href="#Description" data-toggle="tab">商品描述</a></li>
                           <%-- <li><a href="#Information" data-toggle="tab">商品信息</a></li>--%>
                            <li class="active"><a href="#Reviews" data-toggle="tab">评论(${goodsAndImgDesignerVO.reviewNum})</a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane fade" id="Description">
                                <p>${goodsAndImgDesignerVO.goodsIntroduce}</p>
                            </div>
                            <%--<div class="tab-pane fade" id="Information">
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
                            </div>--%>
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
                <c:forEach var="i" begin="0" end="4">
                    <div>
                        <div class="product-item">
                            <div class="pi-img-wrapper">
                                <img src="${goodsAndImgDesignerVOList[i].goodsImgList[0].goodsImgurl}" class="img-responsive" >
                                <div>
                                    <a href="${goodsAndImgDesignerVOList[i].goodsImgList[0].goodsImgurl}" class="btn btn-default fancybox-button">Zoom</a>
                                  <%--  <a href="#${goodsAndImgDesignerVOList[i].goodsId}" class="btn btn-default fancybox-fast-view">View</a>--%>
                                </div>
                            </div>
                            <h3><a href="shop-item.html">${goodsAndImgDesignerVOList[i].goodsName}</a></h3>
                            <div class="pi-price">${goodsAndImgDesignerVOList[i].goodsPrice}</div>
                            <a href="user/online_buygoods.action?id=${goodsAndImgDesignerVOList[i].goodsId}" class="btn btn-default add2cart">立即购买</a>
                            <div class="sticker sticker-new"></div>
                        </div>
                    </div>
                </c:forEach>

               <%-- <div>
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
                </div>--%>
               <%-- <div>
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
                </div>--%>
               <%-- <div>
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
                </div>--%>
                <%--<div>
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
                </div>--%>
              <%--  <div>
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
                </div>--%>
                <%--<div>
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
                </div>--%>
            </div>
        </div>
    </div>
    <!-- END SIMILAR PRODUCTS -->
</div>
</div>
<c:forEach var="i" begin="0" end="4">
<div id="${goodsAndImgDesignerVOList[i].goodsId}" style="display: none; width: 700px;">
    <div class="product-page product-pop-up">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-3">
                <div class="product-main-image">
                    <img src="${goodsAndImgDesignerVOList[i].goodsImgList[0].goodsImgurl}" alt="${goodsAndImgDesignerVOList[i].goodsName}" class="img-responsive">
                </div>
                <div class="product-other-images">
                    <c:forEach var="img" items="${goodsAndImgDesignerVOList[i].goodsImgList}">
                        <a href="javascript:;"><img alt="${goodsAndImgDesignerVOList[i].goodsName}" src="${img.goodsImgurl}"></a>
                    </c:forEach>
                        <%--<a href="javascript:;" class="active"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model3.jpg"></a>
                        <a href="javascript:;"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model4.jpg"></a>
                        <a href="javascript:;"><img alt="Berry Lace Dress" src="static/user/online/assets/pages/img/products/model5.jpg"></a>--%>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-9">
                <br/>
                <div class="price-availability-block clearfix">
                    <div class="price" id="cloth_price">
                        <strong><span>￥</span>${goodsAndImgDesignerVOList[i].goodsPrice}</strong>
                        <em>￥<span>${goodsAndImgDesignerVOList[i].goodsPrice+200}</span></em>
                    </div>
                    <div class="availability">
                       <%-- Availability: <strong>In Stock</strong>--%>
                    </div>
                </div>
                <div class="description">
                    <p>${goodsAndImgDesignerVOList[i].goodsIntroduce}</p>
                </div>
                <div class="product-page-options">
                    <div class="pull-left">
                        <label class="control-label">Size:</label>
                        <select class="form-control input-sm">
                            <c:forEach items="${fn:split(goodsAndImgDesignerVOList[i].size,',')}" var="size">
                                <option>${size}</option>
                            </c:forEach>

                        </select>
                    </div>
                    <div class="pull-left">
                        <label class="control-label">Color:</label>
                        <select class="form-control input-sm">
                            <c:forEach items="${fn:split(goodsAndImgDesignerVOList[i].color,',')}" var="color">
                                <option>${color}</option>
                            </c:forEach>
                            <%--<option>Red</option>
                            <option>Blue</option>
                            <option>Black</option>--%>
                        </select>
                    </div>
                </div>
                <div class="product-page-cart">
                        <div class="product-quantity">
                            <input id="product-quantity2" type="text" value="1" readonly class="form-control input-sm">
                        </div>
                        <%--<button class="btn btn-primary buygoods">立即购买</button>--%>
                    <a href="user/online_buygoods.action?id=${goodsAndImgDesignerVOList[i].goodsId}" class="btn btn-default add2cart">立即购买</a>
                    <div id="paidimg">
                    </div>
                   <%-- <script>
                        $(".buygoods").click(function(){
                            window.location.href="user/online_buygoods.action?id=${goodsAndImgDesignerVOList[i].goodsId}";
                        });
                    </script>--%>

                </div>
                <div class="sticker"></div>
            </div>


        </div>
    </div>
</div>
</c:forEach>




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
<script src="static/user/online/assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>
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

<script>
    $("button[type='submit']").click(function () {

        var num=$("#product-quantity").val();


        window.location.href="user/receive_address.action?goodsNum="+num+"&price="+'${goodsAndImgDesignerVO.goodsPrice}'+"&goodsId="+'${goodsAndImgDesignerVO.goodsId}&desId='+${designerId}
    })
</script>
<!-- END PAGE LEVEL JAVASCRIPTS -->

<%@ include file="../footer.jsp" %>
</body>
</html>
