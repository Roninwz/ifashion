<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/8
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--fmt  国际化格式--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>


<%@ include file="../../header.jsp" %>


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


    <link href="static/admin/plugin/fileinput/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/admin/plugin/fileinput/css/bootstrap-fileinput.css" rel="stylesheet">

    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--<script src="static/user/designer/js/jquery.min.js"></script>--%>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <%--<script src="static/user/common/js/mouse.js"></script>--%>
    <script src="static/user/login/js/login.js"></script>

    <%--<script type="text/javascript" src="static/user/login/js/modal.js"></script>--%>
    <%--其它js--%>


    <!-- 图片上传js -->
    <!-- <script src="js/jquery.min.js"></script> -->
    <%--<script src="${pageContext.request.contextPath }/static/admin/plugin/fileinput/js/bootstrap-fileinput.js"></script>--%>
    <%--<!-- bootstrap -->--%>
    <%--<script src="${pageContext.request.contextPath}/static/admin/bootstrap/js/bootstrap.min.js"></script>--%>
    <!--/_footer /作为公共模版分离出去-->
    <%--<link rel="stylesheet" type="text/css" href="static/user/designer/css/base.css">--%>
    <link rel="stylesheet" type="text/css" href="static/user/designer/css/layout.css">
    <link rel="stylesheet" type="text/css" href="static/user/designer/css/hurst.css">
    <%--设计师头像--%>
    <link rel="stylesheet" type="text/css" href="static/user/designer/css/head.css">
    <link rel="stylesheet" type="text/css" href=" static/user/designer/honeySwitch/honeySwitch.css">
    <script src="static/user/designer/honeySwitch/honeySwitch.js" type="text/javascript"></script>
    <script src="static/user/designer/js/jquery.cookie.js" type="text/javascript"></script>
    <script type="text/javascript" src="static/user/designer/js/miniBar.js"></script>


</head>
<body>
<c:set var="user" value="${sessionScope.user}"/>
<!-- 左侧导航栏 -->
<div id="about">
    <div class="mTags wrap">
        <a href="#">iFashion</a>>
        <a href="/member/index/channel/7.html">设计师个人中心</a>
    </div>
    <div class="mebBox">
        <div class="meb-cont clearfix wrap">
            <div class="meb-nav left dInline">
                <ul class="clearfix">
                    <li>
                        <a href="user/designer.action">设计师首页</a>
                    </li>
                    <li class="on">
                        <a href="user/account.action">账户管理</a>
                    </li>
                    <li>
                        <a href="user/trade.action">交易中心</a>
                        <!-- 消息提醒，我的交易， -->
                    </li>
                    <li>
                        <a href="user/design.action">设计之家</a>
                        <!-- 我的作品  -->
                    </li>
                    <li>
                        <a href="user/other.action">其它</a>
                    </li>
                </ul>
            </div>
            <div class="meb-right right dInline">

                <div class="mr-detail">
                    <div class="mr-tab clearfix">
                        <a class="on">个人资料管理 </a>
                        <a>修改密码</a>
                        <a>邮箱绑定</a>
                        <a>手机号绑定</a>
                    </div>
                    <div class="me-box me-box1">
                        <!-- 个人资料设置 -->
                        <div class="me-dl" style="display:block;">
                            <div class="me-one">
                                <div class="accForm">
                                    <form action="user/updatedesigneraccount.action" enctype="multipart/form-data" name="editM" method="post">

                                        <div class="afl clearfix">
                                            <label class="left">
                                                用户头像
                                            </label>
                                            <div class="af-r left dInline">
                                                    <div class="my_box">
                                                            <input class="jide" name="userImgurl" type="hidden" value="" />
                                                            <img src="${user.userImgurl}" class="my_pic1"/>

                                                    </div>
                                                    <div class="pic_box" id="pic_box">
                                                        <div class="header">
                                                            <p>设置头像</p>
                                                            <span class="close">x</span>
                                                        </div>
                                                        <span class="xiantiao"></span>
                                                        <ul>
                                                            <li><img src="static/user/designer/img/0.png" /></li>
                                                            <li><img src="static/user/designer/img/d1.png" /></li>
                                                            <li><img src="static/user/designer/img/3.png" /></li>
                                                            <li><img src="static/user/designer/img/4.png" /></li>
                                                            <li><img src="static/user/designer/img/5.png" /></li>
                                                            <li><img src="static/user/designer/img/6.png" /></li>
                                                            <li><img src="static/user/designer/img/7.png" /></li>
                                                            <li><img src="static/user/designer/img/0.png" /></li>
                                                            <li><img src="static/user/designer/img/1.png" /></li>
                                                            <li><img src="static/user/designer/img/3.png" /></li>
                                                            <li><img src="static/user/designer/img/4.png" /></li>
                                                            <li><img src="static/user/designer/img/5.png" /></li>
                                                            <li><img src="static/user/designer/img/6.png" /></li>
                                                            <li><img src="static/user/designer/img/7.png" /></li>
                                                            <li><img src="static/user/designer/img/0.png" /></li>
                                                            <li><img src="static/user/designer/img/1.png" /></li>
                                                            <li><img src="static/user/designer/img/3.png" /></li>
                                                            <li><img src="static/user/designer/img/4.png" /></li>
                                                            <li><img src="static/user/designer/img/5.png" /></li>
                                                            <li><img src="static/user/designer/img/6.png" /></li>
                                                            <li><img src="static/user/designer/img/7.png" /></li>
                                                            <li><img src="static/user/designer/img/0.png" /></li>
                                                            <li><img src="static/user/designer/img/1.png" /></li>
                                                            <li><img src="static/user/designer/img/3.png" /></li>
                                                            <li><img src="static/user/designer/img/4.png" /></li>
                                                            <li><img src="static/user/designer/img/5.png" /></li>
                                                            <li><img src="static/user/designer/img/6.png" /></li>
                                                            <li><img src="static/user/designer/img/7.png" /></li>
                                                            <li><img src="static/user/designer/img/0.png" /></li>
                                                            <li><img src="static/user/designer/img/1.png" /></li>
                                                            <li><img src="static/user/designer/img/3.png" /></li>
                                                            <li><img src="static/user/designer/img/4.png" /></li>
                                                            <li><img src="static/user/designer/img/5.png" /></li>
                                                            <li><img src="static/user/designer/img/6.png" /></li>
                                                            <li><img src="static/user/designer/img/7.png" /></li>
                                                        </ul>
                                                        <div class="bt_box">
                                                            <a class="gb" href="javascript:">关闭</a>
                                                            <a class="queren" href="javascript:">保存头像</a>
                                                        </div>
                                                    </div>

                                            </div>
                                        </div>
                                        <div class="afl clearfix">
                                            <label class="left">
                                                用户名
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="text" class="ar-txt" name="realname"  value="${user.username}" />
                                            </div>
                                        </div>
                                        <div class="afl clearfix">
                                            <label class="left">
                                                真实姓名
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="text" class="ar-txt" name="truename"  value="${user.truename}" />
                                            </div>
                                        </div>
                                        <div class="afl clearfix">
                                            <label class="left">
                                                性别
                                            </label>
                                                <div class="af-r left dInline">
                                                    <span>
													<input type="radio" name="sex" value="M"
                                                    <c:if test="${user.sex=='M'}">
                                                               checked
                                                    </c:if>
                                                    > 男
												</span>
                                                <span>
													<input type="radio" name="sex"  value="F"
                                                    <c:if test="${user.sex == 'F'}">
                                                           checked
                                                    </c:if>

                                                    > 女
												</span> </div>
                                        </div>
                                        <div class="afl clearfix">
                                            <label class="left">
                                                个人介绍
                                            </label>
                                            <div class="af-r left dInline">
                                                <textarea   name="userIntroduce"  id="" style="height: 150px;width: 300px;"  value="${user.userIntroduce}"></textarea>
                                            </div>
                                        </div>
                                        <div class="afl clearfix">
                                            <label class="left">
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="submit" value="提 交" class="ar-btn">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- 修改密码 -->
                        <div class="me-dl" style="display:none;">
                            <div class="me-one">
                                <div class="accForm">
                                    <form action="user/updatedesignerpass.action" enctype="multipart/form-data" name="editP" method="post">
                                        <div class="afl clearfix">
                                            <label class="left">
                                                当前密码
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="password" class="ar-txt" name="beforePass" placeholder="请输入当前密码" value="" />
                                            </div>
                                        </div>
                                        <div class="afl clearfix">
                                            <label class="left">
                                                新密码
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="password" class="ar-txt" name="password" placeholder="请输入新密码" value="" />
                                            </div>
                                        </div>
                                        <div class="afl clearfix">
                                            <label class="left">
                                                确认新密码
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="password" class="ar-txt" name="surePass" placeholder="请确认输入的新密码" value="" />
                                            </div>
                                        </div>
                                        <div class="afl clearfix">
                                            <label class="left">
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="submit" value="提 交" class="ar-btn">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- 修改密码结束 -->
                        <!-- 邮箱绑定 -->
                        <div class="me-dl" style="display:none;">
                            <div class="me-one">
                                <div class="accForm">
                                    <form action="" enctype="multipart/form-data" name="editP" method="post" onsubmit="return checkPasspost();">
                                        <div class="afl clearfix">
                                            <label class="left">
                                                当前邮箱
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="text" class="ar-txt" name="password" placeholder="请输入当前邮箱" value="" />
                                            </div>
                                        </div>

                                        <div class="afl clearfix">
                                            <label class="left">
                                                新邮箱
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="text" class="ar-txt" name="password2" placeholder="请确认输入的新邮箱" value="" />
                                            </div>
                                        </div>
                                        <div class="afl clearfix">
                                            <label class="left">
                                                邮箱验证码
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="text" class="ar-txt" style="width: 140px;" name="password2" placeholder="请确认输入的新邮箱" value="" />
                                                <input type="button" class="ar-txt" style="width: 140px;" name="password2" value="获取邮箱验证码" />
                                            </div>
                                        </div>
                                        <div class="afl clearfix">
                                            <label class="left">
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="submit" value="提 交" class="ar-btn">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- 邮箱绑定结束 -->
                        <!-- 手机号 -->
                        <div class="me-dl" style="display:none;">
                            <div class="me-one">
                                <div class="accForm">
                                    <form action="" enctype="multipart/form-data" name="editP" method="post" onsubmit="return checkPasspost();">
                                        <div class="afl clearfix">
                                            <label class="left">
                                                当前手机号
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="text" class="ar-txt" name="password" placeholder="请输入当前手机号" value="" />
                                            </div>
                                        </div>

                                        <div class="afl clearfix">
                                            <label class="left">
                                            </label>
                                            <div class="af-r left dInline">
                                                <input type="submit" value="提 交" class="ar-btn">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- 手机号结束 -->

                    </div>

                </div>

                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(function() {
        $('.mr-tab a').each(function(index) {
            $(this).click(function() {
                $(this).addClass('on').siblings().removeClass('on');
                $('.me-dl').eq(index).show().siblings().hide();
            })
        });
    })
</script>

<!-- 头像 -->
<script type="text/javascript">
    $(".close,.gb").click(function(){
        $(".pic_box").animate({
            'top':'-1000px'
        },500);
    }),
        $(".my_box").click(function(){
            $(".pic_box").animate({
                'top':'15px',
            },300);
        }),
        $(".queren").click(function(){
            var src = $(".jide").val();
            //$.ajax与index.php交互,在php中判断文件,保存至数据库即可

            /*if(src != ""){
                $.ajax({
                    url:"index.php",
                    type:'post',
                    data:{'imgsrc':src},
                    success:function(data){
                        $(".my_pic").attr('src',src);
                        $(".pic_box").animate({
                            'top':'-1000px'
                        },500);
                        console.log(data);
                    }
                })
            }else{
                return false;
            }*/

            /**
             * 后台我是用Thinkphp框架写的代码如下
             $show=M('user')->getByusername($_SESSION['_username']);
             if(!empty($_POST['imgsrc'])){
			$_POST['id']=$show['id'];
			$x=$info->create();
			$res=$info->save();
			if($res){
				echo json_encode($_POST['imgsrc']);
			}
		}
             */


            //效果展示,在服务器中把这一段删除,用上面那一段
            if(src != ""){
                $(".my_pic1").attr('src',src);
                $(".pic_box").animate({
                    'top':'-1000px'
                },500);
            }else{
                return false;
            }

        });
    var $box = document.getElementById('pic_box');
    var $li = $box.getElementsByTagName('li');
    var index = 0;
    for(var i=0;i<$li.length;i++){
        $li[i].index=i;
        $li[i].onclick=function(){
            $li[index].style.borderRadius="15%";
            this.style.borderRadius="50%";
            index = this.index;
        }
    }
    $(".pic_box li img").click(function(){
        var src=$(this).attr("src");
        $(".jide").val(src);
    })



</script>








<%@ include file="../../footer.jsp" %>
</body>
</html>
