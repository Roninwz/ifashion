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
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>


</head>
<body>
<%--头部--%>


<div class='w1180 ad' id="OL_SYS_925_51">
</div>

<div class='w1180 logoAndlogin'>
    <h1 class='logo'>
        <a href="">
            <img src='static/user/common/top/images/top.png' style='padding-left:200px' alt='iFashion' title='iFashion' />
        </a>
    </h1>
    <div class="login">

        <a href="" target="_self" rel="nofollow">登录</a> |
        <a href="" target="_self" rel="nofollow">注册</a>

        <!-- 个人中心 -->
        <!-- <a href="" target="_self" rel="nofollow">个人中心</a> -->
    </div>
</div>


<div class='navSearch'>
    <div class="navBg"></div>
    <div class="w1180">
        <div class="nav1">
            <a href="index.html" class="here">首页</a>
            <a href="clothes.html">穿衣搭配</a>
            <a href="community.html">社区精选</a>
            <a href="information.html">资讯</a>
            <a href="online.html">私人定制</a>
            <a href="javascript:void(0);" class="searchBt"></a>
        </div>
        <div class="navChilren">
            <ul>
                <li></li>
                <li></li>
                <li>
                    <a href="forum.html" target="_blank">论坛</a>
                    <a href="community">社区</a>
                </li>
                <li></li>

            </ul>
        </div>
    </div>
    <div class='w1180 search'>
        <form id="searchPage" target="_blank" method="get" action="user/search" accept-charset="utf8">
            <div class="mainsearch">
                <input onkeyup="selBrand('searchpro','auto_brand')" type="text" class="main_input" id="searchpro" autocomplete="off" name="q" value="请输入名称">
                <div class="c1_se_2_c" id="auto_brand" style="display: none;"></div>
            </div>
            <input type="hidden" name="s" value="15679544665037353740">
            <input type="hidden" name="nsid" value="1" class="aritcleType">
            <input type="button" class="mainbtn" id="J_search_sub" value="">
            <input type="button" title='关闭搜索框' class="closeSearchbtn" value="">
        </form>
        <div class='hotpro'>
            <a href="" title="资讯-夏纳电影节" target="_blank">资讯-夏纳电影节</a>
            <a href="" title="定制-裙子" target="_blank">定制-裙子</a>
            <a href="" title="定制-运动鞋" target="_blank">定制-运动鞋</a>
            <!-- 设计师 -->
            <a href="" title="设计师-房莹" target="_blank">设计师-房莹</a>
            <a href="" title="话题" target="_blank">话题-PVC</a>
            <!-- <a href="" title="?????" target="_blank"></a> -->
        </div>
    </div>



</div>

<!--crazy start-->
<div id="crazynavdown">
    <div id="OL_SYS_938_51" class="w1180 s"></div>
    <div class="b">
        <div id="OL_SYS_943_51" class="b1"></div>
        <div id="OL_SYS_448_51" class="b2"></div>
    </div>
</div>
<!--crazy end-->


<%--头部结束--%>




















<%--底部--%>




<div class="footer" style="margin-top:50px; height:400px" >
    <div class="footer-wrap">
        <div class="footer-info">
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
