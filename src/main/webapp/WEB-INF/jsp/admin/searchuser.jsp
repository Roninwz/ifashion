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

            <div class="text-c">
                    <span class="select-box inline">
                                    <select name="" class="select">
                                        <option value="0">全部分类</option>
                                        <option value="1">用户</option>
                                        <option value="2">设计师</option>
                                    </select>
                                    </span>
                <input type="text" name=""  placeholder="用户名/设计师名" style="width:250px" class="input-text">
                <button name="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
            </div>
            <!-- 导出excel -->
            <button name="" id="" class="btn btn-success" type="submit"> 导出用户excel</button>

            <div class="cl pd-5 bg-1 bk-gray mt-20">
                    <span class="l">
                                    <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
                                    <a class="btn btn-primary radius" data-title="添加用户" href="adduser.html"><i class="Hui-iconfont">&#xe600;</i> 添加用户</a>
                                    </span>
                <span class="r">共有数据：<strong>54</strong> 条</span>
            </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="25"><input type="checkbox" name="" value=""></th>
                        <th width="40">ID</th>
                        <th width="80">用户名</th>
                        <th width="80">电话</th>
                        <th width="80">邮箱</th>
                        <th width="60">性别</th>
                        <th width="60">年龄</th>
                        <th width="60">时尚积分值</th>
                        <th width="80">注册时间</th>
                        <th width="60">用户身份</th>
                        <th width="60">用户状态</th>
                        <th width="120">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="text-c">
                        <td><input type="checkbox" value="" name=""></td>
                        <td>10001</td>
                        <td><a style="cursor:pointer" href="articledetail.html">资讯标题</a></td>
                        <td>行业动态</td>
                        <td>H-ui</td>
                        <td>2014-6-</td>
                        <td>21212</td>
                        <td>21212</td>
                        <td>21212</td>
                        <td class="td-status"><span class="label label-success radius">已发布</span></td>
                        <td class="td-status"><span class="label label-success radius">已发布</span></td>

                        <td class="f-14 td-manage">
                            <a style="text-decoration:none" class="ml-5" href="updateuser.html" title="编辑"><i class="Hui-iconfont">&#xe6df;编辑</i></a>
                            <a style="text-decoration:none" class="ml-5" onClick="article_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;删除</i></a></td>
                    </tr>

                    </tbody>
                </table>
            </div>


        </article>

    </div>
</section>
</body>
</html>