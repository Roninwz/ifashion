<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/10
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp" %>
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
    <title>问题详情</title>

    <link rel="stylesheet"  href="static/user/talk/css/review.css">
    <link rel="stylesheet" href="static/user/talk/css/reset.css" />
    <link rel="stylesheet"  href="static/user/talk/css/demo1.css">
    <link rel="stylesheet"  href="static/user/talk/css/style.css">
    <link rel="stylesheet"  href="static/user/talk/css/review1.css">

    <%--<script src="static/user/talk/js/modernizr.js"></script>--%>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">
    <script src="static/user/person/js/jquery.min.js" type="text/javascript"></script>



    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>






</head>
<body style="background-color: white">


<div id="main">

    <div class="wenda clearfix">
        <div class="l wenda-main">
            <div class="qa-content" data-qid="390861">
                <div class="qa-content-inner ">
                    <div id="js-content-main">
                        <div class="detail-q-title clearfix">
                            <!-- 话题 -->
                            <h1 class="js-qa-wenda-title detail-wenda-title">执行mvn test出现的问题</h1>


                            <!-- 问答信息 -->
                            <div class="wenda-intro-box clearfix">
                                <div class="detail-user l">
                                    <a class="author l" href="/u/4210760/bbs">
                                        <img alt="" src="">

                                        qq_Prague_0
                                    </a>

                                </div>

                                <!-- 编辑 -->
                                <div class="wenda-edit-box r">
                                    <a class="js-tip-off detail-edit l" href="javascript:;" data-uid="4210760" data-type="1" data-id="390861">举报</a>
                                    <span class="count-item l">回答<i>0</i></span>
                                    <span class="count-item l">浏览<i>5</i></span>

                                </div>
                                <!-- 编辑 end -->
                            </div>
                        </div>

                        <div class="detail-wenda aimgPreview rich-text" id="js-qa-wenda"><p><img title="" style="cursor: pointer;" alt="https://img2.mukewang.com/5b1ce2700001488f17040327.jpg" src="https://img4.mukewang.com/5b1ce2700001488f05000096.jpg" data-src="https://img2.mukewang.com/5b1ce2700001488f17040327.jpg"></p></div>
                    </div>

                    <!-- 编辑问答 -->
                    <!-- 编辑问答 end -->

                    <!-- 源自 & 分享 & 关注 -->
                    <div class="qa-header detail-user-tips clearfix">
                        <div class="qa-header-left labelCon l clearfix">
                            <div class="item l">
                                <a href="/wenda/3">JAVA</a>
                            </div>
                        </div>
                        <div class="qa-header-right r">
                            <!-- credit -->
                            <!-- follow -->
                            <a title="关注" class="l wenda-add-collection js-collection-btn" href="javascript:void(0)" data-id="390861">
                                <i class="icon-heart"><img src="../image/guanzhu.jpg"></i>
                                <span class="detail-hearts js-detail-follow"></span>
                            </a>
                        </div>

                    </div>
                    <!-- 源自 & 分享 & 关注 end-->
                </div>

            </div>

            <div class="detail-comment-input js-msg-context clearfix" id="js-qa-comment-input">
                <h3 class="answer-add-tip">添加回答</h3>
                <div class="detail-ci-avator" id="add-answer">
                    <button class="answer-btn" id="answer-frame"></button>
                </div>

                <div class="detail-ci-avator answer-hidden l" id="avator-wrap">
                    <img alt="" src="//img2.mukewang.com/user/58e05b48000124ba01000100-80-80.jpg">

                </div>
                <div class="answer-hidden l" id="js-reply-wrap">
                    <div class="wd-comment-box js-ci-inner  edui-imooc" id="js-reply-editor-box">
                        <div class="edui-editor  edui-imooc" id="edui1" style="width: 660px; z-index: 999;"><div class="edui-editor-toolbarbox edui-imooc" id="edui1_toolbarbox"><div class="edui-editor-toolbarboxouter edui-imooc" id="edui1_toolbarboxouter"><div class="edui-editor-toolbarboxinner edui-imooc"><div class="edui-toolbar   edui-imooc" id="edui2" style="-ms-user-select: none;" onmousedown='return $EDITORUI["edui2"]._onMouseDown(event, this);' onselectstart="return false;"><div class="edui-box edui-combox edui-for-insertcode edui-imooc" id="edui3"><div title="代码语言" class="edui-imooc" id="edui3_state" onmouseover='$EDITORUI["edui3"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui3"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui3"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui3"].Stateful_onMouseUp(event, this);'><div class="edui-combox-body edui-imooc"><div class="edui-box edui-button-body edui-imooc" id="edui3_button_body" onclick='$EDITORUI["edui3"]._onButtonClick(event, this);'>代码语言</div><div class="edui-box edui-splitborder edui-imooc"></div><div class="edui-box edui-arrow edui-imooc" onclick='$EDITORUI["edui3"]._onArrowClick();'></div></div></div></div><div class="edui-box edui-button edui-for-bold edui-imooc" id="edui17"><div class="edui-imooc" id="edui17_state" onmouseover='$EDITORUI["edui17"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui17"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui17"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui17"].Stateful_onMouseUp(event, this);'><div class="edui-button-wrap edui-imooc"><div title="加粗" class="edui-button-body edui-imooc" id="edui17_body" onmousedown='return $EDITORUI["edui17"]._onMouseDown(event, this);' onclick='return $EDITORUI["edui17"]._onClick(event, this);' unselectable="on"><div class="edui-box edui-icon edui-imooc"></div></div></div></div></div><div class="edui-box edui-button edui-for-italic edui-imooc" id="edui18"><div class="edui-imooc" id="edui18_state" onmouseover='$EDITORUI["edui18"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui18"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui18"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui18"].Stateful_onMouseUp(event, this);'><div class="edui-button-wrap edui-imooc"><div title="斜体" class="edui-button-body edui-imooc" id="edui18_body" onmousedown='return $EDITORUI["edui18"]._onMouseDown(event, this);' onclick='return $EDITORUI["edui18"]._onClick(event, this);' unselectable="on"><div class="edui-box edui-icon edui-imooc"></div></div></div></div></div><div class="edui-box edui-button edui-for-underline edui-imooc" id="edui19"><div class="edui-imooc" id="edui19_state" onmouseover='$EDITORUI["edui19"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui19"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui19"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui19"].Stateful_onMouseUp(event, this);'><div class="edui-button-wrap edui-imooc"><div title="下划线" class="edui-button-body edui-imooc" id="edui19_body" onmousedown='return $EDITORUI["edui19"]._onMouseDown(event, this);' onclick='return $EDITORUI["edui19"]._onClick(event, this);' unselectable="on"><div class="edui-box edui-icon edui-imooc"></div></div></div></div></div><div class="edui-box edui-button edui-for-insertimage edui-imooc" id="edui26"><div class="edui-imooc" id="edui26_state" onmouseover='$EDITORUI["edui26"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui26"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui26"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui26"].Stateful_onMouseUp(event, this);'><div class="edui-button-wrap edui-imooc"><div title="多图上传" class="edui-button-body edui-imooc" id="edui26_body" onmousedown='return $EDITORUI["edui26"]._onMouseDown(event, this);' onclick='return $EDITORUI["edui26"]._onClick(event, this);' unselectable="on"><div class="edui-box edui-icon edui-imooc"></div><div class="edui-box edui-label edui-imooc"></div></div></div></div></div><div class="edui-box edui-button edui-for-link edui-imooc" id="edui31"><div class="edui-imooc" id="edui31_state" onmouseover='$EDITORUI["edui31"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui31"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui31"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui31"].Stateful_onMouseUp(event, this);'><div class="edui-button-wrap edui-imooc"><div title="超链接" class="edui-button-body edui-imooc" id="edui31_body" onmousedown='return $EDITORUI["edui31"]._onMouseDown(event, this);' onclick='return $EDITORUI["edui31"]._onClick(event, this);' unselectable="on"><div class="edui-box edui-icon edui-imooc"></div><div class="edui-box edui-label edui-imooc"></div></div></div></div></div><div class="edui-box edui-button edui-for-unlink edui-imooc" id="edui32"><div class="edui-imooc" id="edui32_state" onmouseover='$EDITORUI["edui32"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui32"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui32"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui32"].Stateful_onMouseUp(event, this);'><div class="edui-button-wrap edui-imooc"><div title="取消链接" class="edui-button-body edui-imooc" id="edui32_body" onmousedown='return $EDITORUI["edui32"]._onMouseDown(event, this);' onclick='return $EDITORUI["edui32"]._onClick(event, this);' unselectable="on"><div class="edui-box edui-icon edui-imooc"></div></div></div></div></div><div class="edui-box edui-menubutton edui-for-insertunorderedlist edui-imooc" id="edui33"><div title="无序列表" class="edui-imooc" id="edui33_state" onmouseover='$EDITORUI["edui33"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui33"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui33"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui33"].Stateful_onMouseUp(event, this);'><div class="edui-menubutton-body edui-imooc"><div class="edui-box edui-button-body edui-imooc" id="edui33_button_body" onclick='$EDITORUI["edui33"]._onButtonClick(event, this);'><div class="edui-box edui-icon edui-imooc"></div></div><div class="edui-box edui-splitborder edui-imooc"></div><div class="edui-box edui-arrow edui-imooc" onclick='$EDITORUI["edui33"]._onArrowClick();'></div></div></div></div><div class="edui-box edui-menubutton edui-for-insertorderedlist edui-imooc" id="edui35"><div title="有序列表" class="edui-imooc" id="edui35_state" onmouseover='$EDITORUI["edui35"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui35"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui35"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui35"].Stateful_onMouseUp(event, this);'><div class="edui-menubutton-body edui-imooc"><div class="edui-box edui-button-body edui-imooc" id="edui35_button_body" onclick='$EDITORUI["edui35"]._onButtonClick(event, this);'><div class="edui-box edui-icon edui-imooc"></div></div><div class="edui-box edui-splitborder edui-imooc"></div><div class="edui-box edui-arrow edui-imooc" onclick='$EDITORUI["edui35"]._onArrowClick();'></div></div></div></div><div class="edui-box edui-button edui-for-blockquote edui-imooc" id="edui37"><div class="edui-imooc" id="edui37_state" onmouseover='$EDITORUI["edui37"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui37"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui37"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui37"].Stateful_onMouseUp(event, this);'><div class="edui-button-wrap edui-imooc"><div title="引用" class="edui-button-body edui-imooc" id="edui37_body" onmousedown='return $EDITORUI["edui37"]._onMouseDown(event, this);' onclick='return $EDITORUI["edui37"]._onClick(event, this);' unselectable="on"><div class="edui-box edui-icon edui-imooc"></div></div></div></div></div><div class="edui-box edui-button edui-for-redo edui-imooc" id="edui38"><div class="edui-imooc" id="edui38_state" onmouseover='$EDITORUI["edui38"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui38"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui38"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui38"].Stateful_onMouseUp(event, this);'><div class="edui-button-wrap edui-imooc"><div title="重做" class="edui-button-body edui-imooc" id="edui38_body" onmousedown='return $EDITORUI["edui38"]._onMouseDown(event, this);' onclick='return $EDITORUI["edui38"]._onClick(event, this);' unselectable="on"><div class="edui-box edui-icon edui-imooc"></div></div></div></div></div><div class="edui-box edui-button edui-for-undo edui-imooc" id="edui39"><div class="edui-imooc" id="edui39_state" onmouseover='$EDITORUI["edui39"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui39"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui39"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui39"].Stateful_onMouseUp(event, this);'><div class="edui-button-wrap edui-imooc"><div title="撤销" class="edui-button-body edui-imooc" id="edui39_body" onmousedown='return $EDITORUI["edui39"]._onMouseDown(event, this);' onclick='return $EDITORUI["edui39"]._onClick(event, this);' unselectable="on"><div class="edui-box edui-icon edui-imooc"></div></div></div></div></div><div class="edui-box edui-button edui-for-preview edui-imooc" id="edui42"><div class="edui-imooc" id="edui42_state" onmouseover='$EDITORUI["edui42"].Stateful_onMouseOver(event, this);' onmouseout='$EDITORUI["edui42"].Stateful_onMouseOut(event, this);' onmousedown='$EDITORUI["edui42"].Stateful_onMouseDown(event, this);' onmouseup='$EDITORUI["edui42"].Stateful_onMouseUp(event, this);'><div class="edui-button-wrap edui-imooc"><div title="预览" class="edui-button-body edui-imooc" id="edui42_body" onmousedown='return $EDITORUI["edui42"]._onMouseDown(event, this);' onclick='return $EDITORUI["edui42"]._onClick(event, this);' unselectable="on"><div class="edui-box edui-icon edui-imooc"></div><div class="edui-box edui-label edui-imooc"></div></div></div></div></div></div></div></div><div class="edui-editor-toolbarmsg edui-imooc" id="edui1_toolbarmsg" style="display:none;"><div class="edui-editor-toolbarmsg-upload edui-imooc" id="edui1_upload_dialog" onclick='$EDITORUI["edui1"].showWordImageDialog();'>点击上传</div><div class="edui-editor-toolbarmsg-close edui-imooc" onclick='$EDITORUI["edui1"].hideToolbarMsg();'>x</div><div class="edui-editor-toolbarmsg-label edui-imooc" id="edui1_toolbarmsg_label"></div><div class="edui-imooc" style="height:0;overflow:hidden;clear:both;"></div></div><div class="edui-editor-messageholder edui-imooc" id="edui1_message_holder" style="top: 3px; z-index: 1000;"></div></div><div class="edui-editor-iframeholder edui-imooc" id="edui1_iframeholder" style="width: 660px; height: 100px; overflow: hidden; z-index: 999;"><iframe width="100%" height="100%" id="ueditor_0" src="javascript:void(function(){document.open();document.write(&quot;<!DOCTYPE html><html xmlns='http://www.w3.org/1999/xhtml' class='view' ><head><style type='text/css'>.view{padding:0;word-wrap:break-word;cursor:text;height:90%;}&#10;body{margin:8px;font-family:sans-serif;font-size:16px;}p{margin:5px 0;}</style><link rel='stylesheet' type='text/css' href='https://www.imooc.com/static/lib/ueditor1.4.3.1/themes/iframe.css'/></head><body class='view' ></body><script type='text/javascript'  id='_initialScript'>setTimeout(function(){editor = window.parent.UE.instants['ueditorInstant0'];editor._setup(document);},0);var _tmpScript = document.getElementById('_initialScript');_tmpScript.parentNode.removeChild(_tmpScript);</script></html>&quot;);document.close();}())" frameborder="0"></iframe></div><div class="edui-editor-bottomContainer edui-imooc" id="edui1_bottombar"><table class="edui-imooc"><tbody class="edui-imooc"><tr class="edui-imooc"><td class="edui-editor-bottombar edui-imooc" id="edui1_elementpath" style="display: none;"></td><td class="edui-editor-wordcount edui-imooc" id="edui1_wordcount" style="display: none;"></td><td class="edui-editor-scale edui-imooc" id="edui1_scale" style="display: none;"><div class="edui-editor-icon edui-imooc"></div></td></tr></tbody></table></div><div class="edui-imooc" id="edui1_scalelayer"></div></div></div>
                    <div class="qa-ci-footer clearfix" id="js-qa-ci-footer">
                        <span class="qa-tips l"></span>
                        <div class="qa-ci-footright">
                            <div class="captcha-verify-box js-answer-verify-box hide"></div>
                            <button class="btn btn-red detail-ans " id="js-wenda-ci-submit" data-qid="390861">回答</button>
                        </div>
                    </div>
                </div>


            </div>
            <!-- 回答数 -->
            <div class="ans_num">254回答</div>
            <div class="none_ans">暂无任何回答</div>
            <!-- 回答回复 start -->
            <div class="container">

                <div class="accordion" >
                    <dl>
                        <div class="ques-answer ques-new-answer clearfix" style="background-color:#eee;" >
                            <dt>
                                <div class="user-pic l">
                                    <a href="/u/1082966/bbs" target="_blank">
                                        <img width="40" height="40" alt="?" src="//img3.mukewang.com/5458472300015f4702200220-100-100.jpg">
                                    </a>
                                </div>
                                <div class="detail-r">
                                    <a class="detail-name" href="/u/1082966/bbs" target="_blank">此昵称已被占用</a>
                                    <script>

                                        $(function() {
                                            $("#accordion1").hide(); //初始化的时候第二个下拉列表隐藏
                                            $('#accordion1').css("display", "none");

                                        });


                                        function  aaa(obj) {
                                            $("#accordion1").show();
                                        }

                                        function aaaaa(obj) {
                                            $("#accordion1").hide();
                                        }


                                    </script>


                                </div>
                                <a href="javascript:void(0)" value="1" onclick="aaa(this);return true;" id="liaa" aria-expanded="false" aria-controls="accordion1" class="accordion-title accordionTitle js-accordionTrigger">First Accordion heading</a>
                                <div class="ctrl-bar clearfix js-wenda-tool">

                                    <span class="agree-with " data-hasop="" data-answer-id="231906" data-ques-id="344091"><i class="icon-thumb-revert"><img src="static/user/talk/image/zan.png" style="height:25px; width:25px; margin-top:5px"></i><em>114</em></span>

                                    <span class="oppose " data-hasop="" data-answer-id="231906" data-ques-id="344091"><i class="imv2-thumb_down"><img src="static/user/talk/image/fandui.jpg" style="height:25px; width:25px; margin-top:5px"></i><em>反对</em></span>



                                    <span class="reply" data-ques-uid="2143740" data-reply-id="231906" data-replynum="6"><em>6</em>个回复</span>

                                    <a class="reply-del js-tip-off" href="javascript:;" data-uid="166794" data-type="2" data-id="231906" data-quesid="344091" data-answerid="231906">举报</a>


                                    <span class="time r">2017-03-10</span>

                                </div><!--.ctrl-bar end-->
                            </dt>
                            <dd class="accordion-content accordionItem is-collapsed" id="accordion1" aria-hidden="true" style="">
                                <div value="1" onclick="aaaaa(this);return true;" id="haha"
                                        class="reply-con" style="display:block; overflow:scroll;min-height:300px; height:500px">
                                    <ul class="reply-list" style="min-height:300px; overflow:auto; height:auto">

                                        <li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/3797870/bbs" target="_blank"><img alt="夜鸽" src="//img1.mukewang.com/user/54584f850001c0bc02200220-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/3797870/bbs">夜鸽</a><span class="r floor">#2</span></div><div class="reply-content">不知道你们怎么看，反正我是觉得晚上的效率是高于白天的。</div><div class="reply-btn l" data-uid="3797870" data-username="夜鸽">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="3797870" data-type="3" data-id="44581">举报</a><span class="time r">2017-03-12 03:38:36</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2910275/bbs" target="_blank"><img alt="weibo_杉素素_0" src="//img.mukewang.com/user/56c2db140001fa2001800180-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2910275/bbs">weibo_杉素素_0</a><span class="r floor">#3</span></div><div class="reply-content">其实熬夜和个人的修为成正比例，往往越发熟练的家伙是不会折磨自己到深夜的</div><div class="reply-btn l" data-uid="2910275" data-username="weibo_杉素素_0">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2910275" data-type="3" data-id="44658">举报</a><span class="time r">2017-03-12 21:06:17</span></li>

                                        <li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li>

                                    </ul><!--.reply-list end-->
                                    <div class="release-reply-con clearfix">
                                        <div class="user-pic ">
                                            <a href="/u/4261959/bbs" target="_blank">
                                                <img width="40" height="40" alt="?" src="//img.mukewang.com/58e05b48000124ba01000100-100-100.jpg">
                                            </a>
                                        </div>
                                        <!--.user-pic end-->


                                        <div class="textarea-con">
                                            <textarea name="release-reply" id="release-reply" placeholder="写下你的回复"></textarea>
                                        </div>
                                        <p class="err-tip"></p>
                                        <div class="userCtrl clearfix">
                                            <!-- <div class="verify-code"></div> -->
                                            <div class="captcha-verify-box js-reply-verify-box hide"></div>
                                            <div class="do-reply-btn" data-answer-id="231714" data-ques-uid="2143740">回复</div>
                                        </div>
                                    </div><!--.release-reply-con end-->
                                </div><!--.reply-con end-->
                            </dd>
                        </div>
                        <div class="ques-answer ques-new-answer clearfix" style="background-color:#eee;" >
                            <dt>
                                <div class="user-pic l">
                                    <a href="/u/1082966/bbs" target="_blank">
                                        <img width="40" height="40" alt="?" src="//img3.mukewang.com/5458472300015f4702200220-100-100.jpg">
                                    </a>
                                </div>
                                <div class="detail-r">
                                    <a class="detail-name" href="/u/1082966/bbs" target="_blank">此昵称已被占用</a>



                                </div>

                                <a href="" aria-expanded="false" aria-controls="accordion1" class="accordion-title accordionTitle js-accordionTrigger">First Accordion heading</a>
                            </dt>
                            <dd class="accordion-content accordionItem is-collapsed ddheight" id="accordion1" aria-hidden="true" style="height:500px !important;z-index:100">
                                <div class="reply-con" style="display:block; overflow:scroll;min-height:300px; height:500px">
                                    <ul class="reply-list" style="display:block; min-height:300px; overflow:auto; height:auto">

                                        <li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/3797870/bbs" target="_blank"><img alt="夜鸽" src="//img1.mukewang.com/user/54584f850001c0bc02200220-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/3797870/bbs">夜鸽</a><span class="r floor">#2</span></div><div class="reply-content">不知道你们怎么看，反正我是觉得晚上的效率是高于白天的。</div><div class="reply-btn l" data-uid="3797870" data-username="夜鸽">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="3797870" data-type="3" data-id="44581">举报</a><span class="time r">2017-03-12 03:38:36</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2910275/bbs" target="_blank"><img alt="weibo_杉素素_0" src="//img.mukewang.com/user/56c2db140001fa2001800180-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2910275/bbs">weibo_杉素素_0</a><span class="r floor">#3</span></div><div class="reply-content">其实熬夜和个人的修为成正比例，往往越发熟练的家伙是不会折磨自己到深夜的</div><div class="reply-btn l" data-uid="2910275" data-username="weibo_杉素素_0">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2910275" data-type="3" data-id="44658">举报</a><span class="time r">2017-03-12 21:06:17</span></li>

                                        <li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li>

                                    </ul><!--.reply-list end-->
                                    <div class="release-reply-con clearfix">
                                        <div class="user-pic ">
                                            <a href="/u/4261959/bbs" target="_blank">
                                                <img width="40" height="40" alt="?" src="//img.mukewang.com/58e05b48000124ba01000100-100-100.jpg">
                                            </a>
                                        </div>
                                        <!--.user-pic end-->


                                        <div class="textarea-con">
                                            <textarea name="release-reply" id="release-reply" placeholder="写下你的回复"></textarea>
                                        </div>
                                        <p class="err-tip"></p>
                                        <div class="userCtrl clearfix">
                                            <!-- <div class="verify-code"></div> -->
                                            <div class="captcha-verify-box js-reply-verify-box hide"></div>
                                            <div class="do-reply-btn" data-answer-id="231714" data-ques-uid="2143740">回复</div>
                                        </div>
                                    </div><!--.release-reply-con end-->
                                </div><!--.reply-con end-->
                            </dd>
                        </div>
                        <div class="ques-answer ques-new-answer clearfix" style="background-color:#eee;" >
                            <dt>
                                <div class="user-pic l">
                                    <a href="/u/1082966/bbs" target="_blank">
                                        <img width="40" height="40" alt="?" src="//img3.mukewang.com/5458472300015f4702200220-100-100.jpg">
                                    </a>
                                </div>
                                <div class="detail-r">
                                    <a class="detail-name" href="/u/1082966/bbs" target="_blank">此昵称已被占用</a>



                                </div>

                                <a href="" aria-expanded="false" aria-controls="accordion1" class="accordion-title accordionTitle js-accordionTrigger">First Accordion heading</a>
                            </dt>
                            <dd class="accordion-content accordionItem is-collapsed ddheight" id="accordion1" aria-hidden="true" style="height:500px !important;z-index:100">
                                <div class="reply-con" style="display:block; overflow:scroll;min-height:300px; height:500px">
                                    <ul class="reply-list" style="display:block; min-height:300px; overflow:auto; height:auto">

                                        <li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/3797870/bbs" target="_blank"><img alt="夜鸽" src="//img1.mukewang.com/user/54584f850001c0bc02200220-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/3797870/bbs">夜鸽</a><span class="r floor">#2</span></div><div class="reply-content">不知道你们怎么看，反正我是觉得晚上的效率是高于白天的。</div><div class="reply-btn l" data-uid="3797870" data-username="夜鸽">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="3797870" data-type="3" data-id="44581">举报</a><span class="time r">2017-03-12 03:38:36</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2910275/bbs" target="_blank"><img alt="weibo_杉素素_0" src="//img.mukewang.com/user/56c2db140001fa2001800180-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2910275/bbs">weibo_杉素素_0</a><span class="r floor">#3</span></div><div class="reply-content">其实熬夜和个人的修为成正比例，往往越发熟练的家伙是不会折磨自己到深夜的</div><div class="reply-btn l" data-uid="2910275" data-username="weibo_杉素素_0">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2910275" data-type="3" data-id="44658">举报</a><span class="time r">2017-03-12 21:06:17</span></li>

                                        <li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li><li class="clearfix"><div class="user-pic"><a href="/u/2856055/bbs" target="_blank"><img alt="11知足11" src="//img.mukewang.com/user/56a5b2b300014a5601000100-40-40.jpg"></a></div><div class="user-info clearfix"><a class="from-user" href="/u/2856055/bbs">11知足11</a><span class="r floor">#1</span></div><div class="reply-content">厉害了我的姐</div><div class="reply-btn l" data-uid="2856055" data-username="11知足11">回复</div><a class="reply-del js-tip-off" href="javascript:void(0)" data-uid="2856055" data-type="3" data-id="44492">举报</a><span class="time r">2017-03-10 20:14:42</span></li>

                                    </ul><!--.reply-list end-->
                                    <div class="release-reply-con clearfix">
                                        <div class="user-pic ">
                                            <a href="/u/4261959/bbs" target="_blank">
                                                <img width="40" height="40" alt="?" src="//img.mukewang.com/58e05b48000124ba01000100-100-100.jpg">
                                            </a>
                                        </div>
                                        <!--.user-pic end-->


                                        <div class="textarea-con">
                                            <textarea name="release-reply" id="release-reply" placeholder="写下你的回复"></textarea>
                                        </div>
                                        <p class="err-tip"></p>
                                        <div class="userCtrl clearfix">
                                            <!-- <div class="verify-code"></div> -->
                                            <div class="captcha-verify-box js-reply-verify-box hide"></div>
                                            <div class="do-reply-btn" data-answer-id="231714" data-ques-uid="2143740">回复</div>
                                        </div>
                                    </div><!--.release-reply-con end-->
                                </div><!--.reply-con end-->
                            </dd>
                        </div>
                    </dl>
                </div>

            </div>
            <div class="qa-comment-page">
            </div>

        </div>

        <div class="wenda-slider r">
            <div class="quiz"><a class="js-quiz" href="javascript:;">我要提问</a></div>
            <!-- 相关问题 -->
            <div class="panel about-ques">
                <div class="panel-heading">
                    <h2 class="panel-title">相关问题</h2>
                </div>
                <div class="panel-body clearfix">
                    <div class="mkhotlist padtop">
                        <a class="relwenda" href="/wenda/detail/390810" target="_blank">定义一个学校类（其中包括的属性和行为），并创建对象进行引用</a><i class="answer-num">2 回答</i>
                    </div>
                    <div class="mkhotlist ">
                        <a class="relwenda" href="/wenda/detail/390809" target="_blank">failed to load responce data</a><i class="answer-num">2 回答</i>
                    </div>
                    <div class="mkhotlist ">
                        <a class="relwenda" href="/wenda/detail/390804" target="_blank">ajax运用</a><i class="answer-num">3 回答</i>
                    </div>
                    <div class="mkhotlist ">
                        <a class="relwenda" href="/wenda/detail/390773" target="_blank">这是什么错误，我在G盘中已经建立了ul.txt文件</a><i class="answer-num">5 回答</i>
                    </div>
                    <div class="mkhotlist bordbottom">
                        <a class="relwenda" href="/wenda/detail/390763" target="_blank">代码找不到哪里有错啊：：：：</a><i class="answer-num">9 回答</i>
                    </div>
                </div>
            </div>
            <!-- 广告 -->
            <div class="advertisement">
                <a href="https://www.imooc.com/wenda/issuedetail/27" target="_blank" data-ast="yuanwendetailright_1_1055">
                    <img title="【内推2】" src="//img.mukewang.com/5abc583f000190a203280117.jpg">
                </a>
            </div><!--.advertisement end-->
            <div class="recommend-class">
                <div class="title clearfix">
                    <h3>相关分类</h3>
                </div><!--title end-->
                <ul class="cls-list">
                    <li>
                        <div class="class-info">
                            <div class="class-icon">
                                <a href="/wenda/3" target="_blank">
                                    <img alt="JAVA" src="//img2.mukewang.com/59e9700900012e3602400240.jpg">
                                </a>
                            </div><!--.class-icon end-->
                            <h4>
                                <a href="/wenda/3" target="_blank">JAVA</a>
                            </h4>
                            <p class="follow-person">77744人关注</p>
                            <a class="follow " href="javascript:void(0)" data-tag-id="3">关注</a>

                        </div><!--.class-info end-->
                    </li><!--li end-->
                </ul><!--.cls-list end-->
            </div><!--.recommend-class end-->

        </div>

    </div>

    <div id="reply-box" style="display:none;">
        <div class="js-qa-reply-ibox qa-reply-ibox clearfix">
            <div class="qa-reply-iavator l">
                <a title="慕粉1822198314" href="/myclub/otherquestion?uid=4261959">
                    <img width="40" height="40" src="//img1.mukewang.com/user/58e05b48000124ba01000100-40-40.jpg">
                </a>
            </div>
            <div class="qa-reply-iwrap">
                <div class="qa-reply-iarea">
                    <textarea class="js-reply-ipt ipt" maxlength="2000" placeholder="写下你的评论..."></textarea>
                </div>
                <div class="qa-reply-ifoot clearfix">
                    <div class="qa-reply-footright r">
                        <div class="captcha-verify-box js-reply-verify-box hide"></div>
                        <span class="qa-tips"></span>
                        <button class="btn-normal btn-mini js-ipt-cancel">取消</button>
                        <button class="btn-green btn-mini  js-ipt-submit">提交</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="pop-tips-layer"></div>
    <div class="tipoff-block js-tipoff-block"></div>
    <div class="tipoff-box js-tipoff-box">
        <div class="tipoff-top-box clearfix">
            <p class="l tipoff-title">举报</p>
            <span class="r tipoff-close-btn icon-close2 js-tipoff-close"></span>
        </div>
        <div class="tipoff-type-box js-tipoff-typebox clearfix">
            <div class="tipoff-loading">
                <div class="bounce1"></div>
                <div class="bounce2"></div>
                <div class="bounce3"></div>
            </div>
        </div>
        <div class="tipoff-content">
            <textarea name="tipoff-content" class="tipoff-desc js-tipoff-desc" placeholder="写下举报理由"></textarea>
            <div class="tipoff-text"><span class="js-tipoff-text">0</span>/150</div>
        </div>
        <div class="tipoff-btn-box clearfix">
            <div class="r tipoff-submit-btn js-tipoff-submit" data-tipofftype="">提交</div>
            <div class="r tipoff-cancel-btn js-tipoff-close">取消</div>
        </div>
    </div>

</div>


<%@ include file="../footer.jsp" %>
<%--<script type="text/javascript">--%>
    <%--//uses classList, setAttribute, and querySelectorAll--%>
    <%--//if you want this to work in IE8/9 youll need to polyfill these--%>
    <%--(function(){--%>
        <%--var d = document,--%>
            <%--accordionToggles = d.querySelectorAll('.js-accordionTrigger'),--%>
            <%--setAria,--%>
            <%--setAccordionAria,--%>
            <%--switchAccordion,--%>
            <%--touchSupported = ('ontouchstart' in window),--%>
            <%--pointerSupported = ('pointerdown' in window);--%>

        <%--skipClickDelay = function(e){--%>
            <%--e.preventDefault();--%>
            <%--e.target.click();--%>
        <%--}--%>

        <%--setAriaAttr = function(el, ariaType, newProperty){--%>
            <%--el.setAttribute(ariaType, newProperty);--%>
        <%--};--%>
        <%--setAccordionAria = function(el1, el2, expanded){--%>
            <%--switch(expanded) {--%>
                <%--case "true":--%>
                    <%--setAriaAttr(el1, 'aria-expanded', 'true');--%>
                    <%--setAriaAttr(el2, 'aria-hidden', 'false');--%>
                    <%--break;--%>
                <%--case "false":--%>
                    <%--setAriaAttr(el1, 'aria-expanded', 'false');--%>
                    <%--setAriaAttr(el2, 'aria-hidden', 'true');--%>
                    <%--break;--%>
                <%--default:--%>
                    <%--break;--%>
            <%--}--%>
        <%--};--%>
<%--//function--%>
        <%--switchAccordion = function(e) {--%>
            <%--console.log("triggered");--%>
            <%--e.preventDefault();--%>
            <%--var thisAnswer = e.target.parentNode.nextElementSibling;--%>
            <%--var thisQuestion = e.target;--%>
            <%--if(thisAnswer.classList.contains('is-collapsed')) {--%>
                <%--setAccordionAria(thisQuestion, thisAnswer, 'true');--%>
            <%--} else {--%>
                <%--setAccordionAria(thisQuestion, thisAnswer, 'false');--%>
            <%--}--%>
            <%--thisQuestion.classList.toggle('is-collapsed');--%>
            <%--thisQuestion.classList.toggle('is-expanded');--%>
            <%--thisAnswer.classList.toggle('is-collapsed');--%>
            <%--thisAnswer.classList.toggle('is-expanded');--%>

            <%--thisAnswer.classList.toggle('animateIn');--%>
        <%--};--%>
        <%--for (var i=0,len=accordionToggles.length; i<len; i++) {--%>
            <%--if(touchSupported) {--%>
                <%--accordionToggles[i].addEventListener('touchstart', skipClickDelay, false);--%>
            <%--}--%>
            <%--if(pointerSupported){--%>
                <%--accordionToggles[i].addEventListener('pointerdown', skipClickDelay, false);--%>
            <%--}--%>
            <%--accordionToggles[i].addEventListener('click', switchAccordion, false);--%>
        <%--}--%>
    <%--})();--%>
<%--</script>--%>
</body>
</html>
