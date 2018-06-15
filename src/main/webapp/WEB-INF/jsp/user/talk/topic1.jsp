<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/6
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<%@ include file="header.jsp" %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <link href="static/user/talk/css/2.css" rel="stylesheet">

    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>
    <script type="text/javascript" src="static/user/talk/js/1.js"></script>


</head>
<body style="background-color: white">
<div id="main" style="margin-top:-55px">

    <div class="wenda clearfix">
        <div class="js-layout-change">
            <div class="l wenda-main">
                <div class="wd-top-slogan">
                    <span>时尚人士自己的问答社区</span>
                    <a class="js-quiz" href="javascript:void(0);">我要提问</a>
                </div>
                <div class="nav">
                    <a href="">推荐</a>
                    <a href="">最新</a>
                    <a href="">等待回答</a>
                    <a class="active" href="">话题</a>

                </div><!--.nav end-->

                <!--推荐位-->

                <!--recommend end-->

                <!--左侧列表内容-->
                <div class="issue-list">
                    <ul class="issue-box">
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img" alt="" src="static/user/talk/image/topic/liDheZ6goLSs.jpg">

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title">
                                    <a title="黑色牛仔裤" href="" target="_blank">黑色牛仔裤</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a>
                                </p>
                                <p title="穿了小半年，这条黑色牛仔裤Angelababy怎么又双叒叕穿上了？【每日星范】" class="issue-desc">穿了小半年，这条黑色牛仔裤Angelababy怎么又双叒叕穿上了？【每日星范】"</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="join">55参与</span>
                                        <span class="look">8247浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img issue-end" alt="" src="static/user/talk/image/topic/liDQrOCApZyOE.jpg">
                                <div class="issue-status issue-begin">已结束</div>
                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="削肩设计" href="" target="_blank">削肩设计</a><a style="float:right; margin-top:-30px">
                                    <img src="static/user/talk/image/attention.png">
                                </a></p>
                                <p title="夏天一来，女星们也开始变着法子地秀起了身材。流行的一字肩和斜肩玩腻了，她们又转投削肩的怀抱！一个小小的荷叶边削肩，让唐嫣看起来又苗条了几度~" class="issue-desc">夏天一来，女星们也开始变着法子地秀起了身材。流行的一字肩和斜肩玩腻了，她们又转投削肩的怀抱！一个小小的荷叶边削肩，让唐嫣看起来又苗条了几度~</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="time">2018/03/28 - 2018/04/09</span>
                                        <span class="join">30参与</span>
                                        <span class="look">3526浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img" alt="" src="static/user/talk/image/topic/liPl84qgmixr2.jpg">

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="勒脖裙" href="" target="_blank">勒脖裙</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="向来肤白貌美的小仙女Dakota Fanning在出席美剧《沉默的天使》的艾美奖宣传会时，身着一条粉蓝色挂脖长裙，大秀完美肩颈线条。" class="issue-desc">向来肤白貌美的小仙女Dakota Fanning在出席美剧《沉默的天使》的艾美奖宣传会时，身着一条粉蓝色挂脖长裙，大秀完美肩颈线条。</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="join">86参与</span>
                                        <span class="look">6169浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img" alt="" src="static/user/talk/image/topic/liuEKnjDIsAoQ.jpg">

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="仙女裙" href="" target="_blank">仙女裙</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="本周完婚后的公爵夫人Meghan首次和“皇亲国戚”亮相，完成她优雅装扮的one piece就已经卖断货；另一位带货女王江疏影不仅没把条纹衬衫穿成病号服，胸前的荷叶边还卷曲出少女感；张雨绮上热搜的仙女长裙还是靠她自己加分的。" class="issue-desc">本周完婚后的公爵夫人Meghan首次和“皇亲国戚”亮相，完成她优雅装扮的one piece就已经卖断货；另一位带货女王江疏影不仅没把条纹衬衫穿成病号服，胸前的荷叶边还卷曲出少女感；张雨绮上热搜的仙女长裙还是靠她自己加分的。</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="join">86参与</span>
                                        <span class="look">6169浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img" alt="" src="static/user/talk/image/topic/li8n4Y1sMI6D6.jpg">

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="飘逸纱裙" href="" target="_blank">飘逸纱裙</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="带你看看仙女的衣橱，这个夏天本仙也需要一条飘逸纱裙助攻！【每日星范】" class="issue-desc">带你看看仙女的衣橱，这个夏天本仙也需要一条飘逸纱裙助攻！【每日星范】</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="join">86参与</span>
                                        <span class="look">6169浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img" alt="" src="static/user/talk/image/topic/liNfspkBCZofw.jpg">

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="吊带裙" href="" target="_blank">吊带裙</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="'大表姐'刘雯穿了一条黑色丝绒吊带裙参加活动，搭配复古风情的波浪卷发和红唇，一如既往地美艳大方~" class="issue-desc">“大表姐”刘雯穿了一条黑色丝绒吊带裙参加活动，搭配复古风情的波浪卷发和红唇，一如既往地美艳大方~</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="join">59参与</span>
                                        <span class="look">15588浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img issue-end" alt="" src="static/user/talk/image/topic/lir6zWRwC8kzI.jpg">
                                <div class="issue-status issue-begin">已结束</div>

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="Polo衫" href="" target="_blank">Polo衫</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="前几天霍思燕和杜江机场再次合体，这小手牵得跟被粘了502一样，冷冰冰的狗粮在芭姐脸上胡乱地拍,身上的这件白色 Polo 连衣裙让她显得格外清纯动人，动感的横条纹和 Polo 领反而给瘦削的身躯增添了力量感" class="issue-desc">前几天霍思燕和杜江机场再次合体，这小手牵得跟被粘了502一样，冷冰冰的狗粮在芭姐脸上胡乱地拍,身上的这件白色 Polo 连衣裙让她显得格外清纯动人，动感的横条纹和 Polo 领反而给瘦削的身躯增添了力量感</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="time">2017/09/25 - 2017/10/16</span>
                                        <span class="join">92参与</span>
                                        <span class="look">14016浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img" alt="" src="static/user/talk/image/topic/liDJMD0CbJXPo.jpg">

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="听说想要Angelababy一样的少女力，这个夏日穿冰淇淋色就可以" href="" target="_blank">听说想要Angelababy一样的少女力，这个夏日穿冰..</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="Angelababy近日穿了一条浅蓝色的连衣裙出席活动，整个人看起来像一只甜甜的海盐味儿冰淇淋，而且是甜度飙到100%的那种！" class="issue-desc">Angelababy近日穿了一条浅蓝色的连衣裙出席活动，整个人看起来像一只甜甜的海盐味儿冰淇淋，而且是甜度飙到100%的那种</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="join">96参与</span>
                                        <span class="look">12767浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img" alt="" src="static/user/talk/image/topic/liyFspYYOkgk2.jpg">

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="透明的帽子、衣服、包包和鞋子……今年PVC风潮可谓是真正地从头到脚！年初就开始火的PVC透明靴时髦好看" href="" target="_blank">透明的帽子、衣服、包包和鞋子……今年PVC风潮..</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="PVC在今年势头相当猛，从衣帽到鞋包都逃不开它，相信Chanel的这双时髦女们人手一双的鞋你们都快看腻了" class="issue-desc">PVC在今年势头相当猛，从衣帽到鞋包都逃不开它，相信Chanel的这双时髦女们人手一双的鞋你们都快看腻了</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="join">55参与</span>
                                        <span class="look">10627浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img" alt="" src="static/user/talk/image/topic/liKcn8nHxDFaM.jpg">

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title">
                                    <a title="腰间的粗抽绳还巧妙地绑出了俏皮的花苞造型，勾勒腰身。" href="" target="_blank">腰间的粗抽绳还巧妙地绑出了俏皮的花苞造型，勾勒腰身。</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="近日，刘诗诗穿着牛仔夹克搭配抽绳阔腿短裤现身机场。诗诗的低调大家都知道，乍一看这一身就是简单的机场look，但她腰上的那根小绳却是全身look的精髓。" class="issue-desc">近日，刘诗诗穿着牛仔夹克搭配抽绳阔腿短裤现身机场。诗诗的低调大家都知道，乍一看这一身就是简单的机场look，但她腰上的那根小绳却是全身look的精髓。</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="join">57参与</span>
                                        <span class="look">10769浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img" alt="" src="static/user/talk/image/topic/li8acrAS9j3c2.jpg">

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title">
                                    <a title="黑色薄纱抹胸礼服裙" href="
                            " target="_blank">黑色薄纱抹胸礼服裙</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="此次她在 2018 戛纳红毯上的造型都是吸睛亮点。 尤 其在Chopard 举行的神秘晚宴派对上,奚梦瑶身穿意大利高端时装品牌ErmannoScervino 特 别定制的黑色薄纱抹胸礼服裙, 性感到让人移不开视线。" class="issue-desc">此次她在 2018 戛纳红毯上的造型都是吸睛亮点。 尤 其在Chopard 举行的神秘晚宴派对上,奚梦瑶身穿意大利高端时装品牌ErmannoScervino 特 别定制的黑色薄纱抹胸礼服裙, 性感到让人移不开视线。</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="join">29参与</span>
                                        <span class="look">6338浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="" target="_blank">
                                <img class="l issue-img issue-end" alt="" src="static/user/talk/image/topic/li1Na71IjFa.jpg">
                                <div class="issue-status issue-begin">已结束</div>

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="牛仔外套" href="" target="_blank">牛仔外套</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="近日，景甜在活动中穿的这一套丹宁夹克配短裙，可以说是超级有心机了。廓形夹克和刻意制造出的V领不仅让天鹅颈显露无疑，卷起的袖口更显手臂纤细。稍稍向后拉扯的夹克，露出细腰的同时，女王范也是信手拈来。" class="issue-desc">近日，景甜在活动中穿的这一套丹宁夹克配短裙，可以说是超级有心机了。廓形夹克和刻意制造出的V领不仅让天鹅颈显露无疑，卷起的袖口更显手臂纤细。稍稍向后拉扯的夹克，露出细腰的同时，女王范也是信手拈来。</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="time">2017/08/21 - 2017/08/27</span>
                                        <span class="join">53参与</span>
                                        <span class="look">4995浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="/wenda/issuedetail/13" target="_blank">
                                <img class="l issue-img issue-end" alt="" src="static/user/talk/image/topic/livuer3B0SpR6.jpg">
                                <div class="issue-status issue-begin">已结束</div>

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="【空水墨画印花旗袍" href="" target="_blank">水墨画印花旗袍</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="六月度假，青城山下，一起享受中式摩登生活。" class="issue-desc">六月度假，青城山下，一起享受中式摩登生活。</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="time">2017/06/14 - 2017/06/20</span>
                                        <span class="join">110参与</span>
                                        <span class="look">6877浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="/wenda/issuedetail/12" target="_blank">
                                <img class="l issue-img issue-end" alt="" src="static/user/talk/image/topic/liPGMGvDqfe92.jpg">
                                <div class="issue-status issue-begin">已结束</div>

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="精致的包包" href="" target="_blank">精致的包包</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="说起浪漫约会LOOK，精致的妆容必不可少。但是一款精致的包包，能让你在瞬间成为人群的焦点。" class="issue-desc">说起浪漫约会LOOK，精致的妆容必不可少。但是一款精致的包包，能让你在瞬间成为人群的焦点。</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="time">2017/08/11 - 2017/08/13</span>
                                        <span class="join">18参与</span>
                                        <span class="look">6308浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="issue-item clearfix">
                            <a class="l issue-img-box" href="/wenda/issuedetail/11" target="_blank">
                                <img class="l issue-img issue-end" alt="" src="static/user/talk/image/topic/li0sYUFyupGlU.jpg">
                                <div class="issue-status issue-begin">已结束</div>

                            </a>
                            <div class="issue-content l">
                                <p class="issue-title"><a title="Denim短裤，超显腿长" href="" target="_blank">Denim短裤，超显腿长</a>
                                    <a style="float:right; margin-top:-30px">
                                        <img src="static/user/talk/image/attention.png">
                                    </a></p>
                                <p title="作为衣橱里的基础款，牛仔短裤是夏天大街上随处可见的单品。周冬雨在不久前的路演中着一条敞口的H型Denim短裤亮相，筷子腿显露无遗。" class="issue-desc">作为衣橱里的基础款，牛仔短裤是夏天大街上随处可见的单品。周冬雨在不久前的路演中着一条敞口的H型Denim短裤亮相，筷子腿显露无遗.</p>
                                <div class="detail-box clearfix">
                                    <div class="left-detail l">
                                        <span class="time">2017/08/04 - 2017/08/06</span>
                                        <span class="join">87参与</span>
                                        <span class="look">8612浏览</span>
                                    </div>
                                    <div class="right-guest r js-usercard-box">
                                        <span class="l">发布者</span>
                                        <div class="guest-box l">
                                            <a class="l guest " href="" target="_blank">
                                                <img class="js-usercard-dialog" alt="" src="static/user/talk/image/01_avatar_middle.jpg" data-userid="108492">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>

                <!-- 左侧列表内容 end -->
            </div>
            <div class="r wenda-slider">

                <div class="user-about">
                    <div class="user-info">
                        <div class="user-pic">
                            <a href="">
                                <img alt="AvaFoo" src="static/user/talk/image/01_avatar_middle.jpg">
                            </a>
                        </div>
                        <div class="user-name">
                            <a href="">AvaFoo</a>
                        </div>
                        <div class="integral-info clearifx">
                            <a class="integral" href="/u/4261959/credit">时尚值：100</a>

                        </div>
                    </div>
                    <!--.user-info end-->
                    <div class="user-action">
                        <span class="ques"><a href="">提问</a><!-- <i></i>--></span>
                        <span class="reply"><a href="">回答</a></span>
                        <span class="follow"><a href="">关注</a></span>
                    </div>
                    <!--.user-action end-->
                </div><!--.user-about end-->

                <!--.my-follow-class登录后可见-->
                <div class="my-follow-class">
                    <h3>我关注的分类</h3>
                    <div class="no-tag">
                        <h4>您还没有关注任何分类</h4>
                        <div class="follow-immediately">马上关注</div>
                    </div><!--.no-tag end-->
                </div>
                <div class="hot-ques">
                    <h3 class="title">热门话题</h3>
                    <ul>
                        <li>
                            <p class="content"><a href="" target="_blank">一抹红唇提升时尚品味 阿玛尼小胖丁</a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/390322" target="_blank">13 回答</a>
                                <a class="follow-num" href="/wenda/detail/390322" target="_blank">1 关注</a>

                            </div>
                        </li>
                        <li>
                            <p class="content"><a href="" target="_blank">Slip Dress，复古与个性，姑娘的选择与挑战</a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/390033" target="_blank">12 回答</a>
                                <a class="follow-num" href="/wenda/detail/390033" target="_blank">1 关注</a>

                            </div>
                        </li>
                        <li>
                            <p class="content"><a href="/wenda/detail/389877" target="_blank">FASHION丨一件单品多重风格-随意切换的帽子戏法儿</a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/389877" target="_blank">12 回答</a>
                                <a class="follow-num" href="/wenda/detail/389877" target="_blank">0 关注</a>

                            </div>
                        </li>
                        <li>
                            <p class="content"><a href="/wenda/detail/390184" target="_blank">史上最全遮肉显瘦穿衣指南 </a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/390184" target="_blank">9 回答</a>
                                <a class="follow-num" href="/wenda/detail/390184" target="_blank">1 关注</a>

                            </div>
                        </li>
                        <li>
                            <p class="content"><a href="/wenda/detail/390226" target="_blank">25套超美冰激凌色穿搭 照着穿显瘦又减龄~ </a></p>
                            <div class="info-bar clearfix">
                                <a class="answer-num" href="/wenda/detail/390226" target="_blank">9 回答</a>
                                <a class="follow-num" href="/wenda/detail/390226" target="_blank">0 关注</a>

                            </div>
                        </li>
                    </ul>
                    <!--ul end-->
                </div>
                <!--.hot-ques end-->

                <div class="leifeng-sort" js-tab="2">
                    <h3 class="title clearfix">
                        <ul id='tab'>
                            <span>回答雷锋榜</span>
                            <li>
                                <a><span class="leifeng-tab js-leifeng-tab" data-type="week">一周</span></a></li>
                            <li class="active">
                                <a class="active"><span class="leifeng-tab js-leifeng-tab" data-type="day">今日</span></a>
                            </li>
                        </ul>
                    </h3>
                    <div id='content'>

                        <div class="tabdiv leifeng-tab-box leifeng-day js-leifeng-tab-box" data-type="day" style="display:none;">
                            <ul class="leifeng-tab-box-min">
                                <li>
                                    <div class="ranking first">1</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="品牌活动君" src="static/user/talk/image/58_avatar_middle.jpg">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">品牌活动君</a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                            <span class="role">街头潮人
</span>
                                        <span class="answer-num">23回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking second">2</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="是谁再呼叫舰队" src="static/user/talk/image/53_avatar_middle.jpg.gif">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">是谁再呼叫舰队...</a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">尤银湿人</span>
                                        <span class="answer-num">12回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking third">3</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="魔力召唤 " src="static/user/talk/image/60_avatar_middle.jpg">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">魔力召唤 </a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">时尚达人</span>
                                        <span class="answer-num">4回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">4</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="seojianz" src="static/user/talk/image/54_avatar_middle1.jpg">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">seojianz</a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">奥特兄弟</span>
                                        <span class="answer-num">3回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">5</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="小哈哈v" src="static/user/talk/image/60_avatar_middle1.jpg">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">小哈哈v</a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">奥特兄弟</span>
                                        <span class="answer-num">2回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
                            </ul>

                        </div>

                        <div class="tabdiv leifeng-tab-box leifeng-week js-leifeng-tab-box" data-type="week" style="display:block;">
                            <ul id="bb" class="leifeng-tab-box-min">
                                <li>
                                    <div class="ranking first">1</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="小草1434" src="static/user/talk/image/noavatar_middle.gif.jpg">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">小草1434</a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">奥特兄弟</span>
                                        <span class="answer-num">27回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking second">2</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="qq_炫_03909954" src="static/user/talk/image/99_avatar_middle.jpg">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">qq_炫_03909954</a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">奥特兄弟</span>
                                        <span class="answer-num">22回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking third">3</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="TamborTang" src="static/user/talk/image/96_avatar_middle.jpg">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">TamborTang</a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">奥特兄弟</span>
                                        <span class="answer-num">21回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">4</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="Keyro" src="static/user/talk/image/94_avatar_middle.jpg">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">Keyro</a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">摩登初上</span>
                                        <span class="answer-num">16回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
                                <li>
                                    <div class="ranking ">5</div>
                                    <div class="user-pic">
                                        <a href="" target="_blank">
                                            <img title="amani" src="static/user/talk/image/93_avatar_middle.jpg">
                                        </a>
                                    </div>
                                    <!--.user-pic end-->
                                    <div class="user-name">
                                        <a href="" target="_blank">amani</a>
                                    </div>
                                    <!--.user-name end-->
                                    <div class="user-info clearfix">
                                        <span class="role">摩登初上</span>
                                        <span class="answer-num">16回答</span>
                                    </div>
                                    <!--.user-info end-->
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
                <!--.leifeng-sort end-->
            </div>
        </div>
    </div>
</div>
<div class="footer" style="margin-top:50px; height:450px;">
    <div class="footer-wrap">
        <div class="footer-info clearfix">
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

