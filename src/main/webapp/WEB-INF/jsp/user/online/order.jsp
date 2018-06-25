
<%--
  Created by IntelliJ IDEA.
  User: gxy
  Date: 2018/6/5
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
    <title>定制</title>
    <link href="static/user/online/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <script src="static/user/online/js/jquery.js"></script>
    <script src="static/user/online/js/bootstrap.min.js"></script>

    <script charset="utf-8" src="static/user/online/js/v.js"></script>
    <script src="static/user/online/js/hm.js"></script>
    <script src="static/user/online/js/hm(1).js"></script>

    <script type="text/javascript">
        //防止被iframe嵌套广告
        if (top !== self) {
            top.location.href = this.location.href;
        }
    </script>
    <link rel="stylesheet" href="static/user/online/css/public.css"/>
    <link rel="stylesheet" href="static/user/online/css/reset.css"/>

    <link rel="stylesheet" type="text/css" href="static/user/online/css/searchcu.css"/>
    <link rel="stylesheet" type="text/css" href="static/user/online/css/customCate.css"/>

    <!--导航栏-->
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css" />
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css"/>
    <script type="text/javascript" src="static/user/common/top/js/jquery-1.11.2.min.js"></script>

    <!--底部-->
    <link href="static/user/common/foot/css/foot.css" rel="stylesheet" type="text/css">

    <link href="static/user/online/lunbo/dist/css/swiper.min.css" rel="stylesheet" type="text/css">
    <!-- Swiper JS -->
    <script src="static/user/online/lunbo/dist/js/swiper.min.js"></script>

    <!--选项卡-->
    <script  src="static/user/online/js/main.js"></script>

    <!--懒加载开始-->
    <script src="static/user/online/js/jquery-1.9.1-jquery.js"></script>

    <!--懒加载结束-->

    <!--模态框 开始-->
   <%-- <link rel="stylesheet" href="static/user/online/css/modal.css">
    <script src="static/user/online/js/jquery.js" type="text/javascript"></script>
    <script src="static/user/online/js/modal.js" type="text/javascript"></script>--%> <!--模态框结束-->

    <!--选项卡选择第一个-->

    <style>

        .design{
            width:35px;
            height:35px;
            margin-top:20px;
            margin-left:30px;
            border-radius:50%;
        }
        .designer{
            font-size:14px;
            color:#666;
            margin-top:-25px;
            margin-left:70px;
        }
        .money{
            color:red;
            font-size:14px;
        }
        .custom-now-span:hover{
            text-decoration:none;
        }

        #order-type{
            width:80%;
            text-align:center;
            margin:0 auto;
            height:600px;
        }
        .divcss5 .order_img img{
            width:30px;
            height:30px;
        }
        .select_type{
            width:700px;
            height:500px;
        }
        .select_type .choose{
            margin-bottom:20px;

        }

        .select_type .operation a{
            background-color:#6CC;
            color:#FFF;
            margin-right:30px;
        }
        .select_type .content{
            width:550px;
            font-size:15px;
            text-align:center;
        }
        .select_type .content .operation{
            padding-left:5px;
            width:580px;

            text-align:center;

        }
        .swiper-container {
            width: 100%;
            padding-top: 50px;
            padding-bottom: 50px;
        }
        .swiper-slide {
            background-position: center;
            background-size: cover;
            width: 400px;
            height: 400px;


        }
        #swiper{

            background:url(${pageContext.request.contextPath }/static/user/online/images/QQ%E5%9B%BE%E7%89%8720180602101447.jpg);
            height:500px;

        }
        #myorder{
            width:80%;

            text-align:center;
            margin:0 auto;
            margin-top:40px;
            height:200px;

        }
        #myorder img{
            width:230px;
            height:180px;

        }

        #myorder .divcss5{
            position:relative;
            padding:0;
            float: left;
            margin-left:150px;
            margin-right:120px;
            cursor:pointer;

        }
        #myorder .divcss5 .mask{
            position:absolute;
            bottom:0;
            left:0;
            width:100%;
            z-index:10;
            height:36px;
            line-height:36px;
            background:#585858;
            filter:alpha(opacity=60);-moz-opacity:0.5;opacity: 0.5;
            visibility:hidden;
        }
        #myorder .divcss5 .mask a{
            color:yellow;
            font-weight:bold;
        }
        #myorder .divcss5:hover .mask{
            visibility: visible;
        }
        .current{color:red; cursor:pointer;}
        .mask a{
            font-size: 18px;
        }

    </style>




    <link rel="stylesheet" type="text/css" href="static/user/online/css/main.css">
</head>

<body>
<%@ include file="../header.jsp" %>

<!-- Swiper -->
<div class="swiper-container" id="swiper">
    <div class="swiper-wrapper">
        <%--<div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/static/user/online/images/20180518075931_22181.jpg)">
        </div>--%>
        <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/static/user/online/images/lunbo_p1.jpg)"></div>
        <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/static/user/online/images/lunbo_p2.jpg)"></div>
        <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/static/user/online/images/lunbo_p3.jpg)"></div>
        <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/static/user/online/images/lunbo_p4.jpg)"></div>
        <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/static/user/online/images/lunbo_p5.jpg)"></div>
        <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/static/user/online/images/lunbo_p6.jpg)"></div>
       <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/static/user/online/images/lunbo_p7.jpg)"></div>
        <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/static/user/online/images/lunbo_p8.jpg)"></div>
        <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/static/user/online/images/lunbo_p9.jpg)"></div>--%>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
</div>
<%--<%@include file="order_liucheng.jsp"%>--%>
<!--定制类型-->
<div id="myorder">
    <div class="divcss5">
        <img src="static/user/online/images/online_book.jpg">
        <div class="mask"><a href="user/online_select1.action" class="trigger">在线定制</a></div>
    </div>
    <div class="divcss5">
        <img src="static/user/online/images/per.jpg">
        <div class="mask"><a href="user/designerList.action">私人定制</a></div>
    </div>
</div><!--定制类型-->

<div id="start_order" style="width:70%;text-align:center;margin:0 auto;margin-bottom:50px;margin-top:30px;">
    <h2 id="title" style="font-size:30px;font-weight:900;">开始你的创作吧!</h2>
</div>

<%--<div id="modal-1" class="select_type"><!--modal-1开始-->
    <!--    模态窗口的内容-->
    <div class="content">
        <div id="order-type-1" class="choose">
            <span>请选择定制类型：</span>
            <c:forEach items="${goodstype}" var="type">
                <input type="radio" name="kind" value="${type.goodstypeId}"/>${type.goodstypeName}
            </c:forEach>
        </div>

        <div class="operation">
            <a href="#" class="btn  modal-close">关闭</a>
            <a href="javascript:void(0)" class="btn"  id="modal-next-1" onclick="select1()">下一步</a>
        </div>
    </div>

</div><!--modal-1结束-->--%>
<%--<script>--%>
   <%-- function select1(){
        alert(111)
        $.ajax(
            {
                url:"${pageContext.request.contextPath }/user/online_select1.action?id="+$("input[name='kind']").val(),
                type:"POST",
                dataType:'json',
                success:function(data){
                    //alert("成功");
                    var result="<span>请选择具体的定制类型:</span><br/>";

                    for(var i=0;i<data.length;i++){
                        result+="<input type='radio' name='childkind'value='"+data[i].goodschildId+"'/>"+data[i].goodschildName

                    }
                    $("#modal-2 #order-type-2").html(result);
                }
            }
        );

        $('#modal-1').iziModal('close');
        $('#modal-2').iziModal('open',this);
    }

    function select2(){
      // alert(111)
        $.ajax(
            {
                url:"${pageContext.request.contextPath }/user/online_select2.action?id="+$("input[name='kind']").val()+"&id2="+$("input[name='childkind']").val(),
                type:"POST",
                dataType:'json',
                success:function(data){
                    //alert("成功");
                   var re="<span>请选择商品的具体定制信息 :</span><br/>";
                    for(var j=0;j<data.length;j++) {

                        re += "<input type='radio' name='material' value='"+data[j].goodsmaterialId + "'/>"+data[j].goodsmaterialName;

                    }

                  /*  result += "<input type='radio' name='material' value='"+data[0].goodsmaterialId + "'/>"+data[0].goodsmaterialName;
                    alert("chenggg");*/
                   /* alert(data[0].goodsmaterialId+"&&"+data[0].goodsmaterialName)
*/
                    $("#modal-3 #order-type-3").html(re);


                }
            }
        );

        $('#modal-2').iziModal('close');
        $('#modal-3').iziModal('open',this);
    }

    function select3(){
          alert("111");
        $.ajax(
            {
                type:"POST",
                url:"${pageContext.request.contextPath }/user/online_select3.action?id="+$("input[name='kind']").val()+"&id2="+$("input[name='childkind']").val()+"&id3="+$("input[name='material']").val(),
                dataType:'json',
                success:function(data){
                     alert("成功");
                    var con="<span>请选择商品的具体定制信息 :</span><br/>";
                    for(var i=0;i<data.length;i++){
                        con+="<input type='radio' name='style' value='"+data[i].goodsstyleId+"'/>"+data[i].goodsstyleName;

                    }

                    /*if(data.length>0){
                        con+="<span>请选择商品的具体定制信息 :</span><br/>";


                    }
                    else{
                        con+="没有找到该类型的商品";
                    }*/
                    $("#modal-4 #order-type-4").html(con);


                }

            }
        );

        $('#modal-3').iziModal('close');
        $('#modal-4').iziModal('open',this);
    }


</script>
--%>

<%--/*
<div id="modal-2"  class="select_type"><!--modal-2开始-->
    <div class="content">
        <div id="order-type-2" class="choose">

        </div>

        <div class="operation"><!--operation开始-->
            <a href="#" class="btn  modal-close">关闭</a>
            <a href="#" class="btn" id="modal-pre-2">上一步</a>
            <a href="javascript:void(0)" class="btn" id="modal-next-2" onclick="select2()">下一步</a>
        </div><!--operation结束-->
    </div>
</div><!--modal-2结束 -->

<div id="modal-3"  class="select_type"><!--modal-3开始-->
    <div class="content">
        <div id="order-type-3" class="choose">

        </div>

        <div class="operation"><!--operation开始-->
            <a href="#" class="btn  modal-close">关闭</a>
            <a href="#" class="btn" id="modal-pre-3">上一步</a>
            <a href="#" class="btn" id="modal-next-3" onclick="select3()">下一步</a>
        </div><!--operation结束-->
    </div>
</div><!--modal-3结束 -->


<div id="modal-4"  class="select_type"><!--modal-4开始-->
    <div class="content">
        <div id="order-type-4" class="choose">

        </div>

        <div class="operation"><!--operation开始-->
            <a href="#" class="btn  modal-close">关闭</a>
            <a href="#" class="btn" id="modal-pre-4">上一步</a>
            <a href="#" class="btn" id="modal-next-4">完成</a>
        </div><!--operation结束-->
    </div>
</div><!--modal-4结束 -->
*/--%>

<!-- 分类栏 -->
<script>
    window.onload=function(){
        for(var i=0;i<4;i++){
            alert('${goodsIntegrateList[i].goodstypeId}')
        }
    }
</script>
<%--选项卡--%>
<script  src="static/user/online/js/main.js"></script>
<div class="classify">
    <div class="visual">
        <ul id="mytab">
           <%--<c:forEach items="${goodstype}" var="type">--%>
               <c:forEach var="i" begin="0" end="${fn:length(goodstype)}">
                   <c:choose>
                       <c:when test="${i eq 0}">
                           <li class="current"><span class="choice-a">${goodstype[i].goodstypeName}</span></li>
                       </c:when>
                       <c:otherwise>
                           <li><span class="choice-a">${goodstype[i].goodstypeName}</span></li>
                       </c:otherwise>
                   </c:choose>

               </c:forEach>


        </ul>
    </div>
</div>
<div style="clear: both;"></div>
<!-- 产品推荐栏 -->
<div class="picture auto ohide" id="mycontent">

    <div class="lazyload">
        <c:forEach items="${goodstype}" var="type">
        <c:forEach items="${goodsIntegrateList}" var="goodsTypeList">
            <c:if test="${type.goodstypeId eq goodsTypeList.goodstypeId}">
            <ul class="picturecontent">
                <c:forEach items="${goodsTypeList.goodsAndImgDesignerVOList}" var="goodsList">
                    <li>
                        <div class="search-item ohide">
                            <a href="user/online_buygoods.action?id=${goodsList.goodsId}" target="_blank">
                                <div class="item-pic item-s-pic">
                                   <%-- <c:forEach items="${goodsList.goodsImgList}" var="img">
                                        <img class="${img.mask}" data-img="${img.goodsImgurl}" src="static/user/online/images/blank.jpg" alt=""  style="display: inline;"/>${img.mask}
                                    </c:forEach>--%>
                                       <img class="${goodsList.goodsImgList[0].mask}" data-img="${goodsList.goodsImgList[0].goodsImgurl}" src="static/user/online/images/blank.jpg" alt=""  style="display: inline;"/>
                                </div>
                            </a>

                        <c:forEach items="${user}" var="user">
                            <c:if test="${user.userId eq goodsList.userId}">
                            <div>
                                <img  class="design" data-img="${user.userImgurl}" src="static/user/online/images/blank.jpg" alt="">
                                <div class="designer">${user.truename}设计
                                 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                 <em class="money">${goodsList.goodsPrice}</em>
                                </div>
                            </div>
                                <div class="custom-now">
                                    <a class="custom-now-span" href="user/online_buy.action?id=${goodsList.goodsId}&userId=${user.userId}" target="_blank">立即定制</a>
                                </div>

                             </c:if>
                        </c:forEach>
                            <%--<div class="custom-now">
                                <a class="custom-now-span" href="user/online_buy.action?id=${goodsList.goodsId}&userId=${user.userId}" target="_blank">立即定制</a>
                            </div>--%>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </c:if>
        </c:forEach>
        </c:forEach>

</div>

</div>
<div style="text-align:center;clear:both;">
</div>
<%--<script>
    $("#modal-1,#modal-2,#modal-3,#modal-4").iziModal({
        title: "",
        subtitle: "",
        theme: "",
        headerColor: "#88A0B9",
        overlayColor: "rgba(0, 0, 0, 0.4)",
        iconColor: "",
        iconClass: null,
        width: 600,
        padding: 20,
        iframe: false,
        iframeHeight: 400,
        iframeURL: null,
        overlayClose: false,
        closeOnEscape: true,
        bodyOverflow: false,
        focusInput: true,
        autoOpen: false,
        transitionInModal: 'transitionIn',
        transitionOutModal: 'transitionOut',
        transitionInOverlay: 'fadeIn',
        transitionOutOverlay: 'fadeOut',
        onOpening: function() {},
        onOpened: function() {},
        onClosing: function() {},
        onClosed: function() {}
    });
    $(document).on('click', '.trigger', function (event) {
        event.preventDefault();
        $('#modal-1').iziModal('open', this); // 需要带上 "this"
    });--%>
<%--//    $("#modal-next-1").click(function(){
//        $('#modal-1').iziModal('close');
//        $('#modal-2').iziModal('open',this);
//    });
//    $("#modal-pre-2").click(function(){
//        $('#modal-2').iziModal('close');
//        $('#modal-1').iziModal('open',this);
//    });
//
//    $(".modal-close").click(function(){
//
//        $(this).parents(".select_type").iziModal('close');
//
//    });--%>


<%--<div class="footer" style="margin-top:50px; height:440px" >
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

<!--轮播-->
<script>
    var swiper = new Swiper('.swiper-container', {

        autoplay: {
            delay: 1000,//1秒切换一次
        },
        effect: 'coverflow',
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: 'auto',
        coverflowEffect: {
            rotate: 50,
            stretch: 0,
            depth: 100,
            modifier: 1,
            slideShadows : true,
        },
        pagination: {
            el: '.swiper-pagination',
        },
    });
</script><!--轮播结束-->

</body>
<script type="text/javascript" src="static/user/online/js/pub.js"></script>
<script type="text/javascript" src="static/user/online/js/global.js"></script>
<script src="static/user/online/js/customCate.js"></script>


<!--懒加载开始-->
<script type="text/javascript">
    var lazyLoad = (function(){
        var clock;

        function init(){
            $(window).on("scroll", function(){
                if (clock) {
                    clearTimeout(clock);
                }
                clock = setTimeout(function(){
                    checkShow();
                }, 200);
            })
            checkShow();
        }

        function checkShow(){
            $(".lazyload img").each(function(){
                var $cur =$(this);
                if($cur.attr('isLoaded')){
                    return;
                }
                if(shouldShow($cur)){
                    showImg($cur);
                }
            })
        }
        function shouldShow($node){
            var scrollH = $(window).scrollTop(),
                winH = $(window).height(),
                top = $node.offset().top;
            if(top < winH + scrollH){
                return true;
            }else{
                return false;
            }
        }
        function showImg($node){
            $node.attr('src', $node.attr('data-img'));
            $node.attr('isLoaded', true);
        }
        return {
            init: init
        }
    })()
    lazyLoad.init();
</script>
<!--懒加载结束-->

<script>
    $(".lazyload ul:first-child").css("display","block");
</script>

</html>

