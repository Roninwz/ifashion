<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/12
  Time: 16:46
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
    <script src="static/user/talk/js/modernizr.js" type="text/javascript"></script>
    <script src="static/user/person/js/jquery.min.js" type="text/javascript"></script>
    <link href="static/user/talk/css/review.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" type="text/css" href="static/user/talk/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="static/user/talk/css/demo1.css">
    <link rel="stylesheet" type="text/css" href="static/user/talk/css/style.css">
    <link rel="stylesheet" type="text/css" href="static/user/talk/css/review1.css">

</head>
<body>

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







<div id="divaa" style="position:relative;margin-left: 300px">
<ul >
   <a href="javascript:void(0)" value="1" onclick="aaa(this);return true;" id="liaa"> <li id="1111" style="height: 20px;width: 200px;background-color: red;">hahahahahaha</li>
   </a>
    <a href="javascript:void(0)" value="1" onclick="aaaaa(this);return true;" id="haha"> <li id="1111" style="height: 20px;width: 200px;background-color: red;">hahahahahaha</li>
    </a>
    <div id="lidiv" style="height: 200px;width: 200px;background-color: blue;">

    </div>
    <li style="height: 20px;width: 200px;background-color: red;">hahahahahaha</li>
    <div style="height: 200px;width: 200px;background-color: blue;"></div>
    <li style="height: 20px;width: 200px;background-color: red;">hahahahahaha</li>
    <div style="height: 200px;width: 200px;background-color: blue;"></div>
    <li style="height: 20px;width: 200px;background-color: red;">hahahahahaha</li>
    <div style="height: 200px;width: 200px;background-color: blue;"></div>
</ul>
</div >


<script>

    function  aaa(obj) {
        $("#lidiv").show();
    }

    function aaaaa(obj) {
        $("#lidiv").hide();
    }
   /* $(document).ready(function() {


        $("#liaa").click(function () {
            $("#lidiv").hide();
        })
        $("#haha").click(function () {
            $("#haha").hide();
        })
    });*/
</script>

<script type="text/javascript">
    //uses classList, setAttribute, and querySelectorAll
    //if you want this to work in IE8/9 youll need to polyfill these
    (function(){
        var d = document,
            accordionToggles = d.querySelectorAll('.js-accordionTrigger'),
            setAria,
            setAccordionAria,
            switchAccordion,
            touchSupported = ('ontouchstart' in window),
            pointerSupported = ('pointerdown' in window);

        skipClickDelay = function(e){
            e.preventDefault();
            e.target.click();
        }

        setAriaAttr = function(el, ariaType, newProperty){
            el.setAttribute(ariaType, newProperty);
        };
        setAccordionAria = function(el1, el2, expanded){
            switch(expanded) {
                case "true":
                    setAriaAttr(el1, 'aria-expanded', 'true');
                    setAriaAttr(el2, 'aria-hidden', 'false');
                    break;
                case "false":
                    setAriaAttr(el1, 'aria-expanded', 'false');
                    setAriaAttr(el2, 'aria-hidden', 'true');
                    break;
                default:
                    break;
            }
        };
//function
        switchAccordion = function(e) {
            console.log("triggered");
            e.preventDefault();
            var thisAnswer = e.target.parentNode.nextElementSibling;
            var thisQuestion = e.target;
            if(thisAnswer.classList.contains('is-collapsed')) {
                setAccordionAria(thisQuestion, thisAnswer, 'true');
            } else {
                setAccordionAria(thisQuestion, thisAnswer, 'false');
            }
            thisQuestion.classList.toggle('is-collapsed');
            thisQuestion.classList.toggle('is-expanded');
            thisAnswer.classList.toggle('is-collapsed');
            thisAnswer.classList.toggle('is-expanded');

            thisAnswer.classList.toggle('animateIn');
        };
        for (var i=0,len=accordionToggles.length; i<len; i++) {
            if(touchSupported) {
                accordionToggles[i].addEventListener('touchstart', skipClickDelay, false);
            }
            if(pointerSupported){
                accordionToggles[i].addEventListener('pointerdown', skipClickDelay, false);
            }
            accordionToggles[i].addEventListener('click', switchAccordion, false);
        }
    })();
</script>
</html>

