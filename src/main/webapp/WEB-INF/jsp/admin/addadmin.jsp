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
            <form class="form form-horizontal" id="form-article-add" enctype='multipart/form-data'>

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>管理员名：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="" placeholder="" id="" name="username">
                    </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>角色名：</label>
                    <div class="check-box">
                        <input type="checkbox" id="checkbox-1">
                        <label for="checkbox-1">复选框</label>
                    </div>
                    <div class="check-box">
                        <input type="checkbox" id="checkbox-2">
                        <label for="checkbox-2">复选框 </label>
                    </div>
                    <div class="check-box">
                        <input type="checkbox" id="checkbox-3" checked>
                        <label for="checkbox-3">复选框 checked状态</label>
                    </div>
                </div>



                <div class="row cl">
                    <label class="form-label col-xs-10 col-sm-2"></label>
                    <div class="col-xs-8 col-sm-9">
                        <input class=" btn btn-default radius" type="submit" value="确认添加">
                    </div>

                </div>

            </form>
        </article>

    </div>
</section>
</body>
</html>