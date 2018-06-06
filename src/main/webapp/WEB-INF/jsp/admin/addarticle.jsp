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
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>文章标题：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" value="" placeholder="" id="" name="">
                    </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>分类栏目：</label>
                    <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
                                    <select name="" class="select">
                                        <option value="0">全部栏目</option>

                                        <option value="11">├行业动态</option>
                                        <option value="12">├行业资讯</option>
                                        <option value="13">├行业新闻</option>
                                    </select>
                                    </span> </div>
                </div>


                <!-- <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2">允许评论：</label>
                    <div class="formControls col-xs-8 col-sm-9 skin-minimal">
                        <div class="check-box">
                            <input type="checkbox" id="checkbox-pinglun">
                            <label for="checkbox-pinglun">&nbsp;</label>
                        </div>
                    </div>
                </div> -->

                <!-- <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2">缩略图：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <div class="uploader-thum-container">
                            <div id="fileList" class="uploader-list"></div>
                            <div id="filePicker">选择图片</div>

                        </div>
                    </div>
                </div> -->

                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>图片上传</label>
                    <div class="page-header formControls col-xs-4 col-sm-9">
                        <!-- <h3>FormData图片上传</h3> -->
                        <!-- <form> -->
                        <div class="form-group" id="uploadForm" enctype='multipart/form-data'>
                            <div class="h4">图片预览</div>
                            <div class="fileinput fileinput-new" data-provides="fileinput" id="exampleInputUpload">
                                <div class="fileinput-new thumbnail" style="width: 200px;height: auto;max-height:150px;">
                                    <!-- 这边有图片需要修改 -->
                                    <img id='picImg' style="width: 100%;height: auto;max-height: 140px;" src="admin/plugin/fileinput/images/noimage.png" alt="" />
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                                        <span class="btn btn-primary btn-file">
                                                    <span class="fileinput-new">选择文件</span>
                                        <span class="fileinput-exists">换一张</span>
                                        <input type="file" name="pic1" id="picID" accept="image/gif,image/jpeg,image/x-png" />
                                        </span>
                                    <a href="javascript:;" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">移除</a>
                                </div>
                            </div>
                        </div>
                        <!-- <button type="button" id="uploadSubmit" class="btn btn-info">提交</button> -->
                        <!-- </form> -->
                    </div>
                </div>



                <!-- 标签选择 -->
                <div class="main row cl">



                    <label class="form-label col-xs-4 col-sm-2">标签选择：</label>
                    <div class="select-list formControls con3 col-xs-8 col-sm-9">

                        <span><input type="checkbox" name="check1" value="" id="check1" hidden/><em class="con3-1">三文字1</em></span>
                        <span><input type="checkbox" name="check1"  value="" id="check1" hidden/><em class="con3-2">三文字2</em></span>
                        <span><input type="checkbox" name="check1"  value="" id="check1" hidden/><em class="con3-3">三文字3</em></span>
                        <span><input type="checkbox" name="check1" value="" id="check1" hidden/><em class="con3-4">三文字4</em></span>
                        <span><input type="checkbox" name="check1" value=""  id="check1" hidden/><em class="con3-5">三文字5</em></span>
                        <span><input type="checkbox" name="check1"  value="" id="check1" hidden/><em class="con3-6">三文字6</em></span>
                        <span><input type="checkbox" name="check1" value=""  id="check1" hidden/><em class="con3-7">三文字7</em></span>
                        <span><input type="checkbox" name="check1" value="" id="check1" hidden/><em class="con3-8">三文字8</em></span>
                    </div>


                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2">文章内容：</label>
                    <div class="col-xs-8 col-sm-9">
                        <script id="editor" type="text/plain" ></script>
                        </div>
                        </div>


                        <div class="row cl">
                            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                            <button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
                        <button onClick="article_save();" class="btn btn-secondary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 保存草稿</button>
                        <button onClick="removeIframe();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
                        </div>
                        </div>



                        </form>
                        <div style="width:100%;height:100px;"></div>




                            </article>

    </div>
</section>
</body>
</html>