<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/3
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>



<!DOCTYPE HTML>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="Bookmark" href="favicon.ico">
    <link rel="Shortcut Icon" href="favicon.ico" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="static/admin/lib/html5.js"></script>
    <script type="text/javascript" src="static/admin/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="static/admin/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="static/admin/h-ui.static/admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="static/admin/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="static/admin/h-ui.static/admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="static/admin/h-ui.static/admin/css/style.css" />
    <link rel="stylesheet" type="text/css" href="static/admin/css/index.css">
    <!--[if IE 6]>
    <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <!--/meta 作为公共模版分离出去-->

    <title>iFashion</title>
    <meta name="keywords" content="iFashion 时尚">
</head>

<body>
<!--_header -->
<header class="navbar-wrapper">
    <div class="navbar navbar-fixed-top">
        <div class="container-fluid cl">
            <!-- logo -->
            <a class="logo navbar-logo f-l mr-10 hidden-xs" href="/admin/index"><img src="static/admin/images/logo.png"></a>

            <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>

            <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
                <ul class="cl">
                    <li>超级管理员</li>
                    <li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A">admin <i class="Hui-iconfont">&#xe6d5;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
                            <!-- <li><a href="#">切换账户</a></li> -->
                            <li><a href="/static/admin/logout">退出</a></li>
                        </ul>
                    </li>
                    <li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">1</span><i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a> </li>
                    <li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
                            <li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
                            <li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
                            <li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
                            <li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
                            <li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<!--/_header -->

<!--_menu -->
<aside class="Hui-aside">

    <div class="menu_dropdown bk_2">
        <!-- 文章管理 -->
        <dl  l id="menu-article">
            <dt><i class="Hui-iconfont">&#xe616;</i> &nbsp;&nbsp;文章管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="article.html" title="文章管理">&nbsp;文章管理</a></li>
                    <!-- <li><a href=".html" title="类别管理">&nbsp;类别管理</a></li> -->
                    <li><a href="review.html" title="评论列表">&nbsp;评论列表</a></li>
                    <li><a href="complain.html" title="举报反馈">&nbsp;举报反馈</a></li>
                </ul>
            </dd>
        </dl>
        <!-- 用户管理 -->

        <dl id="menu-member">
            <dt><i class="Hui-iconfont">&#xe60d;</i> &nbsp;&nbsp;用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="user.html" title="用户列表">&nbsp;用户列表</a></li>
                    <!-- <li><a href="member-del.html" title="删除的会员">删除的会员</a></li> -->
                    <!-- <li><a href="member-level.html" title="等级管理">等级管理</a></li> -->
                    <!-- <li><a href="member-scoreoperation.html" title="积分管理">积分管理</a></li> -->
                    <!-- <li><a href="member-record-browse.html" title="浏览记录">浏览记录</a></li> -->
                    <!-- <li><a href="member-record-download.html" title="下载记录">下载记录</a></li> -->
                    <!-- <li><a href="member-record-share.html" title="分享记录">分享记录</a></li> -->
                </ul>
            </dd>
        </dl>
        <!-- 权限管理 -->
        <dl id="menu-admin">
            <dt><i class="Hui-iconfont">&#xe62d;</i>&nbsp; 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="role.html" title="角色管理">&nbsp;角色管理</a></li>
                    <li><a href="permission.html" title="权限管理">&nbsp;权限管理</a></li>
                    <li><a href="adminlist.html" title="管理员列表">&nbsp;管理员列表</a></li>
                </ul>
            </dd>
        </dl>
        <!-- 社区管理 -->
        <dl id="menu-tongji">
            <dt><i class="Hui-iconfont">&#xe61a;</i>&nbsp;&nbsp;&nbsp;社区管理 <i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="topic.html" title="话题管理">&nbsp;话题管理</a></li>
                    <li><a href="discuss.html" title="话题讨论列表">&nbsp;话题讨论列表</a></li>
                    <!-- <li><a href="charts-3.html" title="区域图">区域图</a></li>
                    <li><a href="charts-4.html" title="柱状图">柱状图</a></li>
                    <li><a href="charts-5.html" title="饼状图">饼状图</a></li>
                    <li><a href="charts-6.html" title="3D柱状图">3D柱状图</a></li>
                    <li><a href="charts-7.html" title="3D饼状图">3D饼状图</a></li> -->
                </ul>
            </dd>
        </dl>

        <!-- 其他管理  .Hui-iconfont-news   -->
        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe616;</i> &nbsp;&nbsp;其他管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="tag.html" title="标签管理">&nbsp;标签管理</a></li>
                    <!-- <li><a href="product-category.html" title="分类管理">分类管理</a></li>
                    <li><a href="product-list.html" title="产品管理">产品管理</a></li> -->
                </ul>
            </dd>
        </dl>




        <dl id="menu-system">
            <dt><i class="Hui-iconfont">&#xe62e;</i>&nbsp;&nbsp; 设置<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="system-base.html" title="系统设置">&nbsp;系统设置</a></li>
                    <!-- <li><a href="system-category.html" title="栏目管理">栏目管理</a></li>
                    <li><a href="system-data.html" title="数据字典">数据字典</a></li> -->
                    <li><a href="system-person.html" title="个人设置">&nbsp;个人设置</a></li>
                    <li><a href="system-log.html" title="系统日志">&nbsp;系统日志</a></li>
                </ul>
            </dd>
        </dl>
    </div>
</aside>
<div class="dislpayArrow hidden-xs">
    <a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a>
</div>
<!-- menu -->

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <!-- <span class="c-999 en">&gt;</span> -->
        <!-- <span class="c-666">我的桌面</span>  -->
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <!-- 内容填充 -->
    <div class="Hui-article">
        <article class="cl pd-20">

        </article>

    </div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="static/admin/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/admin/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="static/admin/h-ui.static/admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">
</script>
<!--/请在上方写此页面业务相关的脚本-->


</body>

</html>