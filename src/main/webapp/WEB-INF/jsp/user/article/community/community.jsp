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


    <link rel="stylesheet" href="static/user/article/community/css/init.css">
    <link rel="stylesheet" href="static/user/article/community/css/channel_common.css">
    <link rel="stylesheet" href="static/user/article/community/css/life_list.css?v=2">
    <link href="static/user/article/community/css/m_common.css" rel="stylesheet" type="text/css">

    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <script src="static/user/article/community/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="static/user/article/community/js/m_common.js"></script>
    <script src="static/user/article/community/js/jquery.scroll.plugin.js"></script>
    <script src="static/user/article/community/js/tools.js"></script>
    <script src="static/user/article/community/js/index.js?v=1"></script>
    <script src="static/user/article/community/js/slide.js"></script>



    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>



</head>
<body style="background: #fff">





<div class="c">
    <!--c0-->
    <div class="c0">
        <div class="c0_l">
            <div class="dv_scro">
                <div class="c0_scro_new" id="c0_scro_new">
                    <ul>
                        <li style="left: -3.95773%;">
                            <a href="" title="Bershka邀林宥嘉与音乐同行 跨界引爆天猫超级品" target="_blank">
                                <img src="static/user/article/community/image/59968b2b670f8_100.jpg" alt="Bershka邀林宥嘉与音乐同行 跨界引爆天猫超级品" width="550px" height="420px">
                            </a>
                            <div class="botbar">
                                <p class="p1">
                                    <a href="" title="Bershka邀林宥嘉与音乐同行 跨界引爆天猫超级品" target="_blank">Bershka邀林宥嘉与音乐同行 跨界引爆天猫超级品</a></p>
                                <p class="p2">
                                    <a href="" title="Bershka邀林宥嘉与音乐同行 跨界引爆天猫超级品" target="_blank">快时尚的ZARA品牌是不少国人心目中屈指可数的大众潮牌，Bershka作为同一集团旗下的姐..</a></p>
                            </div>
                            <a href="javascript:;" class="icon c0_share"></a>
                            <div class="p_share">
                            </div>
                        </li>
                        <li style="left: 629.077px;">
                            <a href="" title="六福珠宝足金奖牌再度助力2017年北京马拉松" target="_blank">
                                <img src="static/user/article/community/image/5978606e63a8a_787.jpg" alt="六福珠宝足金奖牌再度助力2017年北京马拉松" width="550px" height="420px">
                            </a>
                            <a href="javascript:;" class="icon c0_share"></a>
                            <div class="p_share">
                            </div>
                        </li><li style="left: 100%;">
                        <a href="" title="一份关于品质生活的to do list" target="_blank">
                            <img src="static/user/article/community/image/59682fc835368_726.jpg" alt="一份关于品质生活的to do list" width="550px" height="420px">
                        </a>
                        <div class="botbar">
                            <p class="p1">
                                <a href="" title="一份关于品质生活的to do list" target="_blank">一份关于品质生活的to do list</a></p>
                            <p class="p2">
                                <a href="" title="一份关于品质生活的to do list" target="_blank">日常的繁琐和工作的忙碌并不是放弃追求品质生活的理由。</a></p>
                        </div>
                        <a href="javascript:;" class="icon c0_share"></a>
                        <div class="p_share">
                        </div>
                    </li>
                        <li style="left: 100%;">
                            <a href="" title="独家探秘屈臣氏潮流店，单单是AR试妆就玩嗨了！" target="_blank">
                                <img src="static/user/article/community/image/5965d165587ed_998.jpg" alt="独家探秘屈臣氏潮流店，单单是AR试妆就玩嗨了！" width="550px" height="420px">
                            </a>
                            <div class="botbar">
                                <p class="p1"><a href="" title="独家探秘屈臣氏潮流店，单单是AR试妆就玩嗨了！" target="_blank">独家探秘屈臣氏潮流店，单单是AR试妆就玩嗨了！</a></p>
                                <p class="p2"><a href="" title="独家探秘屈臣氏潮流店，单单是AR试妆就玩嗨了！" target="_blank">4月13日！上海全城刷屏！弄啥嘞？原来是杨洋空降引发无数少女疯狂~</a></p>
                            </div>
                            <a href="javascript:;" class="icon c0_share"></a>
                            <div class="p_share">
                            </div>
                        </li><li style="left: 100%;">
                        <a href="" title="女神倪妮代言 vivo发布自拍新标杆X9s&amp;X9s Plus" target="_blank">
                            <img src="static/user/article/community/image/595ef9b28d318_769.jpg" alt="女神倪妮代言 vivo发布自拍新标杆X9s&amp;X9s Plus" width="550px" height="420px">
                        </a>
                        <div class="botbar">
                            <p class="p1"><a href="" title="女神倪妮代言 vivo发布自拍新标杆X9s&amp;X9s Plus" target="_blank">女神倪妮代言 vivo发布自拍新标杆X9s&amp;X9s Plus</a></p>
                            <p class="p2"><a href="" title="女神倪妮代言 vivo发布自拍新标杆X9s&amp;X9s Plus" target="_blank">2017年7月6日晚，智能手机品牌vivo在北京751D·PARK第一车间召开X9s和X9s Plus新机品..</a></p>
                        </div>
                        <a href="javascript:;" class="icon c0_share"></a>
                        <div class="p_share">
                        </div>
                    </li>
                        <li style="left: 100%;">
                            <a href="" title="夏季时髦法则 今夏这三个流行色貌美又好搭！" target="_blank">
                                <img src="static/user/article/community/image/5959e04749ac0_324.jpg" alt="夏季时髦法则 今夏这三个流行色貌美又好搭！" width="550px" height="420px">
                            </a>
                            <div class="botbar">
                                <p class="p1"><a href="" title="夏季时髦法则 今夏这三个流行色貌美又好搭！" target="_blank">夏季时髦法则 今夏这三个流行色貌美又好搭！</a></p>
                                <p class="p2"><a href="" title="夏季时髦法则 今夏这三个流行色貌美又好搭！" target="_blank">每天早上起来最烦恼的大概就是——今天穿什么？明明满柜子的衣服，每天在穿的却总是..</a></p>
                            </div>
                            <a href="javascript:;" class="icon c0_share"></a>
                            <div class="p_share" style="display: none;">
                            </div>
                        </li><li style="left: 100%;">
                        <a href="" title="东家对话甘而可——工匠精神是一枚朴素的勋章" target="_blank">
                            <img src="static/user/article/community/image/594cd8aba885a_296.jpg" alt="东家对话甘而可——工匠精神是一枚朴素的勋章" width="550px" height="420px">
                        </a>
                        <div class="botbar">
                            <p class="p1"><a href="" title="东家对话甘而可——工匠精神是一枚朴素的勋章" target="_blank">东家对话甘而可——工匠精神是一枚朴素的勋章</a></p>
                            <p class="p2"><a href="" title="东家对话甘而可——工匠精神是一枚朴素的勋章" target="_blank">“东家对话大师系列”第三季《东家对话甘而可——工匠精神是一枚朴素的勋章》在东家..</a></p>
                        </div>
                        <a href="javascript:;" class="icon c0_share"></a>
                        <div class="p_share">
                        </div>
                    </li><li style="left: 100%;">
                        <a href="" title="“大万久（DAWINE）”办红酒发布会 牵手国家体育" target="_blank">
                            <img src="static/user/article/community/image/593e384bbe8df_666.jpg" alt="“大万久（DAWINE）”办红酒发布会 牵手国家体育" width="550px" height="420px">
                        </a>
                        <div class="botbar">
                            <p class="p1"><a href="" title="“大万久（DAWINE）”办红酒发布会 牵手国家体育" target="_blank">“大万久（DAWINE）”办红酒发布会 牵手国家体育</a></p>
                            <p class="p2"><a href="" title="“大万久（DAWINE）”办红酒发布会 牵手国家体育" target="_blank">6月9日，澳大利亚上市公司——大万久有限公司（上市代码：DW8）（Dawine Limited (A..</a></p>
                        </div>
                        <a href="javascript:;" class="icon c0_share"></a>
                        <div class="p_share">
                        </div>
                    </li><li style="left: 100%;">
                        <a href="" title="我被这位港产嫩模和放弃减肥的180斤星二代惹哭了" target="_blank">
                            <img src="static/user/article/community/image/59267643af182_708.jpg" alt="我被这位港产嫩模和放弃减肥的180斤星二代惹哭了" width="550px" height="420px">
                        </a>
                        <div class="botbar">
                            <p class="p1"><a href="" title="我被这位港产嫩模和放弃减肥的180斤星二代惹哭了" target="_blank">我被这位港产嫩模和放弃减肥的180斤星二代惹哭了</a></p>
                            <p class="p2"><a href="" title="我被这位港产嫩模和放弃减肥的180斤星二代惹哭了" target="_blank">Hey,你有没有想过，30岁的你是什么样子的呢？</a></p>
                        </div>
                        <a href="javascript:;" class="icon c0_share"></a>
                        <div class="p_share">
                        </div>
                    </li><li style="left: 100%;">
                        <a href="" title="POWERMAN中国骑跑两项赛北京首秀" target="_blank">
                            <img src="static/user/article/community/image/5922b86a1a1cd_339.jpg" alt="POWERMAN中国骑跑两项赛北京首秀" width="550px" height="420px">
                        </a>
                        <div class="botbar">
                            <p class="p1"><a href="" title="POWERMAN中国骑跑两项赛北京首秀" target="_blank">POWERMAN中国骑跑两项赛北京首秀</a></p>
                            <p class="p2"><a href="" title="POWERMAN中国骑跑两项赛北京首秀" target="_blank">5月21日，POWERMAN骑跑两项赛在北京正式开启其中国首秀，作为全球顶尖的骑跑两项赛，..</a></p>
                        </div>
                        <a href="javascript:;" class="icon c0_share"></a>
                        <div class="p_share">
                        </div>
                    </li>
                    </ul>
                    <a href="javascript:;" class="icon c0_prev_new"></a>
                    <a href="javascript:;" class="icon c0_next_new"></a>
                </div>


            </div>
        </div>
        <div class="c0_r">
            <h2 class="c0_r_1">
                <a target="_blank" href="" title="裸眼3D小厨师空降京城">裸眼3D小厨师空降京城</a>
            </h2>
            <div class="c0_r_2">
                <a class="del" target="_blank" href="" title="裸眼3D小厨师空降京城">还记得曾经在YouTube上很火的裸眼3D法餐么？有一位超级迷你的“小厨师”，在洁白的餐桌上为你现场料理大餐！...</a>
            </div>
            <div class="c0_r_3">
                <div class="c0_r_3_l"><span>生活热词</span></div>
                <div class="c0_r_3_r">
                    <a target="_blank" href="" title="美食">美食</a>
                    <a target="_blank" href="" title="品牌">品牌</a>
                    <a target="_blank" href="" title="酒店">酒店</a>
                    <a target="_blank" href="" title="娱乐">娱乐</a>
                    <a target="_blank" href="" title="购物">购物</a>
                    <a target="_blank" href="" title="旅行">旅行</a>
                    <a target="_blank" href="" title="生活方式">生活方式</a>
                </div>
            </div>
            <div class="c0_r_4">
                <div class="c0_r_4t">
                    <a href="javascript:;" class="current">爱看</a>
                    <span></span>
                    <div id="OL_SYS_19090"></div>
                </div>
                <div class="c0_r_4b">
                    <ul class="c0_r_4c" style="display: block;">
                        <li>
                            <a href="" target="_blank" class="img" title="TCL冰洗新品发布">
                                <img src="static/user/article/community/image/57ba73bb4d6f2_808.png" alt="TCL冰洗新品发布" border="0">
                            </a>
                            <a class="tit" target="_blank" href="" title="TCL冰洗新品发布">TCL冰洗新品发布</a>
                        </li>
                        <li>
                            <a href="" target="_blank" class="img" title="Sleepace睡眠巴士">
                                <img src="static/user/article/community/image/56f0e119892bf_364.jpg" alt="Sleepace睡眠巴士" border="0">
                            </a>
                            <a class="tit" target="_blank" href="" title="Sleepace睡眠巴士">Sleepace睡眠巴士</a>
                        </li>
                    </ul>
                    <ul class="c0_r_4c" style="display: none;">
                        <li id="OL_SYS_19091"></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="ad_1000x100 mt40" id="OL_SYS_19088">
        <a href="" target="_blank" style="padding-right:20px; font-size:20px">推荐</a>|
        <a href="#" target="_blank" style="padding-left:20px; font-size:20px">关注</a>
        <input id="advid" name="advid" value="19088" type="hidden">
    </div>

    <!--c3-->
    <div class="c3" style="position: relative;">
        <div class="c3_l" style="position: fixed; top:0px;left: 174.5px; bottom: 0px;">
            <div class="c3_l_list">
                <div class="com_h3">新鲜播报<span>NEWS</span>

                </div>
                <div class="news">
                    <div class="leftimg">
                        <a href="" target="_blank" title="2015ces展智">
                            <img src="static/user/article/community/image/54b5f40c46b78_265.jpg" alt="2015ces展智">
                        </a>
                    </div>
                    <div class="rightcon">
                        <div class="bt">
                            <a href="" target="_blank" title="2015ces展智">2015ces展智</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank" title="2015ces展智">2015年ces展已在美国拉斯维加斯成功落幕，众多炫酷智能产品...</a>
                        </div>
                    </div>
                </div>
                <!-- LIFESTYLE -->
                <!-- ad_260x160 左侧button-->
                <div class="ad_260x160" id="OL_SYS_19106">

                </div>
                <!-- 人物 -->
                <!-- top排行榜 -->
                <div class="com_h3">热榜<span>TOP</span></div>
                <ul class="toplist">
                    <li>
                        <span class="num01">1</span>
                        <a href="" target="_blank" title="看（奥利奥）这块饼干如何在定制化营销上越玩越666！">看（奥利奥）这块饼干如何在定制</a>
                    </li>
                    <li>
                        <span class="num01">2</span>
                        <a href="" target="_blank" title="北京金融街威斯汀大酒店任命范玖炘先生为金城阁中餐厅行政总厨">北京金融街威斯汀大酒店任命范玖</a>
                    </li>
                    <li>
                        <span class="num01">3</span>
                        <a href="" target="_blank" title="【对话CEO】法国安杰玛集团总裁王安祥 打造健康航母的世界版图">【对话CEO】法国安杰玛集团总裁王</a>
                    </li>
                    <li>
                        <span class="num02">4</span>
                        <a href="" target="_blank" title="新政后网约车哪家强？4大网约车平台对比体验">新政后网约车哪家强？4大网约车平</a>
                    </li>
                    <li>
                        <span class="num02">5</span>
                        <a href="" target="_blank" title="高端寝具品牌乐睡恬 荣膺2017中国万千富豪青睐品牌新秀奖">高端寝具品牌乐睡恬 荣膺2017中国</a>
                    </li>
                </ul>
                <!-- 达人专栏 -->
                <div class="com_h3">达人专栏<span>EXPERTS</span></div>
                <div class="daren">
                    <div class="daren_t">
                        <a href="" target="_blank" title="开启肌肤修护奇迹">
                            <img src="static/user/article/community/image/548694009e4f0_890.jpg"  alt="开启肌肤修护奇迹" />
                        </a>
                    </div>
                    <div class="daren_bt">
                        <a href="" target="_blank" title="开启肌肤修护奇迹">开启肌肤修护奇迹</a>
                    </div>
                    <div class="daren_list">
                        <div class="leftimg">
                            <a href="" target="_blank" title="白领如何挑选第一款包">
                                <img src="static/user/article/community/image/5486cae081945_662.jpg"  alt="白领如何挑选第一款包" />
                            </a>
                        </div>
                        <div class="rightcon">
                            <a href="" target="_blank" title="白领如何挑选第一款包">白领如何挑选第一款包</a>
                            <div>
                                <a href="" target="_blank" title="带你去选TOPSHOP">&#12539;  带你去选TOPSHOP</a>
                            </div>
                            <div>
                                <a href="" target="_blank" title="用红色装点冬季">&#12539;  用红色装点冬季</a>
                            </div>
                        </div>
                    </div>
                    <div class="daren_list">
                        <div class="leftimg">
                            <a href="" target="_blank" title="秋冬精华终极pk">
                                <img src="static/user/article/community/image/5486cafb8c603_316.jpg"  alt="秋冬精华终极pk" /></a>
                        </div>
                        <div class="rightcon">
                            <a href="" target="_blank" title="秋冬精华终极pk">秋冬精华终极pk</a>
                            <div>
                                <a href="" target="_blank" title="洁面秘籍大揭底">&#12539;  洁面秘籍大揭底</a>
                            </div>
                            <div>
                                <a href="" target="_blank" title="穆丽雅的温柔时光">&#12539;  穆丽雅的温柔时光</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 猜你喜欢 -->
                <div class="com_h3" style="display:none">猜你喜欢<span>LIKE</span></div>
                <div class="like" style="display:none"></div>
            </div>
        </div>
        <div class="c3_r">
            <div class="c3_r_con">
                <div class="c3_r_list masonry" style="position: relative; height: 6830px;">

                    <c:forEach var="comArticle" items="${comArticle}">

                        <div class="c3_r_item masonry-brick" style="position: absolute; top: 0px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="${comArticle.articleTitle}">
                                <img src="${comArticle.imgurl}">
                            </a>
                        </div>
                        <div class="date">2018-06-01</div>
                        <div class="bt">
                            <a href="" target="_blank">${comArticle.articleTitle}</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank">${comArticle.imgmark}</a>
                        </div>
                        <div class="tag">
                            <span>标签</span>
                            <a href="" target="_blank">生活</a>|
                            <a href="" target="_blank">旅行</a>
                        </div>
                    </div>
                    </c:forEach>


                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 0px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="上海家电节：海尔为用户定制美好生活">
                                <img src="static/user/article/community/image/lilkC24svRY9E.jpg">
                            </a>
                        </div>
                        <div class="date">2018-05-30</div>
                        <div class="bt">
                            <a href="" target="_blank">上海家电节：海尔为用户定制美好生活</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 0px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title=" “美好的生活”来自 onefifteen初衣食午">
                                <img src="static/user/article/community/image/liiB4pMByY2W2.jpg">
                            </a>
                        </div>
                        <div class="date">2018-05-29</div>
                        <div class="bt">
                            <a href="" target="_blank"> “美好的生活”来自 onefifteen初衣食午</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 249px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="“名胜世界 玩味无限”酒店随心选、体验任意玩"><img src="static/user/article/community/image/jiudian.jpg"></a>
                        </div>
                        <div class="date">2018-05-22</div>
                        <div class="bt">
                            <a href="" target="_blank">“名胜世界 玩味无限”酒店随心选、体验任意玩</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 321px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="广州富力丽思卡尔顿酒店于珍珠酒廊呈献Qeelin精">
                                <img src="../image/lioogPxuGB81Q.jpg">
                            </a>
                        </div>
                        <div class="date">2018-05-15</div>
                        <div class="bt">
                            <a href="" target="_blank">广州富力丽思卡尔顿酒店于珍珠酒廊呈献Qeelin精</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 377px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="Zara Home x 天猫超级品牌日“家有繁花”概念空"><img src="../image/liC2PSFeSmdOc.jpg"></a>
                        </div>
                        <div class="date">2018-05-15</div>
                        <div class="bt">
                            <a href="" target="_blank">Zara Home x 天猫超级品牌日“家有繁花”概念空</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 608px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="丽思卡尔顿邮轮公布海上及陆上游览行程  ">
                                <img src="../image/liOB3d0APJask.jpg">
                            </a>
                        </div>
                        <div class="date">2018-05-11</div>
                        <div class="bt">
                            <a href="" target="_blank">丽思卡尔顿邮轮公布海上及陆上游览行程  </a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 680px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="加州巴旦木，美肌充能“二三”事">
                                <img src="../image/liQ1F5q5x1hF.jpg">
                            </a>
                        </div>
                        <div class="date">2018-05-09</div>
                        <div class="bt">
                            <a href="" target="_blank">加州巴旦木，美肌充能“二三”事</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 736px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="聆听亚洲新声：W酒店跨界联手MIXCLOUD开启「未来">
                                <img src="../image/li1iuJuSYR0o.jpg"></a>
                        </div>
                        <div class="date">2018-05-09</div>
                        <div class="bt">
                            <a href="" target="_blank">聆听亚洲新声：W酒店跨界联手MIXCLOUD开启「未来</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 946px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="坐享成长，从第一个7年开始——Tripp Trapp&amp;">
                                <img src="../image/li8Mw21n6FSgw.jpg">
                            </a>
                        </div>
                        <div class="date">2018-05-07</div>
                        <div class="bt">
                            <a href="" target="_blank">坐享成长，从第一个7年开始——Tripp Trapp&amp;</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag">
                            <span>标签</span>
                            <a href="" target="_blank">亲子</a>|
                            <a href="" target="_blank">早教</a>|
                            <a href="" target="_blank">时尚辣妈</a>
                        </div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 1106px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="深圳星河丽思卡尔顿酒店携手Max Mara呈现春夏系">
                                <img src="../image/lizFQd1ezyog.jpg">
                            </a>
                        </div>
                        <div class="date">2018-05-04</div>
                        <div class="bt">
                            <a href="" target="_blank">深圳星河丽思卡尔顿酒店携手Max Mara呈现春夏系</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag">
                            <span>标签</span>
                            <a href="" target="_blank">三文鱼</a>|
                            <a href="" target="_blank">下午茶</a>
                        </div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 1243px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="jnby by JNBY 携手果麦文化倾情打造“陪你悦读吧">
                                <img src="../image/liX7l8HuTvlBU.jpg">
                            </a>
                        </div>
                        <div class="date">2018-05-04</div>
                        <div class="bt">
                            <a href="" target="_blank">jnby by JNBY 携手果麦文化倾情打造“陪你悦读吧</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank">

                            </a>
                        </div>
                        <div class="tag">
                            <span>标签</span>
                            <a href="" target="_blank">亲子</a>|
                            <a>刘芸</a>
                        </div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 1285px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="Zara Home x 天猫超级品牌日 “家有繁花”概念空">
                                <img src="../image/liQxtxHxKZBs.jpg">
                            </a>
                        </div>
                        <div class="date">2018-05-03</div>
                        <div class="bt">
                            <a href="" target="_blank">Zara Home x 天猫超级品牌日 “家有繁花”概念空</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag">
                            <span>标签</span>
                            <a href="" target="_blank">家居设计</a>|
                            <a href="" target="_blank">Zara</a>
                        </div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 1483px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="五一小长假，跟着Airbnb爱彼迎体验达人解锁城市">
                                <img src="../image/li1LtIhvPblY.png">
                            </a>
                        </div>
                        <div class="date">2018-04-28</div>
                        <div class="bt">
                            <a href="" target="_blank">五一小长假，跟着Airbnb爱彼迎体验达人解锁城市</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag">
                            <span>标签</span>
                            <a href="" target="_blank">爱彼</a>|
                            <a>生活</a>|<a>旅行</a>|<a>度假</a>
                        </div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 1751px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="环贸iapm商场震撼上演 《复仇者联盟3: 无限战争">
                                <img src="../image/lifdZaIjUy2Vg.jpg">
                            </a>
                        </div>
                        <div class="date">2018-04-28</div>
                        <div class="bt">
                            <a href="" target="_blank">环贸iapm商场震撼上演 《复仇者联盟3: 无限战争</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag">
                            <span>标签</span>
                            <a href="" target="_blank">娱乐</a>|
                            <a href="" target="_blank">时尚购物</a>
                        </div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 1829px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="百年电器品牌德国美诺Miele举行盛大活动 庆祝美">
                                <img src="../image/lispwQJAmFx16.jpg">
                            </a>
                        </div>
                        <div class="date">2018-04-27</div>
                        <div class="bt">
                            <a href="" target="_blank">百年电器品牌德国美诺Miele举行盛大活动 庆祝美</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag">
                            <span>标签</span>
                            <a href="" target="_blank">主厨</a>|
                            <a href="" target="_blank">跨界</a>|
                            <a>吴尊</a>
                        </div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 1845px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="苏州 W 酒店打造别具风格的潮流婚礼秀 ">
                                <img src="../image/liKTuG6Z3PWI.jpg">
                            </a>
                        </div>
                        <div class="date">2018-04-27</div>
                        <div class="bt">
                            <a href="" target="_blank">苏州 W 酒店打造别具风格的潮流婚礼秀 </a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank">

                            </a>
                        </div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 2128px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="同步全球美食体验 GREEN&amp;SAFE东平店崭新升级">
                                <img src="../image/lia17JUIVOOzc.jpg">
                            </a>
                        </div>
                        <div class="date">2018-04-26</div>
                        <div class="bt">
                            <a href="" target="_blank">同步全球美食体验 GREEN&amp;SAFE东平店崭新升级</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag">
                            <span>标签</span>
                            <a href="" target="_blank">米其林</a>|
                            <a href="" target="_blank">法式</a>|
                            <a href="" target="_blank">餐饮</a>|
                            <a href="" target="_blank">主厨</a>|
                            <a href="" target="_blank">伯爵</a>
                        </div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 2204px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="天津丽思卡尔顿酒店2018“皇室浪漫，思守一生”">
                                <img src="../image/liXPqNODqJoUI.jpg">
                            </a>
                        </div>
                        <div class="date">2018-04-20</div>
                        <div class="bt">
                            <a href="" target="_blank">天津丽思卡尔顿酒店2018“皇室浪漫，思守一生”</a>
                        </div>
                        <div class="con">
                            <a href="" target="_blank"></a>
                        </div>
                        <div class="tag">
                            <span>标签</span>
                            <a href="" target="_blank">酒会</a>|
                            <a href="" target="_blank">盛典</a>
                        </div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 2223px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="万豪国际集团推出更丰富的会员专属时刻体验">
                                <img src="../image/liZbwu07EWv1k.jpg"></a>
                        </div>
                        <div class="date">2018-04-20</div>
                        <div class="bt"><a href="" target="_blank">万豪国际集团推出更丰富的会员专属时刻体验</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">主厨</a>|<a href="" target="_blank">精品酒店</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 2558px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="全棉时代携手上田義彦 以光影致敬棉的生命力  “"><img src="../image/liZcCFrasQnM6.jpg"></a>
                        </div>
                        <div class="date">2018-04-20</div>
                        <div class="bt"><a href="" target="_blank">全棉时代携手上田義彦 以光影致敬棉的生命力  “</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">摄影</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 2581px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="	组合单品“麻烦”频出 卡萨帝天沐套系一站式解"><img src="../image/li2qlxs8RdDHM.jpg"></a>
                        </div>
                        <div class="date">2018-04-19</div>
                        <div class="bt"><a href="" target="_blank">	组合单品“麻烦”频出 卡萨帝天沐套系一站式解</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">玩物</a>|<a href="" target="_blank">装修</a>|<a>生活</a>|<a>乐活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 2720px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="1664啤酒：在果香馥郁的口感中#尽享法式风情#"><img src="../image/liEYPA4jLziY.jpg"></a>
                        </div>
                        <div class="date">2018-04-19</div>
                        <div class="bt"><a href="" target="_blank">1664啤酒：在果香馥郁的口感中#尽享法式风情#</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">饮品</a>|<a href="" target="_blank">法式</a>|<a href="" target="_blank">美酒</a>|<a href="" target="_blank">果味</a>|<a href="" target="_blank">法国文化</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 2935px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="泰国华欣奇瓦颂健康养生度假村Chiva-Som最新网站"><img src="../image/li8iO9EVhjZc.png"></a>
                        </div>
                        <div class="date">2018-04-19</div>
                        <div class="bt"><a href="" target="_blank">泰国华欣奇瓦颂健康养生度假村Chiva-Som最新网站</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a>生活</a>|<a>旅行</a>|<a>度假</a>|<a>乐活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 2966px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="五一小长假，Airbnb爱彼迎带你玩转72小时"><img src="../image/liXSn35cGxdR.jpg"></a>
                        </div>
                        <div class="date">2018-04-19</div>
                        <div class="bt"><a href="" target="_blank">五一小长假，Airbnb爱彼迎带你玩转72小时</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">爱彼</a>|<a>生活</a>|<a>旅行</a>|<a>度假</a>|<a>乐活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 3068px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="小鸟音响Track+无线智能降噪耳机正式发布 降噪从"><img src="../image/lisGsfDrrUw8.jpg"></a>
                        </div>
                        <div class="date">2018-04-19</div>
                        <div class="bt"><a href="" target="_blank">小鸟音响Track+无线智能降噪耳机正式发布 降噪从</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">户外运动</a>|<a href="" target="_blank">音响</a>|<a href="" target="_blank">玩物</a>|<a>生活</a>|<a>乐活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 3302px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="刚柔并济，平衡自我"><img src="../image/liNFPoh6FoB6.gif"></a>
                        </div>
                        <div class="date">2018-04-19</div>
                        <div class="bt"><a href="" target="_blank">刚柔并济，平衡自我</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">健康饮食</a>|<a>品牌</a>|<a>生活</a>|<a>乐活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 3361px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="区块链与亚洲商旅市场"><img src="../image/li64Oy6wreFsU.jpg"></a>
                        </div>
                        <div class="date">2018-04-18</div>
                        <div class="bt"><a href="" target="_blank">区块链与亚洲商旅市场</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">手机</a>|<a href="" target="_blank">时尚资讯</a>|<a>生活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 3464px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="Penfolds Max’s奔富麦克斯系列2016年份全新上市"><img src="../image/liGRZ4tqMesQ.jpg"></a>
                        </div>
                        <div class="date">2018-04-18</div>
                        <div class="bt"><a href="" target="_blank">Penfolds Max’s奔富麦克斯系列2016年份全新上市</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 3646px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="#AbsoluTChina#绝对伏特加限量中国瓶创意公开征"><img src="../image/liZ2vjxf9jvuU.jpg"></a>
                        </div>
                        <div class="date">2018-04-18</div>
                        <div class="bt"><a href="" target="_blank">#AbsoluTChina#绝对伏特加限量中国瓶创意公开征</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">城市文化</a>|<a href="" target="_blank">获奖</a>|<a href="" target="_blank">跨界</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 3823px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="万豪国际集团推出整合常客计划及统一会员礼遇"><img src="../image/lirg2VExU29Ps.jpg"></a>
                        </div>
                        <div class="date">2018-04-18</div>
                        <div class="bt"><a href="" target="_blank">万豪国际集团推出整合常客计划及统一会员礼遇</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">餐饮</a>|<a href="" target="_blank">度假酒店</a>|<a href="" target="_blank">精品酒店</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 3875px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="美国运动品牌AVIA大中华区市场布局全面开启"><img src="../image/liOo8Ts0EN8e6.png"></a>
                        </div>
                        <div class="date">2018-04-17</div>
                        <div class="bt"><a href="" target="_blank">美国运动品牌AVIA大中华区市场布局全面开启</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 4157px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="绝配——希捷京东定制款乐备宝打造移动设备应用"><img src="../image/limdUlBZIJoFs.jpg"></a>
                        </div>
                        <div class="date">2018-04-16</div>
                        <div class="bt"><a href="" target="_blank">绝配——希捷京东定制款乐备宝打造移动设备应用</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">电脑</a>|<a href="" target="_blank">数码</a>|<a>品牌</a>|<a>生活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 4201px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="北京瑜舍 地球一小时“星星的崛起”活动"><img src="../image/liZIhNONVArOU.jpg"></a>
                        </div>
                        <div class="date">2018-04-16</div>
                        <div class="bt"><a href="" target="_blank">北京瑜舍 地球一小时“星星的崛起”活动</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a>生活</a>|<a>旅行</a>|<a>度假</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 4218px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="生为竞技，“性能怪兽”黑鲨游戏手机正式发布"><img src="../image/liQWMtejubZPE.png"></a>
                        </div>
                        <div class="date">2018-04-15</div>
                        <div class="bt"><a href="" target="_blank">生为竞技，“性能怪兽”黑鲨游戏手机正式发布</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">智能手机</a>|<a href="" target="_blank">手机</a>|<a>品牌</a>|<a>生活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 4552px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="加州巴旦木私享心“肌”食谱  唤醒你的阳光味蕾"><img src="../image/liwpEIyFGSnW6.jpg"></a>
                        </div>
                        <div class="date">2018-04-13</div>
                        <div class="bt"><a href="" target="_blank">加州巴旦木私享心“肌”食谱  唤醒你的阳光味蕾</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">咖啡</a>|<a href="" target="_blank">花式咖啡</a>|<a href="" target="_blank">下午茶</a>|<a href="" target="_blank">味蕾</a>|<a href="" target="_blank">味觉</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 4579px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="“寻找中国阿隆索”新闻发布会圆满落幕上海外滩"><img src="../image/liu3NSyBM6x8k.png"></a>
                        </div>
                        <div class="date">2018-04-13</div>
                        <div class="bt"><a href="" target="_blank">“寻找中国阿隆索”新闻发布会圆满落幕上海外滩</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a>冯绍峰</a>|<a>韩寒</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 4614px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="时尚圈的质趣盛会，Pick My Style&amp;#8226;先"><img src="../image/lifUsnIaJVCME.jpeg"></a>
                        </div>
                        <div class="date">2018-04-13</div>
                        <div class="bt"><a href="" target="_blank">时尚圈的质趣盛会，Pick My Style&amp;#8226;先</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 4956px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="终于有机会在北京体验现实版的爱丽丝奇境了！"><img src="../image/lixZCYFMCU5ps.jpeg"></a>
                        </div>
                        <div class="date">2018-04-12</div>
                        <div class="bt"><a href="" target="_blank">终于有机会在北京体验现实版的爱丽丝奇境了！</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 4973px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="造梦使者：美好生活的设计师 "><img src="../image/li2tU7CxLcDus.jpg"></a>
                        </div>
                        <div class="date">2018-04-12</div>
                        <div class="bt"><a href="" target="_blank">造梦使者：美好生活的设计师 </a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">咖啡</a>|<a href="" target="_blank">手机</a>|<a href="" target="_blank">家居设计</a>|<a href="" target="_blank">装修</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 5114px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="我的妈妈是个超超超超级英雄"><img src="../image/libuVWHIKSQw.jpg"></a>
                        </div>
                        <div class="date">2018-04-12</div>
                        <div class="bt"><a href="" target="_blank">我的妈妈是个超超超超级英雄</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a>生活</a>|<a>旅行</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 5295px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="时尚随身带 美国康宁X杯解锁饮水新方式"><img src="../image/liUiubWEIq7lQ.png"></a>
                        </div>
                        <div class="date">2018-04-12</div>
                        <div class="bt"><a href="" target="_blank">时尚随身带 美国康宁X杯解锁饮水新方式</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 5348px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="《狂暴巨兽》中国首映巨石强森霸气来袭！千人观"><img src="../image/liCkN4bDxnZFY.jpg"></a>
                        </div>
                        <div class="date">2018-04-11</div>
                        <div class="bt"><a href="" target="_blank">《狂暴巨兽》中国首映巨石强森霸气来袭！千人观</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">萌娃</a>|<a href="" target="_blank">奥斯卡</a>|<a href="" target="_blank">首映</a>|<a href="" target="_blank">数码</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 5609px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="Fighting，释放强大自我！"><img src="../image/liYacpOp1PtBc.png"></a>
                        </div>
                        <div class="date">2018-04-11</div>
                        <div class="bt"><a href="" target="_blank">Fighting，释放强大自我！</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a>生活</a>|<a>美食</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 5632px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="斩获两大权威奖项 卡萨帝以原创科技实现净收入增"><img src="../image/lip9njoIXnDDI.jpg"></a>
                        </div>
                        <div class="date">2018-04-11</div>
                        <div class="bt"><a href="" target="_blank">斩获两大权威奖项 卡萨帝以原创科技实现净收入增</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">饮食文化</a>|<a href="" target="_blank">跨界</a>|<a>品牌</a>|<a>生活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 5734px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="烤箱烤熟会烤干 卡萨帝发明能保湿的烤箱"><img src="../image/liFv497MtZ7g.jpg"></a>
                        </div>
                        <div class="date">2018-04-11</div>
                        <div class="bt"><a href="" target="_blank">烤箱烤熟会烤干 卡萨帝发明能保湿的烤箱</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a>品牌</a>|<a>生活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 6021px; left: 240px;">
                        <div class="img">
                            <a href="" target="_blank" title="纸锅都不怕干烧的海尔燃气灶成行业安全范本"><img src="../image/liGg12xh33Vw.jpg"></a>
                        </div>
                        <div class="date">2018-04-10</div>
                        <div class="bt"><a href="" target="_blank">纸锅都不怕干烧的海尔燃气灶成行业安全范本</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">烹饪</a>|<a>品牌</a>|<a>生活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 6030px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="海尔燃气灶演示纸锅烧水的3个层次：安全、守护、"><img src="../image/li21Gh4lqp1M.png"></a>
                        </div>
                        <div class="date">2018-04-10</div>
                        <div class="bt"><a href="" target="_blank">海尔燃气灶演示纸锅烧水的3个层次：安全、守护、</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a>品牌</a>|<a>生活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 6112px; left: 0px;">
                        <div class="img">
                            <a href="" target="_blank" title="海尔大厨电之斐雪派克:30万身价入住苏州桃花源"><img src="../image/liqINSW9iINy6.jpg"></a>
                        </div>
                        <div class="date">2018-04-10</div>
                        <div class="bt"><a href="" target="_blank">海尔大厨电之斐雪派克:30万身价入住苏州桃花源</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a href="" target="_blank">烹饪</a>|<a href="" target="_blank">美酒</a>|<a>品牌</a>|<a>生活</a></div>
                    </div>
                    <div class="c3_r_item masonry-brick" style="position: absolute; top: 6386px; left: 480px;">
                        <div class="img">
                            <a href="" target="_blank" title="海尔大厨电之斐雪派克：美国西海岸体验中心开业"><img src="../image/linFXehm3Hk.jpg"></a>
                        </div>
                        <div class="date">2018-04-10</div>
                        <div class="bt"><a href="" target="_blank">海尔大厨电之斐雪派克：美国西海岸体验中心开业</a></div>
                        <div class="con"><a href="" target="_blank"></a></div>
                        <div class="tag"><span>标签</span><a>品牌</a>|<a>生活</a></div>
                    </div>


                </div>
            </div>
            <div class="paging">
                <span class="current">1</span>
                <a href="" target="_self" hidefocus="ture">2</a>
                <a href="" target="_self" hidefocus="ture">3</a>
                <a href="" target="_self" hidefocus="ture">4</a>
                <a href="" target="_self" hidefocus="ture">5</a>
                <a href="" target="_self" hidefocus="ture">6</a>
                <a href="" target="_self" hidefocus="ture">7</a>
                <a href="" target="_self" hidefocus="ture">8</a>
                <a href="" target="_self" hidefocus="ture">9</a>
                <span class="ellipsis">…</span>
                <a href="" target="_self" hidefocus="ture">91</a>
                <a class="next" href="" target="_self" hidefocus="ture">下一页</a>
            </div>

        </div>
    </div>
</div>



<%@ include file="../../footer.jsp" %>

</body>
</html>
