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
<html>
<head>
    <meta charset="UTF-8">
    <base href="<%=basePath%>">
    <title>Title</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <link href="static/user/talk/css/information.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="static/user/talk/css/demo.css">


    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>
    <script type="text/javascript" src="static/user/talk/js/zan.js"></script>


</head>
<body style="background-color: white">
<div  class='w1180 ad' id="OL_SYS_925_51"><!--大顶通OL_SYS_925_51-->
</div>
<!--logo 登录 注册-->
<div class='w1180 logoAndlogin'>
    <h1 class='logo'>
        <a href="">
            <img src='static/user/common/top/images/top.png' height='72' width='780' style='padding-left:200px' alt='iFashion' title='iFashion' />
        </a>
    </h1>
    <div class="login">
        <a href="" target="_self" rel="nofollow">登录</a> |
        <a href="" target="_self" rel="nofollow">注册</a>
    </div>
</div>
<!--/logo 登录 注册-->
<!--/nav 搜索-->
<div class='navSearch'>
    <div class="navBg"></div>
    <div class="w1180">
        <div class="nav1">
            <a href="" target="_blank" class="here">首页</a>
            <a href="" target="_blank">穿衣搭配</a>
            <a href="" target="_blank">社区精选</a>
            <a href="" target="_blank">资讯</a>
            <a href="" target="_blank">私人订制</a>
            <a href="javascript:void(0);" class="searchBt"></a>
        </div>
        <div class="navChilren">
            <ul>
                <li></li>
                <li></li>
                <li>
                    <a href="" target="_blank">社区</a>
                    <a href="" target="_blank">论坛</a>
                </li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>
    <div class='w1180 search'>
        <form id="searchPage" target="_blank" method="get" action="" accept-charset="utf8">
            <div class="mainsearch">
                <input  onkeyup="selBrand('searchpro','auto_brand')" type="text" class="main_input" id="searchpro" autocomplete="off" name="q" value="请输入品牌（拼音、英文、缩写）、产品名称或关键字" >
                <!--  新加1 -->
                <div class="c1_se_2_c" id="auto_brand" style="display: none;"></div>
                <!--  新加1 end -->
            </div>
            <!--  新加2 -->
            <input type="hidden" name="s" value="15679544665037353740"  >
            <input type="hidden" name="nsid" value="1" class="aritcleType" >
            <!--  新加2 end -->
            <input type="button" class="mainbtn" id="J_search_sub" value="">
            <input type="button" title='关闭搜索' class="closeSearchbtn" value="">
        </form>
        <div class='hotpro'>
            <a href="" title="资讯-夏纳电影节" target="_blank">资讯-夏纳电影节</a>
            <a href="" title="定制-裙子" target="_blank">定制-裙子</a>
            <a href="" title="定制-运动鞋" target="_blank">定制-运动鞋</a>
            <!-- 设计师 -->
            <a href="" title="设计师-房莹" target="_blank">设计师-房莹</a>
            <a href="" title="话题" target="_blank">话题-PVC</a>
        </div>
    </div>



</div>
<script type="text/javascript" src='../js/index_search.js'></script>
<!--nav搜索 end-->

<!--crazy start-->
<div id="crazynavdown"><!--首下拉‘大’扩展大图--->
    <div id="OL_SYS_938_51" class="w1180 s"></div>
    <div class="b"><!--首页下拉回收-->
        <div id="OL_SYS_943_51" class="b1"></div>
        <!--首下拉‘小’扩展大图-->
        <div id="OL_SYS_448_51" class="b2"></div>
    </div>
</div>
<!--crazy end-->











<div class="mn">
    <div class="pl bm" id="postlist">
        <table cellspacing="0" cellpadding="0">
            <tbody>
            <tr>
                <td class="pls ptm pbm pview">
                    <div class="hm">
                        <span class="xg1">查看:</span>
                        <span class="xi1">10523</span>
                        <span class="pipe">|</span>
                        <span class="xg1">回复:</span>
                        <span class="xi1">3</span>
                    </div>
                </td>
                <td class="plc ptm pbn ptit">

                    <div class="ts">
                        <a href="" rel="nofollow">话题</a>
                        <a id="thread_subject" href="">
                            <h1 style="display:inline;">裙子撑起了一片天！</h1></a>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>


        <table class="ad" cellspacing="0" cellpadding="0">
            <tbody>
            <tr>
                <td class="pls"></td>
                <td class="plc"></td>
            </tr>
            </tbody>
        </table>
        <div id="post_67423028">
            <table id="pid67423028" cellspacing="0" cellpadding="0" summary="pid67423028">
                <tbody>
                <tr>
                    <td class="pls" rowspan="2">
                        <a name="newpost"></a>
                        <div>
                            <div class="avatar" onmouseover="showauthor(this, 'userinfo67423028')">
                                <a href="" target="_blank">
                                    <img src="static/user/talk/image/01_avatar_middle.jpg">
                                </a>
                            </div>
                            <div class="pi">
                                <div class="authi">
                                    <a class="xw1" href="" target="_blank">AvaFoo</a>

                                    [<a href="" target="_blank" rel="nofollow">摩登初上</a>]
                                </div>
                            </div>
                        </div>
                        <p></p>
                        <ul class="xl xl2 o cl">

                            <li class="buddy">
                                <a title="加好友" class="xi2" id="a_friend_li_67423028" onclick="showWindow(this.id, this.href, 'get', 1, {'ctrlid':this.id,'pos':'00'});" href="" rel="nofollow">加好友</a>
                            </li>
                            <li class="pm2">
                                <a title="发消息" class="xi2" onclick="showWindow('sendpm', this.href);" href="" rel="nofollow">发消息</a>
                            </li>
                        </ul>
                    </td>
                    <td class="plc">
                        <div class="pi">
                            <div class="pti">

                                <div class="authi">
                                    <img class="authicn vm" id="authicon67423028" src="static/user/talk/image/information/online_member.gif">
                                    <em id="authorposton67423028">发表于 2018-5-23 22:09:35</em>
                                </div>



                            </div>
                        </div>
                        <div class="pct">
                            <style type="text/css">.pcb{margin-right:0}</style>
                            <div class="pcb">
                                <div class="t_fsz">
                                    <table cellspacing="0" cellpadding="0">
                                        <tbody>
                                        <tr>
                                            <td class="t_f" id="postmessage_67423028">
                                                <br>
                                                <p align="center">
                                                    <font style="color:rgb(102, 102, 102)">
                                                        <font face="Verdana, Arial, Helvetica, 宋体, sans-serif">夏天和裙子密不可分，半身的？连体的？我统统都要！</font>
                                                    </font></p>
                                                <p align="left">
                                                    <font style="color:rgb(102, 102, 102)">
                                                        <font face="Verdana, Arial, Helvetica, 宋体, sans-serif"><br>
                                                        </font></font></p>
                                                <p align="left">
                                                    <font style="color:rgb(102, 102, 102)">
                                                        <font face="Verdana, Arial, Helvetica, 宋体, sans-serif">
                                                        </font></font></p>
                                                <p align="left">
                                                    <strong>
                                                        <font style="color:rgb(63, 63, 63)">
                                                            <font face="宋体">
                                                                <font style="font-size:10.5pt">▎
                                                                </font></font></font>
                                                    </strong>
                                                    <strong>
                                                        <font style="color:rgb(63, 63, 63)">
                                                            <font face="Verdana">
                                                                <font style="font-size:10.5pt">LOOK1
                                                                </font></font></font></strong></p>
                                                <p align="left">
                                                    <font style="color:rgb(51, 51, 51)">
                                                        <font face="Arial">
                                                            <font style="font-size:10.5pt">
                                                                <font face="宋体">想要在
                                                                </font></font></font></font>
                                                    <font style="color:rgb(51, 51, 51)">
                                                        <font face="宋体">
                                                            <font style="font-size:10.5pt">
                                                                <font face="宋体">夏天的
                                                                </font></font></font></font>
                                                    <font style="color:rgb(51, 51, 51)">
                                                        <font face="Arial">
                                                            <font style="font-size:10.5pt">
                                                                <font face="宋体">人群中吸睛就必须耍点小心机
                                                                </font> 。</font></font></font>
                                                    <font style="color:rgb(51, 51, 51)">
                                                        <font face="Arial">
                                                            <font style="font-size:10.5pt">
                                                                <font face="宋体">内衣小露</font>+
                                                                <font face="宋体">一字领</font>
                                                                <font face="Arial">+
                                                                </font></font></font></font>
                                                    <font style="color:rgb(51, 51, 51)">
                                                        <font face="宋体">
                                                            <font style="font-size:10.5pt">
                                                                <font face="宋体">不规则破洞裙
                                                                </font>+</font></font></font>
                                                    <font style="color:rgb(51, 51, 51)">
                                                        <font face="Arial">
                                                            <font style="font-size:10.5pt">
                                                                <font face="宋体">纹身贴</font>+
                                                                <font face="宋体">绑带鞋</font>
                                                                <font face="Arial">=</font>
                                                                <font face="宋体">性感力</font>
                                                                <font face="Arial">Max</font>
                                                                <font face="宋体">！
                                                                </font></font></font></font></p>
                                                <p align="center">
                                                    <ignore_js_op>

                                                        <img width="550" class="zoom" id="aimg_3427767" src="static/user/talk/image/information/2215429i1div2nn94f9dtd.jpg" lazyloaded="true" initialized="true">

                                                    </ignore_js_op>
                                                </p>
                                                <div class="tip tip_4 aimg_tip" id="aimg_3427767_menu" style="left: 381px; top: 605.98px; display: none; position: absolute; z-index: 301;" initialized="true">
                                                    <div class="tip_horn"></div>
                                                </div>

                                                <p></p><br/>
                                                <p align="center">
                                                    <ignore_js_op>

                                                        <img width="550" class="zoom" id="aimg_3427770" src="static/user/talk/image/information/221557p108yrvp0ejzopoo.jpg" lazyloaded="true" initialized="true">

                                                    </ignore_js_op>
                                                </p>
                                                <div class="tip tip_4 aimg_tip" id="aimg_3427770_menu" style="left: 381px; top: 993.41px; display: none; position: absolute; z-index: 301" initialized="true">
                                                    <div class="tip_c xs0">
                                                    </div>
                                                    <div class="tip_horn"></div>
                                                </div>

                                                <p></p><br/>
                                                <br/>

                                                <p align="center">
                                                    <font style="color:rgb(102, 102, 102)">
                                                        <font face="Verdana, Arial, Helvetica, 宋体, sans-serif">
                                                            <font face="宋体">玩到嗨处，穿</font>OR
                                                            <font face="宋体">脱，这是个问题
                                                            </font>。</font></font></p>
                                                <p align="center">
                                                    <ignore_js_op>

                                                        <img width="550" class="zoom" id="aimg_3427778" src="static/user/talk/image/information/222003f62f7ba6injhnz2j.jpg" lazyloaded="true">

                                                    </ignore_js_op>
                                                </p>
                                                <div class="tip tip_4 aimg_tip" id="aimg_3427778_menu" style="position: absolute; display: none">
                                                    <div class="tip_c xs0">
                                                    </div>
                                                    <div class="tip_horn"></div>
                                                </div>

                                                <p></p>
                                                <p align="center">
                                                    <ignore_js_op>

                                                        <img width="550" class="zoom" id="aimg_3427777" src="static/user/talk/image/information/2220055o7zss7ra28ms7zs.jpg" lazyloaded="true">

                                                    </ignore_js_op>
                                                </p>

                                                <p></p><br>
                                                <p align="center">
                                                    <ignore_js_op>

                                                        <img width="550" class="zoom" id="aimg_3427779" src="static/user/talk/image/information/222004hl1li128ne1dim3o.jpg"  lazyloaded="true">

                                                    </ignore_js_op>
                                                </p>

                                                <p></p><br/>

                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="cm" id="comment_67423028"></div>
                                <div id="post_rate_div_67423028"></div>
                            </div>
                        </div>

                        <div class="ptg mbm">
                            <a title="高跟鞋" href="" target="_blank">高跟鞋</a>,
                            <a title="半身裙" href="" target="_blank">半身裙</a>,
                            <a title="牛仔裙" href="" target="_blank">牛仔裙</a>,
                            <a title="一字领" href="" target="_blank">一字领</a>,
                            <a title="内衣" href="" target="_blank">内衣</a>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="plc plm">
                        <div class="a_pb" id="OL_SYS_876"></div><!--newomd end-->
                    </td>
                </tr>
                <tr>
                    <td class="pls"></td>
                    <td class="plc">
                        <div class="po">
                            <div class="pob cl">
                                <em></em>
                                <p>
                                    <a class="showmenu" id="mgc_post_67423028" style="display: none;" onmouseover="showMenu(this.id)" href="javascript:;"></a>
                                    <a  href="">举报</a>
                                </p>

                                <ul class="p_pop mgcmn" id="mgc_post_67423028_menu" style="display: none;">
                                </ul>
                                <script type="text/javascript" reload="1">checkmgcmn('post_67423028')</script>
                            </div>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td class="pls"></td>
                    <td class="plc" style="padding-bottom:10px">
                        <div class="po" style="padding-top:5px">
                            <!--new start custom_15-->
                            <div>
                                <ul>
                                    <li style="width:180px;float:left; padding-left:20px; height:23px;line-height:23px; overflow:hidden; font-size:12px;">
                                        <div id="OL_SYS_19"></div>
                                    </li>
                                    <li style="width:180px;float:left; padding-left:20px; height:23px;line-height:23px; overflow:hidden; font-size:12px;">
                                        <div id="OL_SYS_29"></div>
                                    </li>
                                    <li style="width:180px;float:left; padding-left:20px; height:23px;line-height:23px; overflow:hidden; font-size:12px;">
                                        <div id="OL_SYS_49"></div>
                                    </li>
                                    <li style="width:180px;float:left; padding-left:20px; height:23px;line-height:23px; overflow:hidden; font-size:12px;">
                                        <div id="OL_SYS_54"></div>
                                    </li>
                                </ul>
                            </div>
                            <!--new end-->
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div id="post_68950281">
            <table id="pid68950281" cellspacing="0" cellpadding="0" summary="pid68950281">
                <tbody>
                <tr>
                    <td class="pls" rowspan="2">
                        <div>
                            <div class="avatar">
                                <a href="" target="_blank">
                                    <img src="static/user/talk/image/noavatar_middle.gif.jpg"></a>
                            </div>
                            <div class="pi">
                                <div class="authi">
                                    <a class="xw1" href="" target="_blank">刘刘的溜溜球
                                    </a>

                                    [<a target="_blank" rel="nofollow">奥特兄弟</a>]
                                </div>
                            </div>
                        </div>
                        <ul class="xl xl2 o cl">
                            <li class="buddy">
                                <a title="加好友" class="xi2" id="a_friend_li_68950281" href="" rel="nofollow">加好友</a>
                            </li>
                            <li class="pm2">
                                <a title="发消息" class="xi2" href="" rel="nofollow">发消息</a>
                            </li>
                        </ul>
                    </td>
                    <td class="plc">
                        <div class="pi">
                            <strong>
                                <a id="postnum68950281" href="" rel="nofollow">沙发</a>
                            </strong>
                            <div class="pti">
                                <div class="pdbt">
                                </div>
                                <div class="authi">
                                    <img class="authicn vm" id="authicon68950281" src="static/user/talk/image/information/online_member.gif">
                                    <em id="authorposton68950281">发表于 2018-6-2 15:16:53</em>
                                    <div class="praise">
                                        <span id="praise"><img src="static/user/talk/image/zan1.png" id="praise-img" /></span>
                                        <span id="praise-txt">1455</span>
                                    </div>

                                </div>




                            </div>
                        </div>
                        <div class="pct">
                            <div class="pcb">
                                <div class="t_fsz">
                                    <table cellspacing="0" cellpadding="0">
                                        <tbody>
                                        <tr>
                                            <td class="t_f" id="postmessage_68950281">
                                                最喜欢第四种打扮
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="cm" id="comment_68950281">
                                </div>
                                <div id="post_rate_div_68950281"></div>
                            </div>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td class="plc plm">
                        <!--newomd start ad/thread/a_pb/1/1-->
                        <div class="a_pb" id="OL_SYS_876"></div><!--newomd end-->
                    </td>
                </tr>
                <tr>
                    <td class="pls"></td>
                    <td class="plc">
                        <div class="po">
                            <div class="pob cl">
                                <em>
                                </em>

                                <p>
                                    <a  href="">举报</a>
                                </p>

                                <ul class="p_pop mgcmn" id="mgc_post_68950281_menu" style="display: none;">
                                </ul>
                                <script type="text/javascript" reload="1">checkmgcmn('post_68950281')</script>
                            </div>
                        </div>

                    </td>
                </tr>
                <tr class="ad">
                    <td class="plc" colspan="2">
                    </td>
                </tr>
                </tbody></table>
        </div>
        <div id="post_72607611">
            <table id="pid72607611" cellspacing="0" cellpadding="0" summary="pid72607611">
                <tbody>
                <tr>
                    <td class="pls" rowspan="2">
                        <div>
                            <div class="avatar">
                                <a href="" target="_blank">
                                    <img src="static/user/talk/image/99_avatar_middle.jpg"></a></div>
                            <div class="pi">
                                <div class="authi">
                                    <a class="xw1" href="" target="_blank">无敌青春美少女</a>

                                    [<a href="" target="_blank" rel="nofollow">街头潮人</a>]</div>
                            </div>
                        </div>
                        <ul class="xl xl2 o cl">
                            <li class="buddy">
                                <a title="加好友" class="xi2" id="a_friend_li_72607611" href="" rel="nofollow">加好友</a>
                            </li>
                            <li class="pm2">
                                <a title="发消息" class="xi2" href="" rel="nofollow">发消息</a>
                            </li>
                        </ul>
                    </td>
                    <td class="plc">
                        <div class="pi">
                            <strong>
                                <a href="" rel="nofollow">板凳</a>
                            </strong>
                            <div class="pti">
                                <div class="pdbt">
                                </div>
                                <div class="authi">
                                    <img class="authicn vm" id="authicon72607611" src="static/user/talk/image/information/online_member.gif">
                                    <em id="authorposton72607611">发表于 2018-6-21 17:08:25</em>
                                    <div class="praise">
                                        <span id="praise"><img src="static/user/talk/image/zan1.png" id="praise-img" /></span>
                                        <span id="praise-txt">1455</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pct"><div class="pcb">
                            <div class="t_fsz">
                                <table cellspacing="0" cellpadding="0"><tbody><tr><td class="t_f" id="postmessage_72607611">
                                    感觉大开眼界。博主的气质不是一般人啊</td></tr></tbody></table>
                            </div>
                            <div class="cm" id="comment_72607611">
                            </div>
                            <div id="post_rate_div_72607611"></div>
                        </div>
                        </div>

                    </td>
                </tr>
                <tr><td class="plc plm">
                    <!--newomd start ad/thread/a_pb/1/2-->
                    <div class="a_pb" id="OL_SYS_876"></div><!--newomd end-->
                </td>
                </tr>
                <tr>
                    <td class="pls"></td>
                    <td class="plc">
                        <div class="po">
                            <div class="pob cl">
                                <em>
                                </em>

                                <p>
                                    <a href="">举报</a>
                                </p>

                                <ul class="p_pop mgcmn" id="mgc_post_72607611_menu" style="display: none;">
                                </ul>
                                <script type="text/javascript" reload="1">checkmgcmn('post_72607611')</script>
                            </div>
                        </div>

                    </td>
                </tr>
                <tr class="ad">
                    <td class="plc" colspan="2">
                    </td>
                </tr>
                </tbody></table>
        </div>
        <div class="pl" id="postlistreply">
            <div class="viewthread_table" id="post_new" style="display: none">

            </div>
        </div>
    </div>

    <div class="pl bm bmw" id="f_pst">
        <form id="fastpostform" onsubmit="return fastpostvalidate(this)" action="forum.php?mod=post&amp;action=reply&amp;fid=4&amp;tid=4024110&amp;extra=page%3D1&amp;replysubmit=yes&amp;infloat=yes&amp;handlekey=fastpost" method="post" autocomplete="off">
            <table cellspacing="0" cellpadding="0">
                <tbody><tr>
                    <td class="pls">
                    </td>
                    <td class="plc">

                        <span id="fastpostreturn"></span>


                        <div class="cl">
                            <div class="y" id="fastsmiliesdiv"><div id="fastsmiliesdiv_data"><div id="fastsmilies"></div></div></div><div class="hasfsl" id="fastposteditor">
                            <div class="tedt mtn">
                                <div class="bar">
<span class="y">
<a onclick="return switchAdvanceMode(this.href)" href="forum.php?mod=post&amp;action=reply&amp;fid=4&amp;tid=4024110" rel="nofollow">高级模式</a>
</span><script src="../js/seditor.js?B1E" type="text/javascript"></script>
                                    <div class="fpd">
                                        <a title="文字加粗" class="fbld" href="javascript:;">B</a>
                                        <a title="设置文字颜色" class="fclr" id="fastpostforecolor" href="javascript:;">Color</a>
                                        <a title="图片" class="fmg" id="fastpostimg" href="javascript:;">Image</a>
                                        <a class="fsml" id="fastpostsml" href="javascript:;">Smilies</a>
                                    </div></div>
                                <div class="area">
                                    <div class="pt hm">您需要登录后才可以回帖 <a class="xi2" onclick="showWindow('login', this.href)" href="http://bbs.onlylady.com/member.php?mod=logging&amp;action=login">登录</a> | <a class="xi2" href="http://bbs.onlylady.com/member.php?mod=register">立即注册</a>
                                    </div>
                                </div>
                                <script>
                                    function is_user_apply_activity(special){
                                        if(special!=4) return true;
                                        var applied = document.getElementById('applied').value;
                                        var activityclose = document.getElementById('activityclose').value;
                                        if(applied!=0 || activityclose!=0){
                                            return true;
                                        } else {
                                            href = location.href;
                                            hrefArr = href.split('#');
                                            url = hrefArr['0']+'#user_apply_activity';
                                            showDialog('您还没参加活动,请参加后再回复~', "notice", "", 'location.href="'+url+'"');
                                        }
                                    }
                                </script>
                            </div>
                        </div>
                        </div>

                        <input name="formhash" type="hidden" value="4c4b6739">
                        <input name="subject" type="hidden" value="">
                        <p class="ptm pnpost">
                            <button name="replysubmit" tabindex="5" class="pn pnc vm" id="fastpostsubmit" onclick="showWindow('login', 'member.php?mod=logging&amp;action=login&amp;guestmessage=yes')" type="button" value="replysubmit"><strong>发表回复</strong></button>
                            <script type="text/javascript">if(getcookie('fastpostrefresh') == 1) {$('fastpostrefresh').checked=true;}</script>
                        </p>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>


</div>


<div class="sd">
    <div class="area" id="diyforumdisplayright">
        <div class=" frame move-span cl frame-1" id="framek1G8GP">
            <div class="column frame-1-c" id="framek1G8GP_left">
                <div class="move-span temp" id="framek1G8GP_left_temp">
                </div>
                <div class="sd_weekreply block move-span" id="portal_block_178">
                    <div class="blocktitle title">
                        <span class="titletext">一周回复最多帖</span>
                    </div>
                    <div class="dxb_bc" id="portal_block_178_content">
                        <div class="module cl xl xl1">
                            <ul>
                                <li>
                                    <a title="想要在夏天的人群中吸睛就必须耍点小心机" href="" target="_blank">想要在夏天的人群中吸睛就必须耍点小心机</a>
                                </li>
                                <li>
                                    <a title="牛仔裙立马Rock起来！再加上街头感十足的气垫造型运动鞋" href="" target="_blank">牛仔裙立马Rock起来！再加上街头感十足的气垫造型运动凉鞋</a>
                                </li>
                                <li>
                                    <a title="在夏天,墨镜不一定要带脸上，衬衫不一定要好好穿，牛仔裙更不一定要穿常规款！" href="" target="_blank">在夏天,墨镜不一定要带脸上，衬衫不一定要好好穿，牛仔裙更不一定要穿常规款！</a>
                                </li>
                                <li>
                                    <a title="露肩连衣裙，爱臭美的懒癌星人只吃不减也不怕！" href="" target="_blank">露肩连衣裙，爱臭美的懒癌星人只吃不减也不怕！</a>
                                </li>
                                <li>
                                    <a title="蕾丝连衣裙外搭牛仔外套，踏着青草香，开启森林漫步模式" href="" target="_blank">蕾丝连衣裙外搭牛仔外套，踏着青草香，开启森林漫步模式</a>
                                </li>
                                <li>
                                    <a title="黑白色的连衣裙，好像是永远都穿不腻的命题" href="" target="_blank">黑白色的连衣裙，好像是永远都穿不腻的命题</a>
                                </li>
                                <li>
                                    <a title="凹字型的设计就是正面裙摆处被裁出一块凹字缺口！" href="" target="_blank">凹字型的设计就是正面裙摆处被裁出一块凹字缺口</a>
                                </li>
                                <li>
                                    <a title="小葡萄试衣间牛仔裙和白色睡裙居然也能搭里面的睡裙比较长" href="" target="_blank">小葡萄试衣间牛仔裙和白色睡裙居然也能搭里面的睡裙比较长</a>
                                </li>
                                <li>
                                    <a title="爱的露肩款的裙子" href="" target="_blank">爱的露肩款的裙子</a>
                                </li>
                                <li>
                                    <a title="这个夏天，把牛仔裙穿好就这么简单" href="" target="_blank">这个夏天，把牛仔裙穿好就这么简单</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="sd_newhotthread block move-span" id="portal_block_179">
                    <div class="blocktitle title">
                        <span class="titletext">最新热门帖</span>
                    </div>
                    <div class="dxb_bc" id="portal_block_179_content">
                        <div class="module cl xl xl1">
                            <ul>
                                <li>
                                    <a title="夏天必备的牛仔裙只要这么穿就一定时髦" href="" target="_blank">夏天必备的牛仔裙只要这么穿就一定时髦</a>
                                </li>
                                <li>
                                    <a title="破洞牛仔是王道" href="" target="_blank">破洞牛仔是王道</a>
                                </li>
                                <li>
                                    <a title="一条牛仔裙的千百种姿态" href="" target="_blank">一条牛仔裙的千百种姿态</a>
                                </li>
                                <li>
                                    <a title="这个夏日，你需要一条这样的拼接牛仔裙" href="" target="_blank">这个夏日，你需要一条这样的拼接牛仔裙</a>
                                </li>
                                <li>
                                    <a title="半裙可以说是夏天最能遮肉的裙子了" href="" target="_blank">半裙可以说是夏天最能遮肉的裙子了</a>
                                </li>
                                <li>
                                    <a title="永不过时牛仔裙今夏再登场" href="" target="_blank">永不过时牛仔裙今夏再登场</a>
                                </li>
                                <li>
                                    <a title="A字短裙在手，魅力不怕没有" href="" target="_blank">A字短裙在手，魅力不怕没有</a>
                                </li>
                                <li>
                                    <a title="纯白色的夏天清爽变时髦" href="" target="_blank">纯白色的夏天清爽变时髦</a>
                                </li>
                                <li>
                                    <a title="裤子靠边站，裙子才是这个季节的主角啊" href="" target="_blank">裤子靠边站，裙子才是这个季节的主角啊</a>
                                </li>
                                <li>
                                    <a title="衬衫与裙子是命中注定的相爱" href="" target="_blank">衬衫与裙子是命中注定的相爱</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--[/diy]-->
    <div class="img207x180 mt6">
        <!--newomd start custom_14-->
        <div><div id="OL_SYS_861"></div></div>
        <!--newomd end-->
    </div>
    <div class="area" id="diyforumdisplayrightjh">
        <div class=" frame move-span cl frame-1" id="framecB776k">
            <div class="column frame-1-c" id="framecB776k_left">
                <div class="move-span temp" id="framecB776k_left_temp">
                </div>
                <div class="sd_jinghuatie block move-span" id="portal_block_180">
                    <div class="blocktitle title">
                        <span class="titletext">最新精华帖</span></div>
                    <div class="dxb_bc" id="portal_block_180_content">
                        <div class="module cl xl xl1">
                            <ul>
                                <li>
                                    <a title="女人在你的年龄 穿你的裙子" href="" target="_blank">女人在你的年龄 穿你的裙子</a>
                                </li>
                                <li>
                                    <a title="换一件衣服，牛仔裙立马Rock起来！再加上街头感十足的气垫造型运动凉鞋" href="" target="_blank">换一件衣服，牛仔裙立马Rock起来！再加上街头感十足的气垫造型运动凉鞋</a>
                                </li>
                                <li>
                                    <a title="在夏天,墨镜不一定要带脸上，衬衫不一定要好好穿，牛仔裙更不一定要穿常规款！" href="" target="_blank">在夏天,墨镜不一定要带脸上，衬衫不一定要好好穿，牛仔裙更不一定要穿常规款！</a>
                                </li>
                                <li>
                                    <a title="露肩连衣裙，爱臭美的懒癌星人只吃不减也不怕！" href="" target="_blank">露肩连衣裙，爱臭美的懒癌星人只吃不减也不怕！</a>
                                </li>
                                <li>
                                    <a title="蕾丝连衣裙外搭牛仔外套，踏着青草香，开启森林漫步模式。" href="" target="_blank">蕾丝连衣裙外搭牛仔外套，踏着青草香，开启森林漫步模式。</a>
                                </li>
                                <li>
                                    <a title="黑白色的连衣裙，好像是永远都穿不腻的命题" href="" target="_blank">黑白色的连衣裙，好像是永远都穿不腻的命题</a>
                                </li>
                                <li>
                                    <a title="小葡萄试衣间牛仔裙和白色睡裙居然也能搭里面的睡裙比较长" href="" target="_blank">小葡萄试衣间牛仔裙和白色睡裙居然也能搭里面的睡裙比较长</a>
                                </li>
                                <li>
                                    <a title="多肉，露肩款是最遮肉的。这样的长裙穿着逛街，约会都适合，搭配浅色的包包" href="" target="_blank">多肉，露肩款是最遮肉的。这样的长裙穿着逛街，约会都适合，搭配浅色的包包</a>
                                </li>
                                <li>
                                    <a title="韩国时尚界的弄潮儿，IMVELY这个网红不简单" href="" target="_blank">韩国时尚界的弄潮儿，IMVELY这个网红不简单</a>
                                </li>
                                <li>
                                    <a title="想要在夏天的人群中吸睛就必须耍点小心机" href="" target="_blank">想要在夏天的人群中吸睛就必须耍点小心机</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--[/diy]-->
    <div class="img207x180 mt6">
        <!--newomd start custom_13}-->
        <div><div id="OL_SYS_881"></div></div>
        <!--newomd end}-->
    </div>
    <div class="area" id="diyforumdisplayright2">
        <div class="sd_redianguancha block move-span">
            <div class="blocktitle title"><span class="titletext">热点观察</span></div>
            <div class="module cl xl xl1">
                <ul>
                    <li>
                        <a title="飘逸纱裙" href="" target="_blank">飘逸纱裙</a>
                    </li>
                    <li>
                        <a title="仙女裙" href="" target="_blank">仙女裙</a>
                    </li>
                    <li>
                        <a title="削肩设计" href="" target="_blank">削肩设计</a>
                    </li>
                    <li>
                        <a title="勒脖裙" href="" target="_blank">勒脖裙</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="footer" style="clear:both;position:relative;top:50px; height:450px">
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

