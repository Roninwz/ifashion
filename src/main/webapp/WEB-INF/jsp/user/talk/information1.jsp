<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/6
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@ include file="../header.jsp" %>--%>
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
    <style type="text/css">
        #low_right
        {
            position: fixed;
            width: 85px;
            height: 130px;
            background: #eee;
            bottom: 50%;
            right: 20px;
            text-align: center;
        }
        .follow {
            margin: 1px auto 0 auto;
            background-color: #ffa861;
            width: 62px;
            height: 20px;
            color: white;
            font-family: 'Microsoft YaHei','Lantinghei SC','Open Sans',Arial,'Hiragino Sans GB','STHeiti','WenQuanYi Micro Hei','SimSun',sans-serif;
            text-align: center;
            font-size: 12px;
            line-height: 12px;
            padding-top: 4px;
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
        .follow:hover {
            background-color: #ffa861;
            cursor: pointer; }
    </style>

    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="static/user/talk/js/index.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>
    <script type="text/javascript" src="static/user/talk/js/zan.js"></script>
    <script type="text/javascript" src="static/ueditor/ueditor.config.js" charset="UTF-8"></script>
    <script type="text/javascript" src="static/ueditor/ueditor.all.js" charset="UTF-8"></script>
    <script type="text/javascript" src="static/ueditor/lang/zh-cn/zh-cn.js"></script>



</head>
<body style="background-color: white">
<c:set var="user" value="${sessionScope.user}"/>
<input id="current_user_id" value="${user.username}" type="hidden">
<%@ include file="../header.jsp" %>
<div class="mn">
    <div class="pl bm" id="postlist">
        <table cellspacing="0" cellpadding="0">
            <tbody>
            <tr>
                <td class="pls ptm pbm pview">
                    <div class="hm">
                        <span class="xg1">查看:</span>
                        <span class="xi1">${lookNum}</span>
                        <span class="pipe">|</span>
                        <span class="xg1">回复:</span>
                        <span class="xi1">${drcount}</span>
                    </div>
                </td>
                <td class="plc ptm pbn ptit">

                    <div class="ts">
                        <a href="" rel="nofollow">话题</a>
                        <a id="thread_subject" href="">
                            <h1 style="display:inline;">${topic.topicTitle}</h1></a>
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
                            <div class="avatar">
                                <a href="" target="_blank">
                                    <img width="132px" height="135px" src="${u.userImgurl}">
                                </a>
                            </div>
                            <div class="pi">
                                <div class="authi">
                                    <a class="xw1" href="" target="_blank">${u.username}</a>

                                    [<a href="" target="_blank" rel="nofollow">${rank.rankName}</a>]
                                </div>
                            </div>
                        </div>
                        <p></p>
                        <ul class="xl xl2 o cl">

                            <li class="buddy">
                                <a title="加好友" class="xi2" id="a_friend_li_67423028" href="" rel="nofollow">加好友</a>
                            </li>
                            <%--<div class="follow">--%>
                                <%--<div class="icon-twitter"></div>--%>
                                <%--粉我--%>
                            <%--</div>--%>
                            <li class="pm2">
                                <div id="guanzhu" class="follow">
                                    <div class="icon-twitter"></div>
                                    粉我
                                </div>
                                <input id="userdId" value="${discuss.userId}" hidden>

                                <c:if test="${not empty userAttention}">
                                    <script>
                                        $('#guanzhu').css('background-color','#e80084');
                                        $('#guanzhu').html('<div class="icon-ok"></div>已转粉');
                                        $('#guanzhu').attr("rel","already");
                                    </script>
                                </c:if>
                                <c:if test="${empty userAttention}">
                                    <script>
                                        $('#guanzhu').css('background-color','#ffa861');
                                        $('#guanzhu').html('<div class="icon-ok"></div> 粉我');
                                        $('#guanzhu').attr("rel","none");
                                    </script>
                                </c:if>
                                <script>
                                    $(document).ready(
                                        function iniciar(){
                                            $('#guanzhu').on("click", function(){
                                                var userid = $("#current_user_id").val();
                                                var userdId = $("#userdId").val();
                                                var D=$('#guanzhu').attr("rel");
                                                var datas = {"userdId":userdId,
                                                    "userid":userid  };
                                                if(D== 'none'){
                                                    $.ajax({
                                                        type: 'POST',
                                                        url: '${pageContext.request.contextPath}/user/ajaxaddAttention.action',
                                                        dataType: 'json', //表示返回值的数据类型
                                                        contentType: 'application/json;charset=UTF-8', //内容类型
                                                        traditional: true, //使json格式的字符串不会被转码
                                                        data: JSON.stringify(datas),
                                                        success: function(data) {
                                                            alert("关注成功");
                                                        },
                                                        error: function(data) {
                                                            alert("失败");
                                                        },
                                                    });
                                                    $('#guanzhu').css('background-color','#e80084');
                                                    $('#guanzhu').html('<div class="icon-ok"></div> 已转粉');
                                                    $('#guanzhu').attr("rel","already");
                                                }
                                                else{

                                                    $.ajax({
                                                        type: 'POST',
                                                        url: '${pageContext.request.contextPath}/user/matchInfo/ajaxcancelAttention.action',
                                                        dataType: 'json', //表示返回值的数据类型
                                                        contentType: 'application/json;charset=UTF-8', //内容类型
                                                        traditional: true, //使json格式的字符串不会被转码
                                                        data: JSON.stringify(datas),
                                                        success: function(data) {
                                                            alert("取消关注成功");
                                                            $('#guanzhu').css('background-color','#ffa861');
                                                            $('#guanzhu').html('<div class="icon-ok"></div> 粉我');
                                                            $('#guanzhu').attr("rel","none");
                                                        },
                                                        error: function(data) {
                                                            alert("取消关注失败");
                                                        },
                                                    });


                                                }

                                            });
                                        }
                                    );
                                </script>

                            </li>
                        </ul>
                    </td>

                    <%--文章内容--%>
                    <td class="plc">
                        <div class="pi">
                            <div class="pti">

                                <div class="authi">
                                    <img style="margin-top: 10px" class="authicn vm" id="authicon67423028" src="static/user/talk/image/information/online_member.gif">
                                    <em style="margin-top: 20px" id="authorposton67423028">发表于 2018-5-23 22:09:35</em>
                                    <div class="bdsharebuttonbox" style="margin-left: 400px;margin-top: -30px">
                                        <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
                                        <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
                                        <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
                                        <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
                                    </div>
                                    <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"32"},"share":{},"image":{"viewList":["weixin","tsina","qzone","tqq"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["weixin","tsina","qzone","tqq"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
                                    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
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



                            </div>
                        </div>
                        <div class="pct">
                            <div class="pcb">
                                <div class="t_fsz">
                                    <table cellspacing="0" cellpadding="0">
                                        <tbody>
                                        <tr>
                                            <td class="t_f" id="postmessage_67423028">
                                                <br>
                                                <p align="center">
                                                    <font style="color:rgb(102, 102, 102)">
                                                        <font face="Verdana, Arial, Helvetica, 宋体, sans-serif">${discuss.discussTitle}</font>
                                                    </font></p>
                                                <p></p><br>

                                                ${discuss.discussContent}


                                                <p></p><br>

                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>

                        <%--<div class="ptg mbm">--%>
                            <%--<a title="高跟鞋" href="" target="_blank">高跟鞋</a>,--%>
                            <%--<a title="半身裙" href="" target="_blank">半身裙</a>,--%>
                            <%--<a title="牛仔裙" href="" target="_blank">牛仔裙</a>,--%>
                            <%--<a title="一字领" href="" target="_blank">一字领</a>,--%>
                            <%--<a title="内衣" href="" target="_blank">内衣</a>--%>
                        <%--</div>--%>
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


        <c:forEach var="discussReplyUsers" items="${discussReplyUsers}" varStatus="status">
        <div id="post_68950281">
            <table id="pid68950281" cellspacing="0" cellpadding="0" summary="pid68950281">
                <tbody>
                <tr>
                    <td class="pls" rowspan="2">
                        <div>
                            <div class="avatar">
                                <a href="" target="_blank">
                                    <img src="${discussReplyUsers.userImgurl}" width="132" height="135"></a>
                            </div>
                            <div class="pi">
                                <div class="authi">
                                    <a class="xw1" href="" target="_blank">${discussReplyUsers.username}
                                    </a>

                                    [<a target="_blank" rel="nofollow">${discussReplyUsers.rankName}</a>]
                                </div>
                            </div>
                        </div>
                        <ul class="xl xl2 o cl">
                            <li class="buddy">
                                <a title="加好友" class="xi2" id="a_friend_li_68950281" href="" rel="nofollow">加好友</a>
                            </li>
                            <li class="pm2">
                                <div id="guanzhu${status.count}" class="follow">
                                    <div class="icon-twitter"></div>
                                    粉我
                                </div>
                                <input id="userdId${status.count}" value="${discussReplyUsers.userId}" hidden>

                                <c:if test="${not empty userAttention}">
                                    <script>
                                        $('#guanzhu'+'${status.count}').css('background-color','#e80084');
                                        $('#guanzhu'+'${status.count}').html('<div class="icon-ok"></div>已转粉');
                                        $('#guanzhu'+'${status.count}').attr("rel","already");
                                    </script>
                                </c:if>
                                <c:if test="${empty userAttention}">
                                    <script>
                                        $('#guanzhu'+'${status.count}').css('background-color','#ffa861');
                                        $('#guanzhu'+'${status.count}').html('<div class="icon-ok"></div> 粉我');
                                    </script>
                                </c:if>
                                <script>
                                    $(document).ready(
                                        function iniciar(){
                                            $('#guanzhu'+${status.count}).on("click", function(){
                                                var userid = $("#current_user_id").val();
                                                var userdId = $(this).next().val();
                                                var D=$('#guanzhu'+${status.count}).attr("rel");
                                                var datas = {"userdId":userdId,
                                                    "userid":userid  };
                                                if(D=== 'none'){
                                                    $.ajax({
                                                        type: 'POST',
                                                        url: '${pageContext.request.contextPath}/user/matchInfo/ajaxaddAttention.action',
                                                        dataType: 'json', //表示返回值的数据类型
                                                        contentType: 'application/json;charset=UTF-8', //内容类型
                                                        traditional: true, //使json格式的字符串不会被转码
                                                        data: JSON.stringify(datas),
                                                        success: function(data) {
                                                            alert("关注成功");
                                                        },
                                                        error: function(data) {
                                                            alert("失败");
                                                        },
                                                    });
                                                    $('#guanzhu'+${status.count}).css('background-color','#e80084');
                                                    $('#guanzhu'+${status.count}).html('<div class="icon-ok"></div> 已转粉');
                                                    $('#guanzhu'+${status.count}).attr("rel","already");
                                                }
                                                else{

                                                    $.ajax({
                                                        type: 'POST',
                                                        url: '${pageContext.request.contextPath}/user/matchInfo/ajaxcancelAttention.action',
                                                        dataType: 'json', //表示返回值的数据类型
                                                        contentType: 'application/json;charset=UTF-8', //内容类型
                                                        traditional: true, //使json格式的字符串不会被转码
                                                        data: JSON.stringify(datas),
                                                        success: function(data) {
                                                            alert("取消关注成功");
                                                            $('#guanzhu'+${status.count}).css('background-color','#ffa861');
                                                            $('#guanzhu'+${status.count}).html('<div class="icon-ok"></div> 关注');
                                                            $('#guanzhu'+${status.count}).attr("rel","none");
                                                        },
                                                        error: function(data) {
                                                            alert("取消关注失败");
                                                        },
                                                    });


                                                }

                                            });
                                        }
                                    );
                                </script>
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
                                    <em id="authorposton68950281">发表于 <fmt:formatDate value="${discussReplyUsers.discussreplyDate}" pattern="yyyy-MM-dd hh:mm:ss"></fmt:formatDate></em>
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
                                                ${discussReplyUsers.discussreplyContent}
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
        </c:forEach>
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
                                <div id="guanzhu" class="follow">
                                    <div class="icon-twitter"></div>
                                    粉我
                                </div>
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
        <div id="fastpostform">
            <table cellspacing="0" cellpadding="0">
                <tbody><tr>
                    <td class="pls">
                    </td>
                    <td class="plc">
                            <c:if test="${empty user}">
                                <script id="container" name="content" type="text/plain" >
                                   您还没有登录，请先 登录|注册
                                </script>
                            </c:if>
                            <c:if test="${not empty user}">
                                <input name="userId" id="userId" type="hidden" value="${user.userId}">
                                <input name="discussId" id="discussId" type="hidden" value="${discussId}">
                            <script id="container" name="content" type="text/plain">

                            </script>
                            </c:if>
                            <button type="submit" style="margin-top: 10px;float: right;width: 60px;height: 40px;font-size: 14px;color: #fff;line-height: 40px;text-align: center;cursor: pointer;background-color: #F93;" onclick="cc(this);">提交</button>
                        <script>
                            var ue= UE.getEditor("container",{
                                initialFrameWidth : '100%',//宽度
                                initialFrameHeight: 100,//高度
                                toolbars: [[
                                    'undo', 'redo', 'bold', 'italic', 'underline', 'formatmatch', 'autotypeset', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall']
                                ]});

                            var ue1 = UE.getContent();
                            //对编辑器的操作最好在编辑器ready之后再做
                            ue1.ready(function() {
                                //设置编辑器的内容
                                //ue1.setContent('hello');
                                //获取html内容，返回: <p>hello</p>
                                var html = ue1.getContent();
                                //获取纯文本内容，返回: hello
                                var txt = ue1.getContentTxt();
                            });
                            //    alert(ue);

                            function cc(obj) {
                                var userId=$(obj).parent().children().siblings("#userId");
                                var discussId=$(obj).parent().children().siblings("#discussId").val();
                                var date=new Date().toLocaleString( );
                                var datas={"discussreplyContent":ue.getContent(),"discussId":discussId};

                                $.ajax({
                                    url: '${pageContext.request.contextPath }/user/addInfoReply.action',
                                    type: 'POST',
                                    dataType: 'json', //表示返回值的数据类型
                                    contentType: 'application/json;charset=UTF-8', //内容类型
                                    traditional: true, //使json格式的字符串不会被转码
                                    data: JSON.stringify(datas),
                                    success: function(data) {
                                        var discussreply="<div id='post_72607611'>";
                                        discussreply="<table id='pid72607611' cellspacing='0' cellpadding='0' summary='pid72607611'>"
                                                +"<tbody><tr><td class='pls' rowspan='2'><div><div class='avatar'><a href='' target='_blank'>"
                                                +"<img style='height:135; width: 132 ' src='"+data.userImgurl+"'></a></div>"
                                                +"<div class='pi'><div class='authi'><a class='xw1' href='' target='_blank'>"
                                                +data.username+"</a>[<a href='' target='_blank' rel='nofollow'>"+data.rankName
                                                +"</a>]</div></div></div><ul class='xl xl2 o cl'><li class='buddy'>"
                                                +"<a title='加好友' class='xi2' id='a_friend_li_72607611' href='' rel='nofollow'>"
                                                +"加好友"+"</a></li><li class='pm2'><a title='发消息' class='xi2' href='' rel='nofollow'>"
                                                +"发消息"+"</a></li></ul></td><td class='plc'><div class='pi'><strong>"
                                                +"<a href='' rel='nofollow'>"+"板凳"+"</a></strong><div class='pti'><div class='pdbt'>"
                                                +"</div><div class='authi'><img class='authicn vm' id='authicon72607611' src='static/user/talk/image/information/online_member.gif'>"
                                                +"<em id='authorposton72607611'>发表于 "+date+"</em><div class='praise'>"
                                                +"<span id='praise'><img src='static/user/talk/image/zan1.png' id='praise-img' /></span>"
                                                +"<span id='praise-txt'>"+"1455"+"</span></div></div></div></div><div class='pct'>"
                                                +"<div class='pcb'><div class='t_fsz'><table cellspacing='0' cellpadding='0'><tbody>"
                                                +"<tr><td class='t_f' id='postmessage_72607611'>"+data.discussreplyContent
                                                +"</td></tr></tbody></table></div><div class='cm' id='comment_72607611'></div>"
                                                +"<div id='post_rate_div_72607611'></div></div></div></td></tr><tr><td class='plc plm'>"
                                                +"<div class='a_pb' id='OL_SYS_876'></div></td></tr><tr><td class='pls'></td>"
                                                +"<td class='plc'><div class='po'><div class='pob cl'><em></em><p><a href=''>举报</a>"
                                                +"</p><ul class='p_pop mgcmn' id='mgc_post_72607611_menu' style='display: none;'>"
                                                +"</ul></div></div></td></tr><tr class='ad'><td class='plc' colspan='2'></td>"
                                                +"</tr></tbody></table></div>";
                                        $("#postlist").append(discussreply);
                                    },
                                    error: function(data) {
                                       alert("请先登录!");
                                    }
                                });
                            }





                        </script>
                    </td>
                </tr>
                </tbody>
            </table>
    </div>
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
                        <span class="titletext">回复最多帖</span>
                    </div>
                    <div class="dxb_bc" id="portal_block_178_content">
                        <div class="module cl xl xl1">
                            <ul>
                                <c:forEach var="manydiscuss" items="${manydiscuss}">
                                <li>
                                    <a title="${manydiscuss.discussTitle}" href="" target="_blank">${manydiscuss.discussTitle}</a>
                                </li>
                                </c:forEach>
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
                                <c:forEach var="hotdiscusses" items="${hotdiscusses}">
                                <li>
                                    <a title="${hotdiscusses.discussTitle}" href="" target="_blank">${hotdiscusses.discussTitle}</a>
                                </li>
                                </c:forEach>
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
                    <dd><a href="${pageContext.request.contextPath }/user/map.action">网站地图</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/user/copyright.action">版权声明</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/user/joinus.action">加入我们</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/user/aboutus.action">联系我们</a></dd>
                </dl>
                <dl class="col-md-4">
                    <dt><span>iFashion产品</span></dt>
                    <dd><a href="${pageContext.request.contextPath }/user/clothes.action">穿衣搭配</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/user/forum.action">社区精选</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/user/online_list.action">私人订制</a></dd>
                    <dd><a href="${pageContext.request.contextPath }/user/newsHome.action">资讯</a></dd>
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
<script type='text/javascript'>
    (function(m, ei, q, i, a, j, s) {
        m[i] = m[i] || function() {
            (m[i].a = m[i].a || []).push(arguments)
        };
        j = ei.createElement(q),
            s = ei.getElementsByTagName(q)[0];
        j.async = true;
        j.charset = 'UTF-8';
        j.src = 'https://static.meiqia.com/dist/meiqia.js?_=t';
        s.parentNode.insertBefore(j, s);
    })(window, document, 'script', '_MEIQIA');
    _MEIQIA('entId', 108609);
</script>


</body>
</html>

