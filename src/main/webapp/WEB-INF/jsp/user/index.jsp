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
    <title>Title</title>
    <%--底部css--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/login/css/login.css">

    <script src="${pageContext.request.contextPath}/static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="${pageContext.request.contextPath}/static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="${pageContext.request.contextPath}/static/user/common/js/mouse.js"></script>
    <script src="${pageContext.request.contextPath}/static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/user/login/js/modal.js"></script>
    <%--其它js--%>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/user/index/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/user/index/css/htmleaf-demo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/index/styles/site.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/index/styles/direction-reveal.css">

    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/index/css/newconment_1.css" />--%>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/index/css/newindex_v1.css" />--%>
    <link href="${pageContext.request.contextPath}/static/user/common/plugin/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/index/css/lunbo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/user/index/css/home.css" type="text/css">
    <link href="${pageContext.request.contextPath}/static/user/index/css/zzsc.css" rel="stylesheet" type="text/css"   />
    <link href='${pageContext.request.contextPath}/static/user/index/css/tabulous.css' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="${pageContext.request.contextPath}/static/user/index/scripts/lunbo.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/user/index/scripts/home.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/user/index/jquery.carouFredSel-6.2.1-packed.js"></script>
    <script src="${pageContext.request.contextPath}/static/user/index/scripts/zzsc.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/user/index/scripts/tagcloud2.js" type="text/javascript"></script>



</head>
<body>



<%@ include file="header.jsp" %>
<!--carousel start-->

<div class="trent-slider" >
    <div class="t-slide current-t-slide">
        <img src="${pageContext.request.contextPath}/static/user/index/images/hunli.jpg" alt="" />
    </div>
    <div class="t-slide">
        <img src="${pageContext.request.contextPath}/static/user/index/images/party.jpg" alt="" />
    </div>
    <div class="t-slide">
        <img src="${pageContext.request.contextPath}/static/user/index/images/3.jpg" alt="" />
    </div>
    <div class="t-slide">
        <img src="${pageContext.request.contextPath}/static/user/index/images/4.jpg" alt="" />
    </div>
    <div class="t-slider-controls" >
        <div class="arrow right-arrow" >
            <div class="arrow-container">
                <div class="arrow-icon"><i class="fa fa-chevron-right" aria-hidden="true"></i></div>
            </div>
        </div>
        <div class="arrow left-arrow">
            <div class="arrow-container">
                <div class="arrow-icon"><i class="fa fa-chevron-left" aria-hidden="true"></i></div>
            </div>
        </div>
        <div class="t-load-bar">
            <div class="inner-load-bar"></div>
        </div>
        <div class="t-dots-container">
            <div class="t-slide-dots-wrap">
                <div class="t-slide-dots">

                </div>
            </div>
        </div>
    </div>
</div>

<!--carousel end-->

<div class="htmleaf-container">



    <div class="container demo" >

        <img src="${pageContext.request.contextPath}/static/user/index/images/clzx.png" alt="">

        <div class="direction-reveal direction-reveal--3-grid-flexbox direction-reveal--demo-swing" width="1300px">

            <a href="#" class="direction-reveal__card">
                <img src="${pageContext.request.contextPath}/static/user/index/images/shouyezixun1.jpg" alt="Image" class="img-fluid">

                <div class="direction-reveal__overlay">
                    <h3 class="direction-reveal__title">Lorem ipsum</h3>
                    <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
                </div>
            </a>

            <a href="#" class="direction-reveal__card" >
                <img src="${pageContext.request.contextPath}/static/user/index/images/shouyezixun2.jpg" alt="Image" class="img-fluid">

                <div class="direction-reveal__overlay">
                    <h3 class="direction-reveal__title">Lorem ipsum</h3>
                    <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
                </div>
            </a>

            <a href="#" class="direction-reveal__card">
                <img src="${pageContext.request.contextPath}/static/user/index/images/shouyezixun3.jpg" alt="Image" class="img-fluid" width="356px">

                <div class="direction-reveal__overlay">
                    <h3 class="direction-reveal__title">Lorem ipsum</h3>
                    <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
                </div>
            </a>

            <a href="#" class="direction-reveal__card">
                <img src="${pageContext.request.contextPath}/static/user/index/images/shouyezixun4.jpg" alt="Image" class="img-fluid">

                <div class="direction-reveal__overlay">
                    <h3 class="direction-reveal__title">Lorem ipsum</h3>
                    <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
                </div>
            </a>

            <a href="#" class="direction-reveal__card">
                <img src="${pageContext.request.contextPath}/static/user/index/images/shouyezixun5.jpg" alt="Image" class="img-fluid">

                <div class="direction-reveal__overlay">
                    <h3 class="direction-reveal__title">Lorem ipsum</h3>
                    <p class="direction-reveal__text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore eritatis et quasi.</p>
                </div>
            </a>



            <div class="boutiqueColumn" style="top:1300px;right: 100px;">
                <div class="title">
                    <img src="${pageContext.request.contextPath}/static/user/index/images/morezixun.png" alt="">
                </div>
                <div class="box">
                    <div class="fashionWord fLeft">
                        <div class="t ftArial">最热资讯</div>
                        <ul class="listA">
                            <li><a href="#" target="_blank">潮流入货</a></li>
                            <li><a href="#" target="_blank">元气单品</a></li>
                            <li><a href="#" target="_blank">潮就这么穿</a></li>
                            <li><a href="#" target="_blank">新季尖货</a></li>
                            <li><a href="#" target="_blank">大咖来种草</a></li>
                            <li><a href="#" target="_blank">搜索星鲜人</a></li>
                            <li><a href="#" target="_blank">摩范男友</a></li>
                            <li><a href="#" target="_blank">时髦旅行</a></li>
                            <li><a href="#" target="_blank">点亮那一刻</a></li>
                            <li><a href="#" target="_blank">新娘大作战</a></li>
                        </ul>
                    </div>
                    <div class="beautyWord fRight">
                        <div class="t ftArial">最新资讯</div>
                        <ul class="listA">
                            <li><a href="#" target="_blank">完美星约</a></li>
                            <li><a href="#" target="_blank">大师来了</a></li>
                            <li><a href="#" target="_blank">男朋友说</a></li>
                            <li><a href="#" target="_blank">桃花宝典</a></li>
                            <li><a href="#" target="_blank">试色间</a></li>
                            <li><a href="#" target="_blank">败家姐妹花</a></li>
                            <li><a href="#" target="_blank">评测台</a></li>
                            <li><a href="#" target="_blank">编辑秘辛</a></li>
                            <li><a href="#" target="_blank">拜托化妆包</a></li>
                        </ul>
                    </div>
                    <span class="line"></span>
                </div>
            </div>
        </div>
    </div>
</div>


<!--穿衣搭配 -->
<div class="clothes-matching">
    <img src="${pageContext.request.contextPath}/static/user/index/images/fzdp.png" alt="">
    <div class="detail-scroll">
        <div id="caseLeft3" style="display: block; opacity: 0; z-index: -10;"><em></em></div>
        <div id="caseRight3" style="display: block; opacity: 0; z-index: -10;"><em></em></div>
        <div class="caroufredsel_wrapper">
            <ul id="caseList3" class="list1">
                <li>
                    <img src="${pageContext.request.contextPath}/static/user/index/images/shouyedapei1.jpg" height="420px" width="900px">
                    <p>第一个图片</p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/static/user/index/images/shouyedapei2.jpg" height="420px" width="900px">
                    <p>第二个图片</p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/static/user/index/images/shouyedapei3.jpg" height="420px" width="900px">
                    <p>第三个图片</p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/static/user/index/images/shouyedapei4.jpg" height="420px" width="900px">
                    <p>第四个图片</p>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/static/user/index/images/shouyedapei5.jpg" height="420px" width="900px">
                    <p>第五个图片</p>
                </li>
            </ul>
        </div>
    </div>

    <div class="matching-article">
        <hr width="250px"><br>
        <div class="artice1" style="border:1px solid #D6D6D6; padding:3px;">
            <ul>
                <li>
                    <div  style="float: left;">
                        <img src="${pageContext.request.contextPath}/static/user/index/images/dplist1.png" width="180px" height="100px">
                    </div>
                    <div class="li1-word">
                        <p class="word1">草编包给你</p>
                        <p class="word1">的装扮带来</p>
                        <p class="word1">美妙田园风</p>
                    </div>
                    <a href="#">
                        <p class="word2">今夏，草编风潮势不可挡的出现在了我们的</p>
                        <p class="word2">视野里！不论是帽子、裙装还是腰带配饰都</p>
                        <p class="word2">少不了他的身影有了它你几乎可以随意搭配</p>
                        <p class="word2">自己的各种造型。</p>
                    </a>
                </li>
            </ul>
        </div>

        <br><hr width="250px"><br>
        <div class="artice2" style="border:1px solid #D6D6D6; padding:3px;">
            <ul>
                <li>
                    <div  style="float: left;">
                        <img src="${pageContext.request.contextPath}/static/user/index/images/dplist2.png" width="180px" height="100px">
                    </div>
                    <div class="li2-word">
                        <p class="word3">为自己选一</p>
                        <p class="word3">双清爽又百</p>
                        <p class="word3">搭的凉鞋吧</p>
                    </div>
                    <a href="#">
                        <p class="word2">简单随性的凉鞋单品，如今已打破束缚，走</p>
                        <p class="word2">向了时尚的前沿。如今越来越注重生活品质</p>
                        <p class="word2">的人们，早早就甩掉了闷热的高跟皮鞋，换</p>
                        <p class="word2">上时髦又高级的凉鞋。</p>
                    </a>
                </li>
            </ul>
        </div>

        <br><hr width="250px"><br>
        <div class="artice3" style="border:1px solid #D6D6D6; padding:3px;">
            <ul>
                <li>
                    <div  style="float: left;">
                        <img src="${pageContext.request.contextPath}/static/user/index/images/dplist3.png" width="180px" height="100px">
                    </div>
                    <div class="li3-word">
                        <p class="word5">夏日最时髦</p>
                        <p class="word5">LOOK，懒癌</p>
                        <p class="word5">已被治愈</p>
                    </div>
                    <a href="#">
                        <p class="word2">今夏，草编风潮势不可挡的出现在了我们的</p>
                        <p class="word2">视野里！不论是帽子、裙装还是腰带配饰都</p>
                        <p class="word2">少不了他的身影有了它你几乎可以随意搭配</p>
                        <p class="word2">自己的各种造型。</p>
                    </a>

                </li>
            </ul>
        </div>






        <!-- <br><hr width="250px"><br>
        <div class="artice4" style="border:1px solid #D6D6D6; padding:3px;">
            <ul>
                <li>
                    <div  style="float: left;">
                        <img src="images/dplist1.png" width="180px" height="100px">
                    </div>
                    <div class="li4-word">
                        <p class="word7">草编包给你的装扮带来美妙田园风</p>
                    </div>
                    <a href="#">
                    <p class="word8">今夏，草编风潮势不可挡的出现在了我们的视野里！</p>
                    <p class="word8">不论是帽子、裙装还是腰带配饰都少不了他的身影</p>
                    <p class="word8">有了它你几乎可以随意搭配自己的各种造型。</p>
                    </a>

                </li>
            </ul>
        </div> -->


    </div>

    <div class="doukan">
        <img src="${pageContext.request.contextPath}/static/user/index/images/doukan.png" >
        <div class="doukan-pic">
            <img src="${pageContext.request.contextPath}/static/user/index/images/doukanpic1.png" alt="">
        </div>
        <div class="doukan-list">
            <ul >
                <br><br>
                <li><a href="#">不大不时髦oversize耳饰让你脸小一个size</a></li>
                <li><a href="#">5个既显脸小又精神的帽子戴法</a></li>
                <li><a href="#">学会Bella Hadid白色穿搭拥有高级颜</a></li>
                <br><br>

            </ul>
        </div>
        <div class="doukan-pic2">
            <img src="${pageContext.request.contextPath}/static/user/index/images/doukanpic2.png" alt="">
        </div>
        <div class="doukan-list2">
            <ul >
                <br><br>
                <li><a href="#">不大不时髦oversize耳饰让你脸小一个size</a></li>
                <li><a href="#">5个既显脸小又精神的帽子戴法</a></li>
                <li><a href="#">学会Bella Hadid白色穿搭拥有高级颜</a></li>
                <br><br>

            </ul>
        </div>
        <img src="${pageContext.request.contextPath}/static/user/index/images/doukan2.png">
    </div>
</div>



<!--私人订制 -->
<div class="custom-order">
    <img src="${pageContext.request.contextPath}/static/user/index/images/srdz.png">
    <div class="g-content">
        <div class="gLeft">
            <div class="g-focus listFocus margB" id="darenFocus">
                <div class="foucs">
                    <!-- <div class="item on" style="display: block; z-index: 2; opacity: 0.307208;">
                      <a href="http://www.yoka.com/column/beautyaward2017/">
                        <img src="http://p2.yokacdn.com/pic/YOKA/2017-12-29/U15P1TS1514538376_14941.jpg" style="width:766px;height:420px;" alt="">
                        <div class="tit">2017年度YOKA美妆嘉年华盛妆启航</div>
                      </a>
                    </div> -->
                    <div class="item" style="display: block; opacity: 1; z-index: 1;">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/static/user/index/images/sjshaibao.jpg" style="width:766px;height:420px;" alt="">
                            <div class="tit">时尚圈里最懂美妆，美妆圈里最懂生活</div>
                        </a>
                    </div>
                </div>
                <div class="point"><span class="g-point  on"></span><span class="g-point "></span></div></div>
            <script>
                yo.focus('darenFocus')
            </script>
        </div>
        <div class="gRight">
            <div class="darenRc">
                <div class="img"><img src="${pageContext.request.contextPath}/static/user/index/images/sjszm.jpg" alt="" style="border: 0;
    vertical-align: top;"></div>
                <a href="#" class="btn">查看详情</a>
            </div>
        </div>
        <div class="darenTopic">
            <div class="mask">
                <div class="list mz">
                    <a href="#">
                        <div class="top">
                            <div class="img"><img src="${pageContext.request.contextPath}/static/user/index/images/sjs1.jpg" alt=""></div>
                            <div class="names">
                                <div class="name">任子墨Crystal</div>
                                <div class="tag"><img src="${pageContext.request.contextPath}/static/user/index/images/sjstag.jpg"></div>
                            </div>
                        </div>
                    </a>
                    <div class="txt">
                        <span>＃护肤</span><span>＃美妆</span><span>＃生活</span>
                        <span>＃时尚穿搭</span><span>＃健身</span>
                    </div>
                </div>
                <div class="list mz">
                    <a href="#">
                        <div class="top">
                            <div class="img"><img src="${pageContext.request.contextPath}/static/user/index/images/sjs2.jpg" alt=""></div>
                            <div class="names">
                                <div class="name">我就爱墨迹</div>
                                <div class="tag"><img src="${pageContext.request.contextPath}/static/user/index/images/sjstag.jpg"></div>
                            </div>
                        </div>
                    </a>
                    <div class="txt">
                        <span>＃美妆护肤</span><span>＃时尚穿搭</span><span>＃美食</span>
                        <span>＃旅行</span><span>＃数码</span><span>＃游戏</span>
                    </div>
                </div>
                <div class="list ss">
                    <a href="#">
                        <div class="top">
                            <div class="img"><img src="${pageContext.request.contextPath}/static/user/index/images/sjs3.jpg" alt=""></div>
                            <div class="names">
                                <div class="name">vivianxu</div>
                                <div class="tag"><img src="${pageContext.request.contextPath}/static/user/index/images/sjstag.jpg"></div>
                            </div>
                        </div>
                    </a>
                    <div class="txt">
                        <span>＃亲子</span><span>＃旅行</span><span>＃美食</span>
                        <span>＃时尚穿搭</span><span>＃美妆护肤</span><span>＃健身</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- 社区精选 -->
<div class="forumjx">
    <img src="${pageContext.request.contextPath}/static/user/index/images/sqjx.png">

    <div id="tabs2">
        <ul>
            <li><a href="#tabs-1" title="">Tab 1</a></li>
            <li><a href="#tabs-2" title="">Tab 2</a></li>
            <li><a href="#tabs-3" title="">Tab 3</a></li>
        </ul>

        <div id="tabs_container">
            <div id="tabs-1">
                <p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus.</p><p>Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>
            </div>

            <div id="tabs-2">
                <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor.</p>

            </div>

            <div id="tabs-3">
                <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem.</p><p> Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales.</p>
            </div>
        </div><!--End tabs container-->
    </div><!--End tabs-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/user/index/scripts/tabulous.js"></script>
    <script type="text/javascript">
        $(document).ready(function($) {
            $('#tabs').tabulous({
                effect: 'scale'
            });

            $('#tabs2').tabulous({
                effect: 'slideLeft'
            });

            $('#tabs3').tabulous({
                effect: 'scaleUp'
            });

            $('#tabs4').tabulous({
                effect: 'flip'
            });
        });
    </script>

</div>





<!--标签云-->

<div class="hotest-look">

    <div id="tagscloud" class="biaoqian">
        <a href="#" class="tagc1">我要提问</a>
        <a href="#" class="tagc2">达人专栏</a>
        <a href="#" class="tagc5">新闻播报</a>
        <a href="#" class="tagc3">问答社区</a>
            <a href="#" class="tagc2" >我要提问</a>
            <a href="#" class="tagc1" >达人专栏</a>
            <a href="#" class="tagc2">热门话题</a>
            <a href="#" class="tagc3">新闻播报</a>
            <a href="#" class="tagc2">我要提问</a>
            <a href="#" class="tagc3">问答社区</a>
            <a href="#" class="tagc5">热门话题</a>
            <a href="#" class="tagc2">新闻播报</a>
            <a href="#" class="tagc3">热门话题</a>
            <a href="#" class="tagc2">我要提问</a>
            <a href="#" class="tagc5">新闻播报</a>
            <a href="#" class="tagc2">热门话题</a>
                <a href="#" class="tagc3" >我要提问</a>
                <a href="#" class="tagc1" >达人专栏</a>
                <a href="#" class="tagc2">热门话题</a>
                <a href="#" class="tagc5">新闻播报</a>
                <a href="#" class="tagc3">我要提问</a>
                <a href="#" class="tagc2">问答社区</a>
                <a href="#" class="tagc5">热门话题</a>
                <a href="#" class="tagc3">新闻播报</a>
          </div>
</div>



<%@ include file="footer.jsp" %>

<script src="${pageContext.request.contextPath}/static/user/index/scripts/bundle.js"></script>
</body>
</html>
