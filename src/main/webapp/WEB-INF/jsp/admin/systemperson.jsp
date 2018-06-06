<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="left.jsp"%>

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="/" class="maincolor">首页</a>
        <!-- <span class="c-999 en">&gt;</span> -->
        <!-- <span class="c-666">我的桌面</span>  -->
        <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <!-- 内容填充 -->
    <div class="Hui-article">
        <article class="cl pd-20">

            <div id="tab_demo" class="HuiTab">
                <div class="tabBar clearfix"><span>个人信息设置</span><span>修改密码</span></div>
                <div class="tabCon">
                    <form class="form form-horizontal" id="form-article-add" action="admin/updatepassword" method="POST">

                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>管理员名：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="text" class="input-text" value=""   name="username">
                            </div>
                        </div>

                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>管理员简介：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="text" class="textarea radius" value="" placeholder="请输入个人简介-1000字以内" name="introduce">
                            </div>
                        </div>


                        <div class="row cl">
                            <label class="form-label col-xs-10 col-sm-2"></label>
                            <div class="col-xs-8 col-sm-9">
                                <input class=" btn btn-default radius" type="submit" value="确认修改">
                            </div>

                        </div>
                    </form>
                </div>




                <div class="tabCon">


                    <form class="form form-horizontal" id="form-article-add2" action="admin/updatepassword" method="POST">

                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>当前密码：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="text" class="input-text" value="" placeholder="" name="username">
                            </div>
                        </div>
                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>新密码：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="password" class="input-text" value="" placeholder="" name="username">
                            </div>
                        </div>
                        <div class="row cl">
                            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>确认密码密码：</label>
                            <div class="formControls col-xs-8 col-sm-9">
                                <input type="password" class="input-text" value="" placeholder=""  name="username">
                            </div>
                        </div>


                        <div class="row cl">
                            <label class="form-label col-xs-10 col-sm-2"></label>
                            <div class="col-xs-8 col-sm-9">
                                <input class=" btn btn-default radius" type="submit" value="确认修改">
                            </div>

                        </div>
                    </form>
                </div>
            </div>


        </article>

    </div>
</section>
</body>
</html>