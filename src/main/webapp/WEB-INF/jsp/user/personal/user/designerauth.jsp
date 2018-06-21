<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>Title</title>
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script src="static/user/login/js/login.js"></script>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>


    <!-- 公用css  -->
    <link href="static/user/person/css/admin.css" rel="stylesheet" type="text/css">
    <link href="static/user/person/css/amazeui.css" rel="stylesheet" type="text/css">
    <!--  个人中心共用的 -->
    <link href="static/user/person/css/personal.css" rel="stylesheet" type="text/css">
    <!-- 个人信息 info -->
    <link href="static/user/person/css/infstyle.css" rel="stylesheet" type="text/css">
    <!-- 订单 order -->
    <link href="static/user/person/css/orstyle.css" rel="stylesheet" type="text/css">
    <!-- 修改密码 password -->
    <link href="static/user/person/css/stepstyle.css" rel="stylesheet" type="text/css">

    <%--设计师认证css--%>
    <link rel="stylesheet" href="static/user/person/auth/css/base.css" />
    <link rel="stylesheet" href="static/user/person/auth/css/layout.css" />



    <!-- 图片上传bootstrap fileinput插件 -->
    <%--<link href="${pageContext.request.contextPath }/static/admin/plugin/fileinput/css/bootstrap.min.css" rel="stylesheet">--%>
    <%--<link href="${pageContext.request.contextPath }/static/admin/plugin/fileinput/css/bootstrap-fileinput.css" rel="stylesheet">--%>
    <!-- 日期插件 -->
    <script src="${pageContext.request.contextPath}/static/user/person/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <script src="static/user/common/plugin/jquery.ajaxfileupload.js" type="text/javascript"></script>
    <%--<script src="static/user/person/js/amazeui.js" type="text/javascript"></script>--%>
    <style type="text/css">
        .con4{
            width: 300px;
            height: auto;
            overflow: hidden;
            margin: 20px auto;
            color: #FFFFFF;
        }
        .con4 .btn{
            width: 100%;
            height: 40px;
            line-height: 40px;
            text-align: center;
            background: #d8b49c;
            display: block;
            font-size: 16px;
            border-radius: 5px;
        }
        .upload{
            float: left;
            position: relative;
        }
        .upload_pic{
            display: block;
            width: 100%;
            height: 40px;
            position: absolute;
            left: 0;
            top: 0;
            opacity: 0;
            border-radius: 5px;
        }
        #cvs{
            border: 1px solid #000;
            margin:20px 0 20px 50px;
        }
    </style>
    <!-- 图片上传js -->
    <!-- <script src="js/jquery.min.js"></script> -->
    <%--<script src="${pageContext.request.contextPath }/static/admin/plugin/fileinput/js/bootstrap-fileinput.js"></script>--%>
    <%--<!-- bootstrap -->--%>
    <%--<script src="${pageContext.request.contextPath }/static/admin/bootstrap/js/bootstrap.min.js"></script>--%>
</head>
<body>

<%@ include file="../../header.jsp" %>


<b class="line"></b>

<div class="center">
    <div class="col-main">
        <!-- 公共内容填充在这里 -->
        <div class="main-wrap" style="top:-10px">






            <div class="container1 w960 mt20" >
                <div id="processor">
                    <ol class="processorBox oh">
                        <li class="current" id="st1">
                            <div class="step_inner fl">
                                <span class="icon_step">1</span>
                                <h4>填写基本信息</h4>
                            </div>
                        </li>
                        <li id="st2">
                            <div class="step_inner" >
                                <span class="icon_step">2</span>
                                <h4>上传设计师认证证书</h4>
                            </div>
                        </li>
                        <li id="st3">
                            <div class="step_inner fr">
                                <span class="icon_step">3</span>
                                <h4>完善开发者资料</h4>
                            </div>
                        </li>
                    </ol>
                    <div class="step_line"></div>
                </div>
                <div class="content">
                    <div id="step1" class="step hide">
                        <%--<form name="forms1" action="user/designerauths1.action" method="post" id="step1_frm">--%>

                            <div class="frm_control_group">
                                <label class="frm_label">用户名</label>
                                <div class="frm_controls">
                                    <input type="username" name="" class="frm_input passwd" id="username"/>
                                    <p class="frm_tips">字母、数字或者英文符号，最短6位，区分大小写</p>
                                </div>
                            </div>
                            <div class="frm_control_group">
                                <label class="frm_label">邮箱</label>
                                <div class="frm_controls">
                                    <input type="email" name="" class="frm_input email" maxlength="32" id="email" />
                                    <p class="frm_tips">作为登录帐号，请填写未被微信开放平台注册、未被微信公众平台注册、未被微信私人帐号绑定的邮箱</p>
                                </div>
                            </div>
                            <div class="toolBar">
                                <a id="nextBtn1" class="btn btn_primary" href="javascript:;">下一步</a>
                                <%--<a id="nextBtn1" class="btn btn_primary" href="javascript:;">下一步</a>--%>
                                    <%--<input type="submit" id="nextBtn1" class="btn btn_primary" value="下一步">--%>
                            </div>
                        <%--</form>--%>
                    </div>
                    <!-- // step1 end -->
                    <div id="step2" class="step hide">
                        <div class="w330">
                            <%--<strong class="f16">感谢注册，确认邮件已发送至你的注册邮箱 : <br />haibao1024@gmail.com</strong>--%>
                            <%--<p class="c7b">请进入邮箱查看邮件，并激活微信开放平台帐号。</p>--%>
                            <%--<p><a class="btn btn_primary mt20" href="javascript:;">登录邮箱</a></p>--%>
                            <%--<p class="c7b mt20">没有收到邮件？</p>--%>
                            <%--<p>1. 请检查邮箱地址是否正确，你可以返回 <a href="#" class="c46">重新填写</a></p>--%>
                            <%--<p>2. 检查你的邮件垃圾箱</p>--%>
                            <%--<p>3. 若仍未收到确认，请尝试 <a href="#" class="c46">重新发送</a></p>--%>
                                <%--<form name="forms1" id="uploadForm" action="user/ajaxupauthimg.action" method="post" id="step1_frm" enctype='multipart/form-data'>--%>
                                <%--<div class="form-group">--%>
                                    <%--<div class="h4">图片预览</div>--%>
                                    <%--<input type="file" name="authImgurl" id="file0" multiple="multiple" /><br><img src="" id="img0" >--%>
                                <%--</div>--%>


                                <div class="form-group">
                                    <label  class="col-sm-3 control-label">上传头像</label>
                                    <%--<div class="col-sm-8">--%>
                                        <%--<img id="image" class="cover-radius"  src="static/admin/plugin/fileinput/images/noimage.png"--%>
                                             <%--width="100%" style="cursor: pointer;" />--%>
                                        <%--<input id="picture_upload" name="file" type="file"  onclick="ajaxFileUpload()"--%>
                                               <%--style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; opacity: 0; cursor: pointer;"/>--%>
                                        <%--<small class="help-block cover-tips" style="color: #dd4b39;display: none;">请上传照片</small>--%>
                                    <%--</div>--%>
                                    <form id="uploadPic" action="#" enctype="multipart/form-data">

                                        <div class="con4">
                                            <canvas id="cvs" width="200" height="200"></canvas>
                                            <span class="btn upload">上传头像<input type="file" name="file" class="upload_pic" id="upload" /></span>
                                        </div>

                                        <%--<input type="file" name="file">--%>
                                        <%--<a href="#" class="btn green" onclick="savePic();"> 提交 </a>--%>
                                    </form>
                                    <script>
                                        //获取上传按钮
                                        var input1 = document.getElementById("upload");

                                        if(typeof FileReader==='undefined'){
                                            //result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
                                            input1.setAttribute('disabled','disabled');
                                        }else{
                                            input1.addEventListener('change',readFile,false);
                                            /*input1.addEventListener('change',function (e){
                                                console.log(this.files);//上传的文件列表
                                            },false); */
                                        }
                                        function readFile(){
                                            var file = this.files[0];//获取上传文件列表中第一个文件
                                            if(!/image\/\w+/.test(file.type)){
                                                //图片文件的type值为image/png或image/jpg
                                                alert("文件必须为图片！");
                                                return false;
                                            }
                                            // console.log(file);
                                            var reader = new FileReader();//实例一个文件对象
                                            reader.readAsDataURL(file);//把上传的文件转换成url
                                            //当文件读取成功便可以调取上传的接口
                                            reader.onload = function(e){
                                                // console.log(this.result);//文件路径
                                                // console.log(e.target.result);//文件路径
                                                /*var data = e.target.result.split(',');
                                                var tp = (file.type == 'image/png')? 'png': 'jpg';
                                                var imgUrl = data[1];//图片的url，去掉(data:image/png;base64,)
                                                //需要上传到服务器的在这里可以进行ajax请求
                                                // console.log(imgUrl);
                                                // 创建一个 Image 对象
                                                var image = new Image();
                                                // 创建一个 Image 对象
                                                // image.src = imgUrl;
                                                image.src = e.target.result;
                                                image.onload = function(){
                                                    document.body.appendChild(image);
                                                }*/

                                                var image = new Image();
                                                // 设置src属性
                                                image.src = e.target.result;
                                                var max=200;
                                                // 绑定load事件处理器，加载完成后执行，避免同步问题
                                                image.onload = function(){
                                                    // 获取 canvas DOM 对象
                                                    var canvas = document.getElementById("cvs");
                                                    // 如果高度超标 宽度等比例缩放 *=
                                                    /*if(image.height > max) {
                                                        image.width *= max / image.height;
                                                        image.height = max;
                                                    } */
                                                    // 获取 canvas的 2d 环境对象,
                                                    var ctx = canvas.getContext("2d");
                                                    // canvas清屏
                                                    ctx.clearRect(0, 0, canvas.width, canvas.height);
                                                    // 重置canvas宽高
                                                    /*canvas.width = image.width;
                                                    canvas.height = image.height;
                                                    if (canvas.width>max) {canvas.width = max;}*/
                                                    // 将图像绘制到canvas上
                                                    // ctx.drawImage(image, 0, 0, image.width, image.height);
                                                    ctx.drawImage(image, 0, 0, 200, 200);
                                                    // 注意，此时image没有加入到dom之中
                                                };
                                            }
                                        };
                                        function savePic(){
                                            alert("进来了");
                                            var formData = new FormData($( "#uploadPic" )[0]);
                                            var ajaxUrl = "${pageContext.request.contextPath}/user/saveHeaderPic.action";
                                            //alert(ajaxUrl);
                                            //$('#uploadPic').serialize() 无法序列化二进制文件，这里采用formData上传
                                            //需要浏览器支持：Chrome 7+、Firefox 4+、IE 10+、Opera 12+、Safari 5+。
                                            $.ajax({
                                                type: "POST",
                                                url: ajaxUrl,
                                                data: formData,
                                                async: false,
                                                cache: false,
                                                contentType: false,
                                                processData: false,
                                                success: function (data) {
                                                    alert("成功");
                                                    alert(data);
                                                },
                                                error: function(data) {
                                                    alert("error:"+data.responseText);

                                                }
                                            });
                                            return false;
                                        }
                                    </script>
                                <%--<div id="result"></div>--%>
                                        <%--<img id="uploadImage" src="http://www.firefox.com.cn/favicon.ico">--%>

                                        <%--<input type="file" id="myBlogImage" name="myfiles"/>--%>
                                        <%--<input type="button" value="上传图片" onclick="ajaxFileUpload()"/>--%>
                                </div>
                                <div class="toolBar">
                                    <a id="nextBtn2" class="btn btn_primary"  onclick="savePic();" href="javascript:;">下一步</a>
                                </div>


                                <%--</form>--%>
                        </div>
                    </div>
                    <!-- // step2 end -->
                    <div id="step3" class="step hide">
                        <form action="user/trueauthdesigner.action" method="post" id="step3_frm">
                            <div class="frm_control_group">
                                <label class="frm_label">真实姓名</label>
                                <div class="frm_controls">
                                    <input type="text" name="truename" class="frm_input name" maxlength="32" id="truename"/>
                                    <p class="frm_tips">请填写真实姓名</p>
                                </div>
                            </div>
                            <div class="frm_control_group">
                                <label class="frm_label">身份证号</label>
                                <div class="frm_controls">
                                    <input type="text" name="cardNum" class="frm_input name" id="cardNum"  required/>
                                    <p class="frm_tips">请填写真实身份证号</p>
                                </div>
                            </div>
                            <div class="frm_control_group">
                                <label class="frm_label">手机号</label>
                                <div class="frm_controls">
                                    <input type="text" name="tel" class="frm_input phone" id="tel"/>
                                    <p class="frm_tips">请填写常用手机号</p>
                                </div>
                            </div>
                            <div class="frm_control_group">
                                <label class="frm_label">手机验证码</label>
                                <div class="frm_controls">
                                    <input type="text" name="code" class="frm_input phoneYzm" id="code"/>
                                    <input type="button" value="获取验证码" class="btn btn_default" id="getauthcode"/>
                                </div>
                            </div>
                            <div class="toolBar">
                                <a id="finishedBtn" class="btn btn_primary" href="javascript:;">完成</a>
                            </div>
                        </form>
                    </div>
                    <!-- // step3 end -->
                </div>
            </div>

        </div>

        <!--底部-->



        <%@ include file="../../footer.jsp" %>



    </div>
    <%--<%@ include file="./aside.jsp" %>--%>
    <aside class="menu" style="margin-left: 100px;margin-right: -100px;margin-top: 10px;">
        <ul>
            <li class="person">
                <a href="user/personal.action" class="per">个人中心</a>
            </li>
            <li class="person">
                <a href="user/personal.action" class="person-detail">个人资料</a>
                <ul>
                    <li> <a href="user/information.action">个人信息</a></li>
                    <li> <a href="user/safety.action">安全设置</a></li>
                    <li> <a href="user/address.action">收货地址</a></li>

                </ul>
            </li>
            <li class="person">
                <a href="#" class="person-detail">我的交易</a>
                <ul>
                    <li><a href="user/orders.action">订单管理</a></li>
                    <li> <a href="user/information.action">退款售后</a></li>
                </ul>
            </li>

            <li class="person">
                <a href="#" class="person-detail">认证中心</a>
                <ul>
                    <li> <a href="user/designerauth.action">设计师认证</a></li>
                    <li> <a href="user/authstate.action">认证状态</a></li>
                </ul>
            </li>
            <li class="person">
                <a href="#" class="person-detail">我的小窝</a>
                <ul>
                    <li> <a href="mypublish.html">我的发表</a></li>
                    <li> <a href="mycollection.html">我的收藏</a></li>
                    <li> <a href="myattention.html">我的关注</a></li>
                    <li> <a href="mymessage.html">我的消息</a></li>
                </ul>
            </li>

        </ul>
    </aside>
</div>



<script>


    function basePath(){
        //获取当前网址，如： http://localhost:8080/ems/Pages/Basic/Person.jsp
        var curWwwPath = window.document.location.href;
        //获取主机地址之后的目录，如： /ems/Pages/Basic/Person.jsp
        var pathName = window.document.location.pathname;
        var pos = curWwwPath.indexOf(pathName);
        //获取主机地址，如： http://localhost:8080
        var localhostPath = curWwwPath.substring(0, pos);
        //获取带"/"的项目名，如：/ems
        var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
        //获取项目的basePath   http://localhost:8080/ems/
        var basePath=localhostPath+projectName+"/";
        return basePath;
    };
    var basePath=basePath();
    //显示提示框，目前三个参数(txt：要显示的文本；time：自动关闭的时间（不设置的话默认1500毫秒）；status：默认0为错误提示，1为正确提示；)
    function showTips(txt, time, status) {
        var htmlCon = '';
        if (txt != '') {
            if (status != 0 && status != undefined) {
                htmlCon = '<div class="tipsBox" style="width:120px;padding:10px;background-color:#4AAF33;border-radius:4px;-webkit-border-radius: 4px;-moz-border-radius: 4px;color:#fff;box-shadow:0 0 3px #ddd inset;-webkit-box-shadow: 0 0 3px #ddd inset;text-align:center;position:fixed;top:25%;left:50%;z-index:999999;margin-left:-120px;"><img src="static/user/person/auth/images/ok.png" style="vertical-align: middle;margin-right:5px;" alt="OK，"/>' + txt + '</div>';
            } else {
                htmlCon = '<div class="tipsBox" style="width:80px;heigh:80px;padding:10px;background-color:#D84C31;border-radius:4px;-webkit-border-radius: 4px;-moz-border-radius: 4px;color:#fff;box-shadow:0 0 3px #ddd inset;-webkit-box-shadow: 0 0 3px #ddd inset;text-align:center;position:fixed;top:25%;left:50%;z-index:999999;margin-left:-120px;"><img src="static/user/person/auth/images/err.png" style="vertical-align: middle;margin-right:5px;" alt="Error，"/>' + txt + '</div>';
            }
            $('body').prepend(htmlCon);
            if (time == '' || time == undefined) {
                time = 1500;
            }
            setTimeout(function() {
                $('.tipsBox').remove();
            }, time);
        }
    }

    $(function() {
        //AJAX提交以及验证表单
        $('#nextBtn1').click(function() {
            var email = $('#email').val();
           var username = $('#username').val();
            //var passwd2 = $('.passwd2').val();
           // var verifyCode = $('.verifyCode').val();
            var EmailReg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //邮件正则
            if (username == '') {
                showTips('请填写您的用户名~');
            }else if (email == '') {
                showTips('请填写您的邮箱~');
            } else if (!EmailReg.test(email)) {
                showTips('您的邮箱格式错咯~');
            }  else {

            //$('#step1_frm').submit();
                var datas={"username":username,"email":email};
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/user/designerauths1.action',
                    dataType: 'json', //表示返回值的数据类型
                    contentType: 'application/json;charset=UTF-8', //内容类型
                    traditional: true, //使json格式的字符串不会被转码
                    data: JSON.stringify(datas),
                    success: function (data) {
                       // alert(data.isError);
                        //alert(data);

                       //alert(data.message);

                        if(data.message=="usernameerror"){
                            alert("用户名错误");
                            // setTimeout(function(){
                            //     $("input[id='username']").focus();
                            // },3000);
                        }else if(data.message=="emailerror"){
                            alert("邮箱错误");
                            // setTimeout(function(){
                            //     $("input[id='email']").focus();
                            // },3000);
                        }else {
                            alert('成功');
                            showTips('提交成功~ 即将进入下一步', 2500, 1);
                            $('#step1').fadeOut(300);
                            $('#step2').fadeIn(500);
                            $('#st1').removeClass('current');
                            $('#st2').addClass('current');
                        }
                        //alert("e");
                    }
                });
               // $('.step').fadeOut(300).siblings().fadeIn(500);
               // $('#step2').css("display","block");
                //$('#step1').css("display","none");
                //$('#step3').css("display","none");

                //此处省略 ajax 提交表单 代码...
            }
        });


        $('#nextBtn2').click(function() {
            var file0=$('#file0').val();
            if (file0 == '') {
                showTips('请上传您的设计师证书~');
            }else {
                //$("#uploadForm").submit();


                function savePic(){
                    alert("进来了");
                    var formData = new FormData($( "#uploadPic" )[0]);
                    var ajaxUrl = "${pageContext.request.contextPath}/user/saveHeaderPic.action";
                    //alert(ajaxUrl);
                    //$('#uploadPic').serialize() 无法序列化二进制文件，这里采用formData上传
                    //需要浏览器支持：Chrome 7+、Firefox 4+、IE 10+、Opera 12+、Safari 5+。
                    $.ajax({
                        type: "POST",
                        url: ajaxUrl,
                        data: formData,
                        async: false,
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function (data) {
                            alert("成功");
                            alert(data);
                        },
                        error: function(data) {
                            alert("error:"+data.responseText);

                        }
                    });
                    return false;
                }
                showTips('提交成功~ 即将进入下一步', 2500, 1);
                $('#step2').fadeOut(300);
                $('#step3').fadeIn(500);
                //此处省略 ajax 提交表单 代码...
                $('#st1').removeClass('current');
                $('#st2').removeClass('current');
                $('#st3').addClass('current');
            }
            //var email = $('.email').val();
            // var passwd = $('.passwd').val();
            //var passwd2 = $('.passwd2').val();
            // var verifyCode = $('.verifyCode').val();
           // var EmailReg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //邮件正则


        });






            //finishedBtn
            $('#getauthcode').click(function () {
                var tel=$('#tel').val();
                var datas={"tel":tel};
                if(tel==''){
                    showTips('请填写您的手机号~');
                }else {
                    $.ajax({
                        type: 'POST',
                        url: '${pageContext.request.contextPath}/user/ajaxgetauthcode.action',
                        dataType: 'json', //表示返回值的数据类型
                        contentType: 'application/json;charset=UTF-8', //内容类型
                        traditional: true, //使json格式的字符串不会被转码
                        data: JSON.stringify(datas),
                        success: function (data) {
                            alert(data);
                            // alert(data.username);
                            // if(data.username!=null){
                            //    // $('#tel').parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('error_icon').next('span').html('手机号码已存在');
                            //     setTimeout(function(){
                            //         $("input[id='tel']").focus();
                            //     },3000);
                            // }
                            //alert("e");
                            var time = 30;
                            //var code = $('#getauthcode');

                            //alert(code);
                                //code.addClass("msgs1");
                                var t = setInterval(function() {

                                    time--;
                                    //code.html(time + "秒");
                                    $('#getauthcode').val(time + "秒");
                                    if (time == 0) {
                                        clearInterval(t);
                                        $('#getauthcode').val("重新获取");
                                    }
                                }, 1000)

                        }
                    });
                }
            });

            $('#code').blur(function () {
                var code=$('#code').val();
                var datas={"code":code};
                $.ajax({
                    type: 'POST',
                    url: basePath + 'user/ajaxAuthYzmCode.action',
                    dataType: 'json', //表示返回值的数据类型
                    traditional: true, //使json格式的字符串不会被转码
                    data: datas,
                    success: function (data) {
                        //alert(data);
                        // alert(data.username);
                        if(data=="yerror"){
                            alert('验证码错误');
                           // $('#tel').parent().siblings('.mes').find('.error').show().find('span').eq(0).removeClass().addClass('error_icon').next('span').html('手机号码已存在');
                            setTimeout(function(){
                                $("input[id='code']").focus();
                            },3000);
                        }else {
                            alert("验证码正确");
                        }
                        //alert("e");
                    }
                });




            });
        $('#finishedBtn').click(function () {
            var truename=$('#truename').val();
            var cardNum=$('#cardNum').val();
            var tel=$('#tel').val();
            var code=$('#code').val();
            if (truename == '') {
                showTips('请填写您的真实姓名~');
            }else if(cardNum==''){
                showTips('请填写您的身份证号码~');
            }else if(tel==''){
                showTips('请填写您的手机号~');
            }else if(code==''){
                showTips('请填写您的验证码~');
            }else {
            $('#step3_frm').submit();
            }

        });



        //切换步骤（目前只用来演示）
        $('.processorBox li').click(function() {
            var i = $(this).index();
            $('.processorBox li').removeClass('current').eq(i).addClass('current');
            $('.step').fadeOut(300).eq(i).fadeIn(500);
        });

    });






    $("#file0").change(function(){
        // getObjectURL是自定义的函数，见下面
        // this.files[0]代表的是选择的文件资源的第一个，因为上面写了 multiple="multiple" 就表示上传文件可能不止一个
        // ，但是这里只读取第一个
        var objUrl = getObjectURL(this.files[0]) ;
        // 这句代码没什么作用，删掉也可以
        // console.log("objUrl = "+objUrl) ;
        if (objUrl) {
            // 在这里修改图片的地址属性
            $("#img0").attr("src", objUrl) ;
        }
    }) ;
    //建立一個可存取到該file的url
    function getObjectURL(file) {
        var url = null ;
        // 下面函数执行的效果是一样的，只是需要针对不同的浏览器执行不同的 js 函数而已
        if (window.createObjectURL!=undefined) { // basic
            url = window.createObjectURL(file) ;
        } else if (window.URL!=undefined) { // mozilla(firefox)
            url = window.URL.createObjectURL(file) ;
        } else if (window.webkitURL!=undefined) { // webkit or chrome
            url = window.webkitURL.createObjectURL(file) ;
        }
        return url ;
    }
</script>+
</body>
</html>
