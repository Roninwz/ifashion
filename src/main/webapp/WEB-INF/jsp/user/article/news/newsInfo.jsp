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
    <script>
        var channel="streetstyle";
    </script>
    <script type="text/javascript">
        if(window.orientation!=undefined){
            var u_hash = window.location.hash ? window.location.hash : "none";
            if(u_hash!="#ignor_auto" && window.location.host!="m.onlylady.com"){
                window.location.href = "";
            }
        }
    </script>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">


    <link rel="stylesheet" href="static/user/article/news/css/newConment_v201607.css">
    <link rel="stylesheet" href="static/user/article/news/css/newindex.css">
    <link rel="stylesheet" href="static/user/article/news/css/init.css">
    <link rel="stylesheet" href="static/user/article/news/css/channel_common.css">
    <link rel="stylesheet" href="static/user/article/news/css/paging.css">
    <link rel="stylesheet" href="static/user/article/news/css/beauty_cover.css">
    <link rel="stylesheet" href="static/user/article/news/css/followbutton.css">
    <link rel="stylesheet" href="static/user/article/news/css/fashion_common.css">
    <link rel="stylesheet" href="static/user/article/news/css/detail.css">
    <link rel="stylesheet" href="static/user/article/news/csss/channel.common.css">
    <link href="static/user/article/news/css/mytab.css" rel="stylesheet" type="text/css">
    <link href="static/user/article/news/css/review.css" rel="stylesheet" type="text/css">
    <link href="static/user/article/news/css/pager.css" rel="stylesheet" type="text/css">
    <link href="static/user/article/news/css/m_common.css" rel="stylesheet" type="text/css" />



    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>


    <script src="static/user/article/news/js/tools.min.js"></script>
    <script src="static/user/article/news/js/search.js"></script>
    <script src="static/user/article/news/js/fl.js"></script>
    <script src="static/user/article/news/js/roar.min.js"></script>
    <script type="text/javascript" src="static/user/article/news/js/mytab.js"></script>
    <script type="text/javascript" src="static/user/article/news/js/ad_cleaner.js"></script>
    <script type="text/javascript" src="static/user/article/news/js/m_common.js"></script>

    <script>
        $(function(){
            $("#so_brand").bind({
                blur: function() {
                    if ($(this).val() == "")
                        $(this).val("\u8bf7\u8f93\u5165\u54c1\u724c\u540d\u79f0\u6216\u9996\u5b57\u6bcd");
                },
                focus: function() {
                    if ($(this).val() == "\u8bf7\u8f93\u5165\u54c1\u724c\u540d\u79f0\u6216\u9996\u5b57\u6bcd")
                        $(this).val("");
                }
            });
            var timer;
            $("#so_brand").keyup(function() {
                var self = this;
                var temp = [];
                $("#final_auto_brand").hide().empty();
                timer && clearTimeout(timer);
                timer = setTimeout(function() {
                    var key = $(self).val().toLowerCase();
                    for (var i = 0, len = brandInfo.length; i < len; i++) {
                        var id = brandInfo[i].id;
                        var names = brandInfo[i].names.toLowerCase();
                        var pinyins = brandInfo[i].pinyins.toLowerCase();
                        var aliasname = brandInfo[i].aliasname.toLowerCase();
                        var abbr = brandInfo[i].abbr.toLowerCase();
                        var yingwen = brandInfo[i].yingwen.toLowerCase();
                        var customUrl = brandInfo[i].customUrl.toLowerCase();
                        var _ali, _name;

                        if (pinyins.indexOf(key) == 0 || aliasname.indexOf(key) == 0 || names.indexOf(key) == 0 || abbr.indexOf(key) == 0 || yingwen.indexOf(key) == 0 || customUrl.indexOf(key) == 0) {
                            temp.push(brandInfo[i]);
                        }
                    }
                    if (temp.length == 0) {
                        $("#final_auto_brand").append('<a><span>\u6ca1\u6709\u627e\u5230\u76f8\u5173\u54c1\u724c</span></a>');
                        $("#final_auto_brand").show();
                        return;
                    }
                    for (var j = 0, m = temp.length; j < m; j++) {
                        if (temp[j].aliasname) _ali = '<span>(' + temp[j].aliasname + ')</span>';
                        else _ali = '';
                        _name = temp[j].names.replace(/\s/g, "+");
                        $("#final_auto_brand").append('<a href=\"http://www.onlylady.com/brand/'+temp[j].customUrl+'/\" target=\"_blank\">'+_name+_ali+'</a>');
                    }
                    $("#final_auto_brand").show();
                }, 400);
            })
        });
        $(document).click(function() {
            $("#final_auto_brand").hide();
        })


    </script>


    <style type="text/css">
        .QRcode {
            position: fixed;
            _position: absolute;
            top: 130px;
            z-index: 997;
            height: 300px;
            width: 137px;
            text-align: center;
        }
        .QR {
            height: 144px;
            width: 137px;
            padding: 8px 0;
            position: relative;
            background-color: #fff;
            margin-bottom: 5px;
        }
        .QR a {
            position: absolute;
            width: 8px;
            height: 7px;
            top: 1px;
            right: 1px;
            background: url(../image/Gana/b.png) no-repeat -96px -81px;
        }
        .QR .p1 {
            color: #333333;
            font: 12px/16px "Microsoft YaHei";
            margin: 5px 0 0 0;
        }
    </style>


    <script src="../js/logger.js"></script>
    <link href="../css/bdsstyle.css" rel="stylesheet" type="text/css">

</head>
<body>

<div class="VAS_1490" id="OL_SYS_1490"></div>
<div class="VAS_2697" id="OL_SYS_2697"></div>


<div class="VAS_960x100" id="OL_SYS_1190_26"></div>

<!--GLOBAL TOP START-->

<!--GLOBAL TOP START-->


<div class="fashion_c">
    <div class="detail_menu">
        <div class="detail_menu_l">
            <!-- 主页地址 -->
            <a href="" target="_blank" class="detail_logo"></a>
            <div class="detail_map">

                <a href="" title="资讯">资讯</a>><a href="" title="超女过去了13年，不炒作零营销的李宇春怎么还这么火？" >超女过去了13年，不炒作零营销的李宇春怎么还这么火？</a>

            </div>
        </div>
    </div>

    <div class="c">
        <div class="detail_l">

            <div class="VAS_580x60" id="OL_SYS_1193_26"></div>
            <h1 class="detail_h1">超女过去了13年，不炒作零营销的李宇春怎么还这么火？</h1><div class="detail_info">
            <div class="detail_info_l">
                <span>2018-05-10 11:24:06</span><span>来源：iFashion</span>
            </div>
        </div><div class="detail_content" id="detail_content"><p>最近娱乐圈最大的事件莫过于戛纳电影节了。</p>
            <p>除了范冰冰，对于国人来说，最大的看点就是李宇春。</p>
            <p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/li4he2jepzeby.jpg" rel="13659667" picture_id2="0" alt="a25a796aly1fr4ju0gyw1j22bc1s2qv7"  />
            </div>
            </p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/ligrfoyghy5ho.png" rel="13660429" picture_id2="0" alt="a25a796aly1fr4jtr0wwoj23k02dc7wk"  />
            </div>
            <p>有人奇怪，李宇春去电影节做什么呢？</p>
            <p>
                <a href="" target="_blank" class="dottedline" title="巴黎欧莱雅">巴黎欧莱雅</a>是戛纳电影节最大的赞助商，自2013年至今，李宇春都是巴黎欧莱雅全球代言人，因此每年戛纳春春都是以代言人身份受邀出席<span>▼</span>
            </p>
            <p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/li6hhbfmygeva.jpg" rel="13660374" picture_id2="0" alt="webwxgetmsgimg"  />
            </div>
            </p>
            <p>从机场到红毯，李宇春的全部
                <a href="" target="_blank" class="dottedline" title="妆容">妆容</a>都由巴黎欧莱雅打造。
            </p>
            <p>赴戛纳机场时，用无暇的
                <a href="" target="_blank" class="dottedline" title="底妆">底妆</a>配上<span>粉嫩的唇色，清透养眼</span>▼</p>
            <p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/li2evhy9pyim.png" rel="13660083" picture_id2="0" alt="liH0dSqTUBVcI"  />
            </div>
            </p>
            <p style="text-align: left;">休闲的造型帅气又有少女感▼</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/lipusdshzdqkc.png" rel="13660506" picture_id2="0" alt="63086112gy1fr31uwz4ohj20ku0u3jxb"  />
            </div>
            <p>开幕式妆容也全部来自巴黎欧莱雅。</p>
            <pre class="js_message_plain ng-binding" ng-bind-html="message.MMActualContent">&ldquo;定制&rdquo;眉妆伶俐清晰，隐约可见在湖蓝色刘海下，在眉峰处略带弧度，让整体
               <a href="" target="_blank" class="dottedline" title="眼妆">眼妆</a>气质独特▼
               </pre>
            <p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/li2w1p0ndi0u.png" rel="13660027" picture_id2="0" alt="liunoOIgxV1s"  />
            </div>
            </p>
            <pre class="js_message_plain ng-binding" ng-bind-html="message.MMActualContent">春春红毯妆容中底妆都轻透无瑕，此次的底妆略带哑光，雾面的质感在众多聚光灯下也能散发<br/>自然光泽▼</pre>
            <p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/li9shvad00a6.png" rel="13660026" picture_id2="0" alt="lij41GFI1fCo"  />
            </div>
            </p>
            <p>唇妆是淡淡的粉色系，涂抹时注意唇部边缘的整洁，唇中央颜色的饱满，可反复涂抹来调整唇色，让整个唇妆和哑光底妆搭配到最佳▼</p>
            <p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/limozqbgypoto.png" rel="13660025" picture_id2="0" alt="libMTE16UmEYc"  />
            </div>
            </p>
            <p>开幕式造型是<a href="" target="_blank" class="dottedline" title="GUCCI">GUCCI</a>创意总监Alessandro Michele为其特别定制▼</p>
            <p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/likc81gozupf2.jpg" rel="13659665" picture_id2="0" alt="67436eebgy1fr4ehui1i6j21bd1yzhdt"  />
            </div>
            </p>
            <div>
                <p align="center" style="text-align: left;">开幕式后，李宇春还亮相了戛纳入围影片《Yomeddine》的首映仪式。</p>
                <p align="center" style="text-align: left;">妆容依旧由巴黎欧莱雅单品打造，哑光底妆很清透，持妆效果也完全不用担心，整场下来，肌肤状态仍能保持最佳▼</p>
                <p>
                <div class="detail_img_border_none">
                    <img src="../image/Gana/li9gsflz0sqye.png" rel="13660079" picture_id2="0" alt="webwxgetmsgimg-(1)"  />
                </div>
                </p>
                <pre class="js_message_plain ng-binding" ng-bind-html="message.MMActualContent">此次的眼线勾勒的没有过重，眼线线条细而精致，只是在眼尾处轻轻上挑，让眼部轮廓更有型，<br/>眼神更有神▼</pre>
                <p>
                <div class="detail_img_border_none">
                    <img src="../image/Gana/liqpmbkwheen.png" rel="13660080" picture_id2="0" alt="webwxgetmsgimg-(2)"  />
                </div>
                </p>
                <p>裸色唇妆算是春春的标配，唇妆是自然浅色，显得优雅大气，给人很舒服的感觉。▼</p>
                <p>
                <div class="detail_img_border_none">
                    <img src="../image/Gana/limmch2stepmg.png" rel="13660082" picture_id2="0" alt="webwxgetmsgimg-(1)"  />             </div>
                </p>
                <p align="center" style="text-align: left;">服装来自Jean Paul Gaultier 2018春夏高定系列，简约又别致▼</p>
                <p>
                <div class="detail_img_border_none">
                    <img src="../image/Gana/li0zencojhxtu.png" rel="13660078" picture_id2="0" alt="webwxgetmsgimg"  />
                </div>
                </p>
                <p align="center" style="text-align: left;">这次戛纳，i姐也去了现场，很荣幸的专访到了<font face="宋体">李宇春哈哈哈哈哈~</font></p>
                <div class="detail_img_border_none"><div class="detail_img_border_none">
                    <img src="../image/Gana/liv84a8jnnc2.gif" rel="13659927" picture_id2="0" alt="第六次&ldquo;春&rdquo;风吹戛纳，李宇春的最佳装（妆）扮不愧是流行女王！"  />
                </div>
                </div>
                <p><strong>i姐：</strong>来这么多次戛纳，你有没有去过菜市场？</p>
                <p><strong>春春：</strong>还真的没有，真的没有去过戛纳菜市场。</p>

                <div class="detail_img_border_none">
                    <a href="" title="啥？《向往的生活》最懒嘉宾李诞的女朋友是个网红？">
                        <div class="detail_img_border_none">
                            <img src="../image/Gana/liedh9wkhg8a.gif" rel="13659916" picture_id2="0" alt="第六次&ldquo;春&rdquo;风吹戛纳，李宇春的最佳装（妆）扮不愧是流行女王！"  />
                        </div>
                    </a>
                </div>
                <p><strong>i姐：</strong>经常在网上和玉米们互动，是不是乐在其中？</p>
                <p><strong>春春：</strong>还行哈哈，其实有的时候看到一些比较好玩的评论，就会忍不住去互动一下。</p>
                <p></p>
                <div class="detail_img_border_none"><a href="" title="啥？《向往的生活》最懒嘉宾李诞的女朋友是个网红？">             <div class="detail_img_border_none"><img src="Picture/lixp3onawixa.gif" rel="13659918" picture_id2="0" alt="第六次&ldquo;春&rdquo;风吹戛纳，李宇春的最佳装（妆）扮不愧是流行女王！"  />
                </div>
                </a>
                </div>
                <p><strong>i姐</strong>：这次来戛纳。玉米接机有没有发生有趣的事情？</p>
                <p><strong>春春：</strong>接机的时候，其实不太看得见，因为人太多了，会有很强的闪光灯，我会慢慢地往前走。</p>
                <p></p>
                <div class="detail_img_border_none">
                    <a href="" title="啥？《向往的生活》最懒嘉宾李诞的女朋友是个网红？">
                        <div class="detail_img_border_none">
                            <img src="../image/Gana/li5fpukxoizzw.gif" rel="13659920" picture_id2="0" alt="第六次&ldquo;春&rdquo;风吹戛纳，李宇春的最佳装（妆）扮不愧是流行女王！"  />
                        </div>
                    </a>
                </div>
                <p><strong>i姐：</strong>有乔装打扮之后去电影院看电影的经历吗？</p>
                <p><strong>春春：</strong>我去电影院看电影比较常规，不用特别的打扮，其实戴个
                    <a href="" target="_blank" class="dottedline" title="帽子">帽子</a>就好了。
                </p>
                <div class="detail_img_border_none">
                    <a href="" title="啥？《向往的生活》最懒嘉宾李诞的女朋友是个网红？">
                        <div class="detail_img_border_none">
                            <img src="../image/Gana/lis9keumzno6s.gif" rel="13659921" picture_id2="0" alt="第六次&ldquo;春&rdquo;风吹戛纳，李宇春的最佳装（妆）扮不愧是流行女王！"  />
                        </div>
                    </a>
                </div>
                <p><strong>i姐：</strong>这次电影节最期待看到哪部作品？</p>
                <p><strong>春春：</strong>今年亚洲电影有很多入围的，我自己还挺期待的，我自己比较喜欢是枝裕和导演的
                    <a href="" target="_blank" class="dottedline" title="风格">风格</a>。另外，像贾樟柯导演的作品也挺期待的，因为我之前有好多次机会跟他聊电影，所以还挺期待可以看他的新电影。</p>
                <p></p>
                <div class="detail_img_border_none">
                    <a href="" title="啥？《向往的生活》最懒嘉宾李诞的女朋友是个网红？"><div class="detail_img_border_none">
                        <img src="../image/Gana/lit32rv3c7kra.gif" rel="13659922" picture_id2="0" alt="第六次&ldquo;春&rdquo;风吹戛纳，李宇春的最佳装（妆）扮不愧是流行女王！"  />
                    </div>
                    </a>
                </div>
                <p><strong>i姐：</strong>做歌手、演员、监制，未来会考虑做导演吗？</p>
                <p><strong>春春：</strong>我觉得在积蓄的过程中，因为我自己喜欢的题材还是更偏文艺一些，所以故事、剧情都需要想清楚，还是需要积累。</p>
                <p></p>
                <div class="detail_img_border_none">
                    <a href="" title="啥？《向往的生活》最懒嘉宾李诞的女朋友是个网红？">
                        <div class="detail_img_border_none">
                            <img src="../image/Gana/lijuvcoq2ubae.gif" rel="13659924" picture_id2="0" alt="第六次&ldquo;春&rdquo;风吹戛纳，李宇春的最佳装（妆）扮不愧是流行女王！"  />
                        </div>
                    </a>
                </div>
                <p><strong>i姐：</strong>是什么支撑你骨伤复发还是坚持登台？</p>
                <p><strong>春春：</strong>这是我应该做的事情。准备这么久的演唱会，也很期待跟大家见面，我相信大家跟我的心情是一样的。虽然有突发的状况，但是我还是很想赴这一次的约会。</p>
                <p></p>
                <div class="detail_img_border_none">
                    <a href="" title="啥？《向往的生活》最懒嘉宾李诞的女朋友是个网红？"><div class="detail_img_border_none">
                        <img src="../image/Gana/lify7iycpixg.gif" rel="13659925" picture_id2="0" alt="第六次&ldquo;春&rdquo;风吹戛纳，李宇春的最佳装（妆）扮不愧是流行女王！"  />
                    </div>
                    </a>
                </div>
                <p><strong>i姐：</strong>在欧莱雅值得说脱口秀和洪晃对话感觉怎么样？</p>
                <p><strong>春春：</strong>我觉得她很可爱，人很好，我还蛮喜欢跟她聊天的，跟她聊天感觉很舒服。</p>
                <p></p>
                <div class="detail_img_border_none">
                    <a href="" title="啥？《向往的生活》最懒嘉宾李诞的女朋友是个网红？">
                        <div class="detail_img_border_none">
                            <img src="../image/Gana/lipwxpwrlqfwo.gif" rel="13659926" picture_id2="0" alt="第六次&ldquo;春&rdquo;风吹戛纳，李宇春的最佳装（妆）扮不愧是流行女王！"  />
                        </div>
                    </a>
                </div>
                <p><strong>i姐：</strong>有数据显示你在女星
                    <a href="" target="_blank" class="dottedline" title="口红">口红</a>种草能力中排前三，这次有什么推荐？</p>
                <p><strong>春春：</strong>这个喽！&ldquo;301&rdquo;（巴黎欧莱雅纷泽滋
                    <a href="" target="_blank" class="dottedline" title="润唇膏">润唇膏</a> 戛纳限定版），是这次戛纳的特别版本，大家能够看到这个红色的丝绒包装非常像红毯，上面有非常精致的金色棕榈叶，有非常明显的戛纳风格，而且它的颜色比较特别，是蕃茄红，大家可以尝试下。
                </p>
                <p>戳这里，能看到更多专访小花絮哈▼</p>
                <div></div>
            </div>
            <p>说到李宇春，很多人都有这样一个疑问：出道13年了，零绯闻零营销，李宇春怎么还这么火啊？</p>
            <p>在2005年那个躁动的夏天，伴随着《超级女生》掀起的一股全民选秀的狂潮，李宇春的名字几乎家喻户晓。</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/liodsreajoljk.jpg" rel="13659930" picture_id2="0" alt="01300534072337134276548663302"  />
            </div>
            <p>但当时没有人想到，一个选秀明星能一直走红13年。</p>
            <p>是啊，怎么过了13年，当年为她摇旗呐喊的小粉丝纷纷结婚生子了，爱豆却光芒依旧，甚至更加耀眼？</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/li6r0wbir8yre.jpg" rel="13659935" picture_id2="0" alt="a25a796aly1fr303hu1kyj23vc2kwb2a"  />
            </div>
            <p>更玄乎的是，13年了，身在娱乐圈，竟然创下了零绯闻零八卦的奇谈。她就像在腥气熏天的鱼市待了整宿，出来周身依旧散发着馨香。          </p>
            <p>这一切到底是怎样发生的？</p>
            <p>先说李宇春事业上的长盛不衰。O姐对音乐不在行，但综合一些专业人士的分析，还是能稍作总结的。</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/lijsinqpxbizi.jpg" rel="13660029" picture_id2="0" alt="U5572P28DT20110925175625"  />
            </div>
            <p>首先，作为第一届超女的冠军和中国选秀偶像的鼻祖，李宇春有后辈无法比拟的高起点。</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/licpg5sz7kvia.jpg" rel="13659936" picture_id2="0" alt="XrkOwPhIOwcDiO2dEuFUVlKA1qYfjzEqgoB%3DwDky%3DuU531519613150901"  />
            </div>
            <p>十几年来，华语唱片市场日渐不景气，李宇春依旧每年坚持发一张新专辑，且每张新专辑都登顶年度唱片销量冠军。</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/lia4g1dxn1dtw.jpg" rel="13659710" picture_id2="0" alt="timg"  />
            </div>
            <p>如果说李宇春作为歌手，有超于同辈的绝对优势的话，她的舞台表现力一定算一个。</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/liekvuvik2rxk.gif" rel="13659939" picture_id2="0" alt="d06d61ef87ee4253b50b30eea0b29e76"  />
            </div>
            <p><span>2009年，她在北京五棵松体育场办&ldquo;阿么&rdquo;演唱会，因为导演&ldquo;特别特别水&rdquo;，她直接炒掉导演，亲自操持。自此之后，她的每一场演唱会，都是自己做总导演。</span></p>
            <p style="text-align: center;">
              <span>
                  <div class="detail_img_border_none">
                     <img src="../image/Gana/lijqgblnycc.jpg" rel="13659670" picture_id2="0" alt="a25a796aly1fn0hd0yqksj23ts2junpi"  />
                  </div><br />
              </span>
            </p>
            <p><span>凤凰卫视主持人何东去看了五棵松演唱会，发现李宇春在舞台上的气势很像卡拉扬，于是叫她&ldquo;李拉扬&rdquo;。</span></p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/liz3ao9x93mu.gif" rel="13659938" picture_id2="0" alt=""  />
            </div>
            <div class="detail_img_border_none">
                <img src="../image/Gana/liwsxtoa9j8k.gif" rel="13659937" picture_id2="0" alt="d06d61ef87ee4253b50b30eea0b29e76"  />
            </div>
            <p>此外，李宇春不止是歌手，她的简介里总会附有另外一个身份：词曲创作人。这几年蛮火的《下个路口见》《再不疯狂我们就老了》《西门少年》，都是李宇春的原创。</p>
            <p><span>除了唱功，没人会否定李宇春的才华。</span></p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/li1oxbgqntjc.png" rel="13660037" picture_id2="0" alt="cfdab98535214c609cdc9024de7a1870"  />
            </div>
            <p>这些独特的个人魅力和时代际遇大概能解释李宇春在华语音乐圈长久不衰的谜题。</p>
            <p>第二个谜题是大多数人更感兴趣的，就是闯荡娱乐圈13年，竟然零绯闻零八卦？！</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/licatubvw3rla.jpg" rel="13659943" picture_id2="0" alt="4a320005a8a84a0573ae"  />
            </div>
            <p>这真的很玄乎，但对李宇春的为人稍作了解，也不难发现其中的奥秘。</p>
            <p>奥秘就是，李宇春把自己跟&ldquo;娱乐&rdquo;做了隔绝。</p>
            <p>她不玩社交媒体，个人微博账号至今只发布了14条微博。</p>
            <p>她觉得自己不需要社交媒体，因为&ldquo;从21岁起，我的人生都在直播。&rdquo;</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/lixzjpscfzlwc.png" rel="13659944" picture_id2="0" alt="a25a796aly1fqtxhi1t20j23vc2kwu11"  />
            </div>
            <p>除此之外，除了工作相关，她几乎不跟圈内人结交，密友圈基本还是学生时代结交下的。</p>
            <p>从娱乐圈举不胜举的塑料姐妹花和撕逼大战中就能理解，这种&ldquo;孤立&rdquo;可以让她避免卷入很多无谓的风波。</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/liyrfzmidorm.jpg" rel="13659976" picture_id2="0" alt="未标题-1"  /></div>
            <p>这么多年，除了在音乐节目里做过导师，李宇春没有参加任何真人秀。她把自己彻底跟&ldquo;娱乐圈&rdquo;做了隔绝。</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/lia9wcdltyru.png" rel="13660007" picture_id2="0" alt="未标题-1"  /></div>
            <p style="text-align: left;">所以这些年李宇春的话题度和曝光度很低，但她并不在乎，只管闷头做音乐。</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/likujxvr2gqw.png" rel="13660013" picture_id2="0" alt="未标题-1"  />
            </div>
            <p><span>不炒作不营销，也就少了莫名的绯闻八卦，再想黑她也没米下锅。</span></p>
            <p>另外还有一点也很关键，就是李宇春的粉丝大概因为年龄偏大（《超女》过去13年了，当年的粉丝大都是80后），在网上的活跃度不高，普遍低调安静，因此&ldquo;玉米&rdquo;给人留下了&ldquo;素质高&rdquo;的印象。</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/liwuwep6r1i5o.png" rel="13660028" picture_id2="0" alt="4014000359823e8f301c"  />
            </div>
            <p>粉丝团的低调让李宇春在娱乐圈有了&ldquo;独善其身&rdquo;的可能。</p>
            <p>专心提高自己的业务能力，避免趟进娱乐的浑水，这大概就是李宇春出道13年能干干净净一身轻的奥秘。</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/lii47xkm6recy.png" rel="13660038" picture_id2="0" alt="a25a796agy1fqslxwe3fwj23vc2kw4qq"  />
            </div>
            <p>最后，李宇春还有一个让其他明星望尘莫及又羡慕不已的地方，就是她的时尚资源太强了！</p>
            <p>举几个例子。</p>
            <p>2012年，被推崇为当今世上的第一流设计名家的<span>高提耶（Jean Paul Gaultier））为李宇春设计了&ldquo;疯狂世界巡演&rdquo;的全套造型。</span></p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/li0pjvj39ntsq.png" rel="13660460" picture_id2="0" alt="8dc589feda84700e76c199f2b7e1be01"  />
            </div>
            <p><span>高提耶是谁？那可是为麦当娜、lady gaga设计演唱会造型的顶级高定大师啊！上一个和他合作的中国歌手是张国荣。</span>      </p>
            <p>2014年，英国大名鼎鼎的鬼才设计师Gareth Pugh亲自设计了李宇春第九届WhyMe演唱会的服装，这是Gareth Pugh首次为亚洲歌手设计演唱会服装▼</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/liwl7xk7knoua.jpg" rel="13659707" picture_id2="0" alt="timg (5)"  />
            </div>
            <p>李宇春2013年首次亮相戛纳的造型也是Gareth Pugh一手打造▼</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/linjciyyavwug.jpg" rel="13659709" picture_id2="0" alt="timg (4)"  />
            </div>
            <p>2015年李宇春意外的成了Givenchy 2015秋冬广告全球代言人，这是Givenchy首次用亚洲明星做代言人▼</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/liwk1ekf0ti.jpg" rel="13659679" picture_id2="0" alt="timg"  /></div>
            <p>不仅如此，现在李宇春还是所有明星都想勾搭上的超级大牌GUCCI的品牌大使▼</p>
            <div class="detail_img_border_none">
                <img src="../image/Gana/lieatr5797k.jpg" rel="13659680" picture_id2="0" alt="timg (1)"  /></div>
            <p>..........</p>
            <div>记得看过一篇文章，里面提到在一次戛纳红毯上，有记者问李宇春：你身上有没有什么中国元素？她说：我就是最大的中国元素。</div>
            <div></div>
            <div>是啊，中国元素不是只有龙凤呈祥，中国面孔也不是只有范冰冰。</div>
            <div></div>
            <div></div>
            <div></div>
        </div>
            <style type="text/css">
                .artical_spread1 {margin:30px auto 0; width:580px;position:relative;}
                .artical_spread1 img {display:block;}
                .artical_spread1 .title {position:absolute;left:0;top:0;padding:0;margin:0;font-size:32px;line-height:97px;color:#fff43f; font-weight:bold;text-align:center;width:100%;font-family:Microsoft YaHei;text-indent:0;}
            </style>
            <script>
                var ol_artId="3937694";
                var nextPageLink = "";
                var channelPageLink = "http://streetstyle.onlylady.com/2018/0508/3937639.shtml";
                var nexttitle = "这个凌驾于美貌之上的气质女神演起海绵宝宝来最过瘾！";
                var thistitle = "超女过去了13年，不炒作零营销的李宇春怎么还这么火？";
                var votePostUrl = "http://streetstyle.onlylady.com/files/eventapi.php";
                var votePostData = 3937694 ;
            </script>



            <!--PRODUCT-->
            <div class="detail_expert"> </div>
            <!--EXPERT-->

            <!--NAV-->



            <!--PAGE-->
            <!--<ul class="share_vote">-->
            <!--我要分享-->
            <!--<li id="bottonSharebar" >-->

            <!-- Baidu Button BEGIN -->

            <!--<script type="text/javascript" id="bdshare_js" data="type=tools&uid=6581236"></script>
            <script type="text/javascript" id="bdshell_js"></script>
            <script type="text/javascript">
                document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date() / 3600000)
            </script> -->
            <!-- Baidu Button END -->
            <!--</li>-->
            <!--VOTE-->
            <!--</ul>-->



            <!-- <div class="detail_rel rel_read"> </div>
             <div class="detail_rel rel_product"> </div>
             <div class="detail_like" style="display:none;">
           <div class="det_bt">
               <span class="bt">你可能还喜欢</span>
               <span class="more">更多关于“”的文章</span>
           </div>
           <ul>

           </ul>
       </div>-->
            <div class="detail_box">
                <!-- 专家专栏 -->
                <div class="detail_zj">
                    <div class="det_bt"> <span class="bt">专家专栏</span> </div>
                    <div class="exp_t">
                        <div class="leftimg">
                            <a href="" target="_blank" title="说透视装太俗的一边去！那是你没看见Angelababy娜扎杨幂穿的有多时髦"><img src="../image/Gana/1.jpg">
                            </a>
                        </div>
                        <div class="rightcon">
                            <div class="bt">
                                <a href="" title="说透视装太俗的一边去！那是你没看见Angelababy娜扎杨幂穿的有多时髦" target="_blank">说透视装太俗的一边去！那是你没看见An
                                </a></div>
                            <div class="con"><span></span></div>
                        </div>
                    </div>
                </div>
                <!-- 视频 -->
                <div class="detail_tj">
                    <div class="det_bt"> <span class="bt">相关视频</span> </div>
                    <div class="det_tj_con">
                        <a href="http://video.onlylady.com/2017/1225/3925617.shtml" title="耐撕星球：送走胡一天迎来F4，没有人不羡慕她开挂的桃花运！" target="_blank">
                            <img src="../image/Gana/lieurohkisieq.jpg" width="260" height="180" alt="耐撕星球：送走胡一天迎来F4，没有人不羡慕她开挂的桃花运！">
                            <i class="video"></i>
                            <div class="bbar">耐撕星球：送走胡一天迎来F4，没有人不羡慕她开挂的桃花运！</div>
                        </a>
                    </div>
                </div>
            </div>


            <!-- 美容图库(时尚大片) -->
            <!--<div class="beau_photo">-->
            <!--<div class="detail_pic">
              <div class="det_bt"> <span class="bt">时尚图库</span> </div>
              <ul>

              </ul>
            </div>-->
            <!--</div>-->
            <!--REL-->
            <div class="VAS_580x100" id="OL_SYS_1198"></div>
            <div class="margin_l_42">
                <!--预留-->
            </div>
            <!--评论START-->

            <!--
      <link href="Css/review.css" rel="stylesheet" type="text/css" />
      <link href="Css/pager.css" rel="stylesheet" type="text/css" />
      <script src="Scripts/review.js"></script>
      <script src="Scripts/jquery.pager.js" type="text/javascript"></script>
       -->

            <link rel="stylesheet" href="../css/init.css" />
            <link rel="stylesheet" href="../css/channel.common.css">
            <link rel="stylesheet" href="../css/paging.css">
            <link rel="stylesheet" href="../css/beauty_cover.css" />
            <link rel="stylesheet" href="../ss/beauty_common.css">
            <link rel="stylesheet" href="../css/detail.css" />



            <link href="../css/review.css" rel="stylesheet" type="text/css" />
            <link href="../css/pager.css" rel="stylesheet" type="text/css" />
            <script src="../js/jquery-1.7.2.min.js"></script>
            <script src="../js/review.js"></script>
            <script src="../js/jquery.pager.js" type="text/javascript"></script>

            <script>
                function getCookieLogin(C) {
                    var D = document.cookie.indexOf(C + "=");
                    var A = D + C.length + 1;
                    if ((!D) && (C != document.cookie.substring(0, C.length))) {
                        return null
                    }
                    if (D == -1) {
                        return null
                    }
                    var B = document.cookie.indexOf(";", A);
                    if (B == -1) {
                        B = document.cookie.length
                    }
                    //return unescape(document.cookie.substring(A, B))
                    return decodeURIComponent(document.cookie.substring(A, B));
                }

                /*-------------------------------------------------
                |     赋值总评论数
                +--------------------------------------------------
                |     @author ol 2014-04-01
                +------------------------------------------------*/
                function reviewTotal(total_num){
                    $("#tit_review_num").html(total_num);
                }


                /*-------------------------------------------------
                |      返回总页数
                +--------------------------------------------------
                |      @author ol 2014-04-01
                +------------------------------------------------*/
                function retVarTotal(){
                    var per_page = "10";
                    var total_num = parseInt($("#tit_review_num").html());
                    var total = Math.ceil(total_num/per_page);
                    return total;
                }


                $(document).ready(function(){
                    loginShow();
                })
            </script>

            <!--表情样式-->
            <style type="text/css">
                /*公共样式*/
                .rl_exp{
                    margin:0 auto;position:absolute;
                    padding:20px;border: 1px solid #D0D0D0;
                    box-shadow: 0 0 2px 2px #fff inset,1px 1px 0 rgba(127,127,127,0.1);
                    overflow: hidden;background: none repeat scroll 0 0 white;zoom:1;z-index:100;
                }

                .rl_exp a{outline:none;blr:expression(this.onFocus=this.blur());}
                .rl_exp ul{list-style:none;margin:0;padding:0;}
                .rl_exp ul li{display:list-item;}
                .rl_exp ul.rl_exp_tab{
                    margin:-20px -20px 20px;padding:12px 13px 0;list-style:none;
                    border-bottom:1px solid #d0d0d0;border-top:1px solid #fff;
                    background: -moz-linear-gradient(center top , #F6F6F6, #E5E5E5) repeat scroll 0 0 transparent;
                    background: -webkit-gradient(linear,center top ,center bottom,from(#f6f6f6),to(#E5E5E5)) repeat scroll 0 0 transparent;
                    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f6f6f6', endColorstr='#E5E5E5');
                }
                .rl_exp ul.rl_exp_tab li{float:left;margin-right:10px;display:list-item;text-align: -webkit-match-parent;}
                .rl_exp ul.rl_exp_tab li a{
                    display: block;padding: 8px 14px;font-size:13px;text-decoration: none;color: #979797;border: 1px solid #c3c3c3;
                    margin-bottom: -1px;
                    background: #E4E4E4;text-shadow: #fff 0 1px;
                }
                .rl_exp ul.rl_exp_tab li a.selected{zoom:1;background: #fff;border-bottom: 1px solid #fff;box-shadow: none;text-shadow: none;}

                .rl_exp_main{margin:0;padding:0;}
                .rl_exp_item{
                    cursor:pointer;float:left;border:1px solid red;overflow:hidden;margin:-1px 0 0 -1px;padding:6px;text-align:center;
                    border-color: #fce089;background: #fef9e7;
                }
                .rl_exp_item:hover{border:1px solid #0095cd;background:#fff9ec;position:relative;z-index:2;}
                .rl_exp_item img{display:inline-block;*zoom:1;border:0;}

                .close{
                    position:absolute;right:6px;top:6px;text-decoration:none;
                    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;font-size:20px;line-height:12px;
                    color:#000;text-shadow:0 1px 0 #fff;opacity:0.2;filter:alpha(opacity=20);
                }
                .close:hover,.close:focus{
                    color:#000;cursor:pointer;opacity:0.4;filter:alpha(opacity=40);
                }

                .clearfix{*zoom:1;}
                .clearfix:before,.clearfix:after{display:table;line-height:0;content:"";}
                .clearfix:after{clear:both;}
                /**************************************************************************************************************/
                .xm-bq{margin:20px 0;font-size:14px;color:#333;}
                .xm-bq a{color:#09c;margin:0 5px;}
                .xm-bq a:hover{color:#E10602;}
                .comment-main{
                    display:inline-block;*display:inline;zoom:1;width:500px;margin:0 auto;padding:5px 0;border-radius:3px;
                    text-align:left;
                }
                .comment-main textarea{width:100%;border:1px solid #dcdcdc;}
                .comment-main textarea:focus{outline:none;border-color:#4bf;}
                .comment-main a{font-size:12px;text-decoration:none;color:#09c;}
                .comment-main a:hover{color:#E10602;}
            </style>

            <!--评论及右侧js-->
            <script type="text/javascript">
                $(function(){
                    var domStr = '';
                    var domStr2 = '';
                    var text  = new Array();   //先声明一维
                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                        url: '/files/eventapi.php?c=Smile&a=GetSmile',      //提交到一般处理程序请求数据
                        data: "websiteid=0",
                        cache:false,
                        error: function() {},
                        success: function(data){
                            for(var i=0;i<data['1'].length;i++){
                                var node = $("#rl_bq .rl_exp_main").eq(i);
                                domStr += 	'<li class="rl_exp_item">' +
                                    '<img src="' + data['1'][i].url + '" alt="' + data['1'][i].code +
                                    '" title="' + data['1'][i].code + '" />' +
                                    '</li>';
                            }

                            for(var i=0;i<data['17'].length;i++){
                                var node = $("#rl_bq .rl_exp_main").eq(i);
                                domStr2 += 	'<li class="rl_exp_item">' +
                                    '<img src="' + data['17'][i].url + '" alt="' + data['17'][i].code +
                                    '" title="' + data['17'][i].code + '" width="20" height="20" />' +
                                    '</li>';
                            }
                            for(var k=0;k<1;k++){        //一维长度为i,i为变量，可以根据实际情况改变
                                text[k] = new Array();    //声明二维，每一个一维数组里面的一个元素都是一个数组；
                                for(var j=0;j<data['1'].length;j++){      //一维数组里面每个元素数组可以包含的数量p，p也是一个变量；
                                    text[k][j] = data['1'][j].code;       //这里将变量初始化，我这边统一初始化为空，后面在用所需的值覆盖里面的值
                                }
                            }
                            for(var k=1;k<2;k++){        //一维长度为i,i为变量，可以根据实际情况改变
                                text[k] = new Array();    //声明二维，每一个一维数组里面的一个元素都是一个数组；
                                for(var j=0;j<data['17'].length;j++){      //一维数组里面每个元素数组可以包含的数量p，p也是一个变量；
                                    text[k][j] = data['17'][j].code;       //这里将变量初始化，我这边统一初始化为空，后面在用所需的值覆盖里面的值
                                }
                            }
                            $("#face_default_li").val(domStr);
                            $("#face_onlylady_li").val(domStr2);
                        }
                    });

                    /*
                    *		参数说明
                    *		baseUrl:	【字符串】表情路径的基地址
                    *		pace:		【数字】表情弹出层淡入淡出的速度
                    *		dir:		【数组】保存表情包文件夹名字
                    *		text:		【二维数组】保存表情包title文字
                    *		num:		【数组】保存表情包表情个数
                    *		isExist:	【数组】保存表情是否加载过,对于加载过的表情包不重复请求。
                    */
                    var rl_exp = {
                        baseUrl:	'http://bbs.onlylady.com/static/image/smiley/default',
                        pace:		200,
                        dir:		['mr','gnl'],
                        text:text,		/*表情包title文字，自己补充*/
                        num:		[84,46],
                        isExist:	[0,0],
                        bind:	function(i){
                            $("#rl_bq .rl_exp_main").eq(i).find('.rl_exp_item').each(function(){
                                $(this).bind('click',function(){
                                    rl_exp.insertText(document.getElementById('rl_exp_input'),$(this).find('img').attr('title'));
                                    $('#rl_bq').fadeOut(rl_exp.pace);
                                });
                            });
                        },
                        /*加载表情包函数*/
                        loadImg:function(i){
                            var node = $("#rl_bq .rl_exp_main").eq(i);
                            if(i == 0){
//				$(domStr).appendTo(node);
                                $(domStr).appendTo(node);
                            }
                            if(i == 1){
                                $(domStr2).appendTo(node);
                            }
                            rl_exp.isExist[i] = 1;
                            rl_exp.bind(i);
                        },
                        /*在textarea里光标后面插入文字*/
                        insertText:function(obj,str){
                            obj.focus();
                            if (document.selection) {
                                var sel = document.selection.createRange();
                                sel.text = str;
                            } else if (typeof obj.selectionStart == 'number' && typeof obj.selectionEnd == 'number') {
                                var startPos = obj.selectionStart,
                                    endPos = obj.selectionEnd,
                                    cursorPos = startPos,
                                    tmpStr = obj.value;
                                obj.value = tmpStr.substring(0, startPos) + str + tmpStr.substring(endPos, tmpStr.length);
                                cursorPos += str.length;
                                obj.selectionStart = obj.selectionEnd = cursorPos;
                            } else {
                                obj.value += str;
                            }
                        },
                        init:function(){
                            $("#rl_bq > ul.rl_exp_tab > li > a").each(function(i){
                                $(this).bind('click',function(){
                                    if( $(this).hasClass('selected') )
                                        return;
                                    if( rl_exp.isExist[i] == 0 ){
                                        rl_exp.loadImg(i);
                                    }
                                    $("#rl_bq > ul.rl_exp_tab > li > a.selected").removeClass('selected');
                                    $(this).addClass('selected');
                                    $('#rl_bq .rl_selected').removeClass('rl_selected').hide();
                                    $('#rl_bq .rl_exp_main').eq(i).addClass('rl_selected').show();
                                });
                            });
                            /*绑定表情弹出按钮响应，初始化弹出默认表情。*/
                            $("#rl_exp_btn").bind('click',function(){
                                if( rl_exp.isExist[0] == 0 ){
                                    rl_exp.loadImg(0);
                                }
                                $('#rl_bq').css({left:'0px',top:'143px'}).fadeIn(400);
                            });
                            /*绑定关闭按钮*/
                            $('#rl_bq a.close').bind('click',function(){
                                $('#rl_bq').fadeOut(rl_exp.pace);
                            });
                            /*绑定document点击事件，对target不在rl_bq弹出框上时执行rl_bq淡出，并阻止target在弹出按钮的响应。*/
                            $(document).bind('click',function(e){
                                var target = $(e.target);
                                if( target.closest("#rl_exp_btn").length == 1 )
                                    return;
                                if( target.closest("#rl_bq").length == 0 ){
                                    $('#rl_bq').fadeOut(rl_exp.pace);
                                }
                            });
                        }
                    };
                    rl_exp.init();	//调用初始化函数。
                });
            </script>

            <script>
                /*-------------------------------------------------
                |     分页加载
                +--------------------------------------------------
                |     @author ol 2014-03-31
                +------------------------------------------------*/
                var relatedid = "3937694";
                var classid = "0";
                var total = retVarTotal();
                var counti = 0;

                //处理分页下的横条
                if(total > 1){
                    $(".review .paging").css("border-bottom","1px solid #AFAFAF");
                }else{
                    $(".review .paging").css("border-bottom","0px");
                }
                $(document).ready(function() {
                    $("#pager").pager({pagenumber: 1, pagecount:total, buttonClickCallback: PageClick });
                });

                PageClick = function(pageclickednumber){loadpage(pageclickednumber);
                    $("#pager").pager({pagenumber: pageclickednumber, pagecount:total, buttonClickCallback: PageClick });
                }
                function loadpage(page){
                    var data = 'appid=8&classid='+classid+'&relatedid='+relatedid+'&order=reviewid&page='+page;
                    $.ajax({
                        type:'POST',
                        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                        url:'/files/eventapi.php?c=InfoReview&a=AjaxPage',
                        data:data,
                        dataType:'json',
                        cache:false,
                        success:function(data){
                            var div_comment_str = '';
                            $("#tit_review_num").html(data['total']);
                            //$("#pager").pager({pagenumber: 1, pagecount:total, buttonClickCallback: PageClick });
                            for(var i=0;i<data['result'].length;i++){
                                if(classid==1977 && data['result'][i][0] && data['result'][i][0].reply_num>0){
                                    for(var j=0;j<data['result'][i].length;j++){
                                        if(data['result'][i][j].rootid > 0){
                                            div_comment_str += '<div class="comment_item fn-clear reply_comment_item">';
                                        }else{
                                            div_comment_str += '<div class="comment_item fn-clear">';
                                        }
                                        div_comment_str += '<a class="touxiang" target="_blank" href="'+data['result'][i][j].home_url+'" rel="nofollow"><img width="50" height="50" src="'+data['result'][i][j].user_pic+'"></a>';
                                        div_comment_str += '<div class="comment_con">';
                                        var uname= data['result'][i][j]['field1'] ?  data['result'][i][j]['field1'] :data['result'][i][j]['username'];
                                        //判断是否有回复
                                        if(data['result'][i][j].rootid > 0){
                                            username=  data['result'][i][j]['userList'].username;
                                            div_comment_str += '<div class="txt"><a class="purple" target="_blank" href="'+data['result'][i][j].home_url+'" style="color:black;" rel="nofollow">'+uname+'</a> 回复 <a class="purple" target="_blank" href="'+data['result'][i][j]['userList'].home_url+'" style="color:black;" rel="nofollow">'+data['result'][i][j]['userList'].username+'</a>：'+data['result'][i][j].content+'</div>';
                                            div_comment_str += '<div class="date"><span>'+data['result'][i][j].publish_time_date+'</span><span>来自'+data['result'][i][j].source_addr+'</span><a class="purple huifu" href="javascript:;" onclick="face_huifu(this,'+counti+',1);" style="color:#333333";>回复</a><input type="hidden" id="is_not_loadimg_flag_'+counti+'" name="is_not_loadimg_flag_'+counti+'" value="0"></div>';
                                        }else{
                                            username=  uname;
                                            div_comment_str += '<div class="txt"><a class="purple" target="_blank" href="'+data['result'][i][j].home_url+'" style="color:black;" rel="nofollow">'+uname+'</a>：'+data['result'][i][j].content+'</div>';
                                            div_comment_str += '<div class="date"><span>'+data['result'][i][j].publish_time_date+'</span><span>来自'+data['result'][i][j].source_addr+'</span><a class="purple huifu" href="javascript:;" onclick="face_huifu(this,'+counti+',1);" style="color:#333333";>回复</a><input type="hidden" id="is_not_loadimg_flag_'+counti+'" name="is_not_loadimg_flag_'+counti+'" value="0"></div>';
                                        }
                                        //回复内容
                                        div_comment_str += '<div class="reply_box">'
                                            +'<span class="arrow"></span>'
                                            +'<div class="reply_input">'
                                            +'<input type="hidden" name="filter_username" value="'+username+'" />'
                                            +'<textarea class="contentForm" id="rl_exp_input_hf_'+counti+'" name="reply_content">回复'+username+'：</textarea></div>';

                                        //表情回复id="rl_exp_btn_hf"
                                        div_comment_str += '<div class="pic_do_review">'
                                            +'<div class="fn-left"><a href="javascript:;" id="rl_exp_btn_hf_'+i+'" onclick="face_huifu(this,'+counti+',0);" class="biaoqing"></a></div>';

                                        if(data['result'][i][j].rootid>0){
                                            div_comment_str += '<div class="fn-right"><a href="javascript:void(0);" class="reply_btn_s" onclick="addReply(this,\''+data['result'][i][j].rootid+'\',\''+counti+'\');">发布</a></div>';
                                        }else{
                                            div_comment_str += '<div class="fn-right"><a href="javascript:void(0);" class="reply_btn_s" onclick="addReply(this,\''+data['result'][i][j].reviewid+'\',\''+counti+'\');">发布</a></div>';
                                        }

                                        div_comment_str += '</div>';
                                        //隐藏框
                                        div_comment_str += '<div class="rl_exp" id="rl_bq_hf_'+counti+'" style="display:none;">'
                                            +'<ul class="rl_exp_tab clearfix">'
                                            +'<li><a href="javascript:void(0);" class="selected">默认</a></li>'
                                            +'<li><a href="javascript:void(0);">onlylady</a></li>'
                                            +'</ul>'
                                            +'<ul class="rl_exp_main clearfix rl_selected"></ul>'
                                            +'<ul class="rl_exp_main clearfix" style="display:none;"></ul>'
                                            +'<a href="javascript:void(0);" class="close">×</a>'
                                            +'</div>';
                                        div_comment_str += '</div></div></div>';
                                        counti++;
                                    }
                                }else{
                                    div_comment_str += '<div class="comment_item fn-clear">';
                                    div_comment_str += '<a class="touxiang" target="_blank" href="'+data['result'][i].home_url+'" rel="nofollow"><img width="50" height="50" src="'+data['result'][i].user_pic+'"></a>';
                                    div_comment_str += '<div class="comment_con">';
                                    var uname= data['result'][i]['field1'] ?  data['result'][i]['field1'] :data['result'][i]['username'];
                                    //判断是否有回复
                                    if(data['result'][i].rootid > 0){
                                        username=  data['result'][i]['userList'].username;
                                        div_comment_str += '<div class="txt"><a class="purple" target="_blank" href="'+data['result'][i].home_url+'" style="color:black;" rel="nofollow">'+uname+'</a> 回复 <a class="purple" target="_blank" href="'+data['result'][i]['userList'].home_url+'" style="color:black;" rel="nofollow">'+data['result'][i]['userList'].username+'</a>：'+data['result'][i].content+'</div>';
                                        div_comment_str += '<div class="date"><span>'+data['result'][i].publish_time_date+'</span><span>来自'+data['result'][i].source_addr+'</span><a class="purple huifu" href="javascript:;" onclick="face_huifu(this,'+counti+',1);" style="color:#333333";>回复</a><input type="hidden" id="is_not_loadimg_flag_'+counti+'" name="is_not_loadimg_flag_'+counti+'" value="0"></div>';
                                    }else{
                                        username=  uname;
                                        div_comment_str += '<div class="txt"><a class="purple" target="_blank" href="'+data['result'][i].home_url+'" style="color:black;" rel="nofollow">'+uname+'</a>：'+data['result'][i].content+'</div>';
                                        div_comment_str += '<div class="date"><span>'+data['result'][i].publish_time_date+'</span><span>来自'+data['result'][i].source_addr+'</span><a class="purple huifu" href="javascript:;" onclick="face_huifu(this,'+counti+',1);" style="color:#333333";>回复</a><input type="hidden" id="is_not_loadimg_flag_'+counti+'" name="is_not_loadimg_flag_'+counti+'" value="0"></div>';
                                    }
                                    //回复内容
                                    div_comment_str += '<div class="reply_box">'
                                        +'<span class="arrow"></span>'
                                        +'<div class="reply_input">'
                                        +'<input type="hidden" name="filter_username" value="'+username+'" />'
                                        +'<textarea class="contentForm" id="rl_exp_input_hf_'+counti+'" name="reply_content">回复'+username+'：</textarea></div>';

                                    //表情回复id="rl_exp_btn_hf"
                                    div_comment_str += '<div class="pic_do_review">'
                                        +'<div class="fn-left"><a href="javascript:;" id="rl_exp_btn_hf_'+i+'" onclick="face_huifu(this,'+counti+',0);" class="biaoqing"></a></div>';

                                    if(data['result'][i].rootid>0){
                                        div_comment_str += '<div class="fn-right"><a href="javascript:void(0);" class="reply_btn_s" onclick="addReply(this,\''+data['result'][i].rootid+'\',\''+counti+'\');">发布</a></div>';
                                    }else{
                                        div_comment_str += '<div class="fn-right"><a href="javascript:void(0);" class="reply_btn_s" onclick="addReply(this,\''+data['result'][i].reviewid+'\',\''+counti+'\');">发布</a></div>';
                                    }

                                    div_comment_str += '</div>';
                                    //隐藏框
                                    div_comment_str += '<div class="rl_exp" id="rl_bq_hf_'+counti+'" style="display:none;">'
                                        +'<ul class="rl_exp_tab clearfix">'
                                        +'<li><a href="javascript:void(0);" class="selected">默认</a></li>'
                                        +'<li><a href="javascript:void(0);">onlylady</a></li>'
                                        +'</ul>'
                                        +'<ul class="rl_exp_main clearfix rl_selected"></ul>'
                                        +'<ul class="rl_exp_main clearfix" style="display:none;"></ul>'
                                        +'<a href="javascript:void(0);" class="close">×</a>'
                                        +'</div>';
                                    div_comment_str += '</div></div></div>';
                                    counti++;
                                }

                            }
                            $(".comment").html(div_comment_str);
                        }
                    });
                }

                /*-------------------------------------------------
                |     发表评论
                +--------------------------------------------------
                |     @author ol
                +------------------------------------------------*/

                /*-------------------------------------------------
                |     添加回复
                +--------------------------------------------------
                |     @author ol 2014-03-31
                +------------------------------------------------*/

                //更新总页数
                function dealPage(total){
                    //加载分页
                    $("#pager").pager({pagenumber: 1, pagecount:total, buttonClickCallback: PageClick });
                    PageClick = function(pageclickednumber){loadpage(pageclickednumber);
                        if(total < pageclickednumber) total = pageclickednumber;
                        $("#pager").pager({pagenumber: pageclickednumber, pagecount:total, buttonClickCallback: PageClick });
                    }
                    if(total > 1){
                        $(".review .paging").css("border-bottom","1px solid #AFAFAF");
                    }else{
                        $(".review .paging").css("border-bottom","0px");
                    }
                }

                /*-------------------------------------------------
                |     表情回复插件
                +--------------------------------------------------
                |     @author ol 2014-03-31
                +------------------------------------------------*/

                function display_login(){
                    $(".loginPanel").css("display","block");
                }

                function getDate(tm){
                    var d = new Date(parseInt(tm) * 1000);
                    var tt = d.getFullYear()+ "-" +(d.getMonth()+1)+"-"+d.getDate();
                    return tt;
                }

            </script>

        </div>



        <!--LEFT-->
        <div class="detail_r">

            <div class="VAS_270x250" id="OL_SYS_1191_26">
                <a href=''  target='_blank'>
                    <img src='static/user/article/news/image/Gana/00b6be0a4cc24f50dbb23f9efb4a4d10.jpg' width='270' height='250' alt='' title='' border='0' />
                </a>
                <input  id="advid" name="advid" value="1191"   type="hidden"/>
            </div>
            <div class="VAS_270x250" id="OL_SYS_1192_26"></div>

            <div class="com_h3">最新推荐<span>What's New</span></div>
            <div class="detail_new">
                <a href="" title="羊羔毛外套遇上牛仔裤，新的一年就要美上天" target="_blank">
                    <img src="static/user/article/news/image/Gana/livhvkb1iy4u.jpg" width="270" height="180">
                </a>
                <span>
                    <a href="" title="羊羔毛外套遇上牛仔裤，新的一年就要美上天" target="_blank">羊羔毛外套遇上牛仔裤，新的一年就要美</a>
                    </span>
            </div>

            <ul class="toplist">
                <li>
                    <span class="num01">1</span>
                    <a href="" title="去参加夏季狂欢趴体，让你轻松做Queen站C位的秘诀是？" target="_blank">去参加夏季狂欢趴体，让你轻松做Queen站</a>
                </li>
                <li>
                    <span class="num01">2</span>
                    <a href="" title="衬衫还能变抹胸？请问还有什么时髦法则是衬衫搞不定的？" target="_blank">衬衫还能变抹胸？请问还有什么时髦法则</a>
                </li>
                <li>
                    <span class="num01">3</span>
                    <a href="" title="想要藏肉又想要提高身材比例，高腰裤的魔法见识一下？" target="_blank">想要藏肉又想要提高身材比例，高腰裤的</a>
                </li>
                <li>
                    <span class="num02">4</span>
                    <a href="" title="都别买什么It Bag了！你妈妈反手就能给你织出一个！" target="_blank">都别买什么It Bag了！你妈妈反手就能给</a>
                </li>
                <li>
                    <span class="num02">5</span>
                    <a href="" title="别人穿都很好看的帆布鞋 怎么你穿就那么普通？" target="_blank">别人穿都很好看的帆布鞋 怎么你穿就那么 </a>
                </li>
            </ul>
            <ul class="detail_ar_2">
                <li><!--OL_SYS_2709-->
                    <a href=''  target='_blank'>杨幂只爱Chanel包</a>
                    <input  id="advid" name="advid" value="2709"   type="hidden"/>
                </li>
                <li><!--OL_SYS_2711-->
                    <a href=''  target='_blank'>值得回味的金球奖look</a>
                    <input  id="advid" name="advid" value="2711"   type="hidden"/>
                </li>
                <li><!--OL_SYS_2710-->
                    <a href=''  target='_blank'>史上8大传奇珠宝</a>
                    <input  id="advid" name="advid" value="2710"   type="hidden"/>
                </li>
                <li><!--OL_SYS_2712-->
                    <a href=''  target='_blank'>拼色外套让你时尚升等</a>
                    <input  id="advid" name="advid" value="2712"   type="hidden"/>
                </li>
            </ul>
            <!--推荐视频-->
            <div class="com_h3">推荐视频<span>Related Video</span></div>
            <div class="detail_new">
                <a href="" title="李易峰颜爆男装周 刘亦菲秀深V" target="_blank">
                    <img src="static/user/article/news/image/Gana/55a4da63d018f_780.jpg" width="270" height="180" alt="李易峰颜爆男装周 刘亦菲秀深V">
                    <i class="video"></i>
                    <div class="bbar">李易峰颜爆男装周 刘亦菲秀深V</div>
                </a>
            </div>
            <!--热点专题-->
            <div class="com_h3">热点专题<span>HOT TOPIC</span></div>
            <div class="detail_new">

                <a href="" title="潮就这么穿VOL.01│学刘雯大表姐穿衣经" target="_blank">
                    <img src="static/user/article/news/image/Gana/liaylr07sw96.jpg" width="270" height="180">
                </a>
                <span>
       <a href="http://trends.onlylady.com/2016/1019/3868273.shtml" title="潮就这么穿VOL.01│学刘雯大表姐穿衣经" target="_blank">潮就这么穿VOL.01│学刘雯大表姐穿衣经
       </a>
       </span>
            </div>
            <!-- 新增SEO碎片 -->
            <div id="myTab" class="myTab">
                <div class="tabNarbar">
                    <ul>
                        <li class="current">
                            <a>最新</a>
                        </li>
                        <li>
                            <a>热点</a>
                            <span class="vSplitLine"></span>
                        </li>
                        <li>
                            <a>推荐</a>
                        </li>
                    </ul>
                </div>
                <div class="tabcards">
                    <div class="tabcard">
                        <ul>
                            <li>
                                <a href="" title="去参加夏季狂欢趴体，让你轻松做Queen站C位的秘诀是？">去参加夏季狂欢趴体，让你轻松做Quee</a>
                            </li>
                            <li>
                                <a href="" title="衬衫还能变抹胸？请问还有什么时髦法则是衬衫搞不定的？">衬衫还能变抹胸？请问还有什么时髦法</a>
                            </li>
                            <li>
                                <a href="" title="想要藏肉又想要提高身材比例，高腰裤的魔法见识一下？">想要藏肉又想要提高身材比例，高腰裤</a>
                            </li>
                            <li>
                                <a href="" title="都别买什么It Bag了！你妈妈反手就能给你织出一个！">都别买什么It Bag了！你妈妈反手就能</a>
                            </li>
                            <li>
                                <a href="" title="别人穿都很好看的帆布鞋 怎么你穿就那么普通？">别人穿都很好看的帆布鞋 怎么你穿就那</a>
                            </li>
                            <li>
                                <a href="" title="老公，我养你！李湘才是真正的人生赢家啊">老公，我养你！李湘才是真正的人生赢</a>
                            </li>
                            <li>
                                <a href="" title="没有什么是一个双肩包装不了的，如果不行，那就两个！">没有什么是一个双肩包装不了的，如果</a>
                            </li>
                            <li>
                                <a href="" title="三招拥有逆天大长腿 矮妹变高不是梦">三招拥有逆天大长腿 矮妹变高不是梦</a>
                            </li>
                            <li>
                                <a href="" title="穿上这层纱，你就是时髦本人">穿上这层纱，你就是时髦本人</a>
                            </li>
                            <li>
                                <a href="" title="今夏没有这几双凉鞋，还好意思称自己时髦精？">今夏没有这几双凉鞋，还好意思称自己
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="tabcard">
                        <ul>
                            <li>
                                <a href="" title="晒豪宅遭批，李湘露富不可容忍？">晒豪宅遭批，李湘露富不可容忍？</a>
                            </li>
                            <li>
                                <a href="" title="身世比韩剧女主还悲剧年龄比老公大，秋瓷炫幸福的秘诀是？">身世比韩剧女主还悲剧年龄比老公大，</a>
                            </li>
                            <li>
                                <a href="" title="101女孩的衣品C位争夺战 孟美岐竟然惨败Yamy！">101女孩的衣品C位争夺战 孟美岐竟然惨</a>
                            </li>
                            <li>
                                <a href="" title="自己明明事业有成衣品出众，怎么就偏偏对渣男情有独钟？">自己明明事业有成衣品出众，怎么就偏</a>
                            </li>
                            <li>
                                <a href="" title="郭碧婷为你告白之路神助攻，520大声说出你的爱">郭碧婷为你告白之路神助攻，520大声说</a>
                            </li>
                            <li>
                                <a href="" title="做回超模的奚梦瑶在戛纳红毯一不小心又创下一个国内首位">做回超模的奚梦瑶在戛纳红毯一不小心</a>
                            </li>
                            <li>
                                <a href="" title="对周杰伦来说，有个男人比昆凌还重要！">对周杰伦来说，有个男人比昆凌还重要</a>
                            </li>
                            <li>
                                <a href="" title="这个36岁的离异女人到底凭什么成了英国王妃？">这个36岁的离异女人到底凭什么成了英
                                </a>
                            </li>
                            <li>
                                <a href="" title="超女过去了13年，不炒作零营销的李宇春怎么还这么火？">超女过去了13年，不炒作零营销的李宇</a>
                            </li>
                            <li>
                                <a href="" title="人生开挂的天才少女告诉你这才是17岁女孩该有的模样">人生开挂的天才少女告诉你这才是17岁</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tabcard">
                        <ul>
                            <li>
                                <a href="" title="晒豪宅遭批，李湘露富不可容忍？">晒豪宅遭批，李湘露富不可容忍？</a>
                            </li>
                            <li>
                                <a href="" title="Disney X Coach 暗黑童话系列概念店于南京德基中庭盛大开幕">Disney X Coach 暗黑童话系列概念店于</a>
                            </li>
                            <li>
                                <a href="" title="身世比韩剧女主还悲剧年龄比老公大，秋瓷炫幸福的秘诀是？">身世比韩剧女主还悲剧年龄比老公大，</a>
                            </li>
                            <li>
                                <a href="" title="101女孩的衣品C位争夺战 孟美岐竟然惨败Yamy！">101女孩的衣品C位争夺战 孟美岐竟然惨</a>
                            </li>
                            <li>
                                <a href="" title="当艺术邂逅匠心 卡地亚发现宝石的另一面">当艺术邂逅匠心 卡地亚发现宝石的另一</a>
                            </li>
                            <li>
                                <a href="" title="Harrods最年轻高定设计师，王璐如何做到的？">Harrods最年轻高定设计师，王璐如何做</a>
                            </li>
                            <li>
                                <a href="" title="自己明明事业有成衣品出众，怎么就偏偏对渣男情有独钟？">自己明明事业有成衣品出众，怎么就偏</a>
                            </li>
                            <li>
                                <a href="" title="郭碧婷为你告白之路神助攻，520大声说出你的爱">郭碧婷为你告白之路神助攻，520大声说</a>
                            </li>
                            <li>
                                <a href="" title="古驰推出全新腕表首饰广告形象大片  女演员蒂比·海德莉（Tippi Hedren）优雅演绎该系列独特浪漫的时尚美学">古驰推出全新腕表首饰广告形象大片  </a>
                            </li>
                            <li>
                                <a href="" title="Ermanno Scervino 香港首家精品店正式揭幕">Ermanno Scervino 香港首家精品店正式</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 新增SEO碎片结束 -->
            <!-- 猜你喜欢开始 -->
            <div class="yourlike">
                <script>document.write(unescape('%3Cdiv id="hm_t_24201"%3E%3C/div%3E%3Cscript charset="utf-8" src="http://crs.baidu.com/t.js?siteId=161eb88c6bb093a5303ec13586901f30&planId=24201&async=0&referer=') + encodeURIComponent(document.referrer) + '&title=' + encodeURIComponent(document.title) + '&rnd=' + (+new Date) + unescape('"%3E%3C/script%3E'));</script>
            </div>
            <!-- 猜你喜欢结束 -->
            <div class="VAS_270x250" id="OL_SYS_18720"></div>
        </div>
    </div>
    <!--RIGHT-->
</div>
<!--C-->
</div>
<!--BEAUTY C-->

<!--GLOBAL FOOTER START-->

<!--GLOBAL FOOTER START-->



<%@ include file="../../footer.jsp" %>



<a href="javascript:;" class="totop" id="totop"></a>

<!--统计代码-->
<script>  document.write('<scr'+'ipt src="http://ctj.onlylady.com/files/tj.php?type=1&id='+ol_artId+'&time='+Math.random()+'"></scr'+'ipt>');  </script>
<script>
    AdCleaner.clearAll();
</script>
<script src="Scripts/detail.js"></script>
<script src="Scripts/share.js"></script>
<script>
    (function (G,D,s,c,p) {
        c={//监测配置
            UA:"UA-onlylady-000001", //客户项目编号,由系统生成
            NO_FLS:0,
            WITH_REF:1,
            URL:'http://new-icon.ol-img.com/article/www/js/iwt-min.js'
        };
        G._iwt?G._iwt.track(c,p):(G._iwtTQ=G._iwtTQ || []).push([c,p]),!G._iwtLoading && lo();
        function lo(t) {
            G._iwtLoading=1;s=D.createElement("script");s.src=c.URL;
            t=D.getElementsByTagName("script");t=t[t.length-1];
            t.parentNode.insertBefore(s,t);
        }
    })(this,document);
</script>
<!--新增监测-->
<script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F007ae80d86020a12ea70e178ef98792a' type='text/javascript'%3E%3C/script%3E"));
</script>

<!--uv统计-->
<!-- uv统计 -->
<script type="text/javascript">
    document.write(unescape("%3Cscript src='http://new-img1.ol-img.com/static/js/statis-min.js?v=150602' type='text/javascript'%3E%3C/script%3E"));
</script>
<!--系统碎片 百度127-->
<script type="text/javascript">

    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");

    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F62c7796f6c1db9651c92243e9e2db129' type='text/javascript'%3E%3C/script%3E"));

</script>
<!--系统碎片 公共统计-->
<script type="text/javascript">

    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");

    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));

</script>

<script type="text/javascript">

    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");

    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fafdacfae1f48822d32e19c5d12aeaef0' type='text/javascript'%3E%3C/script%3E"));

</script>







<script src="static/user/article/news/js/baidu_js_push.js" type="text/javascript"></script>
<script>var pv_subcatid=12;</script>
<script language="javascript" src="Scripts/pv.js"></script>
<!--uv-->
<!-- uv统计 -->
<script type="text/javascript">
    document.write(unescape("%3Cscript src='http://new-img1.ol-img.com/static/js/statis-min.js?v=150602' type='text/javascript'%3E%3C/script%3E"));
</script>




</body>
</html>
