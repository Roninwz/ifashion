<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>



    <!-- 图片上传bootstrap fileinput插件 -->
    <link href="${pageContext.request.contextPath }/static/admin/plugin/fileinput/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/static/admin/plugin/fileinput/css/bootstrap-fileinput.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/lib/My97DatePicker/4.8/WdatePicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/lib/jquery.validation/1.14.0/validate-methods.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/lib/jquery.validation/1.14.0/messages_zh.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/admin/lib/webuploader/0.1.5/webuploader.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/ueditor/ueditor.all.js">
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/ueditor/lang/zh-cn/zh-cn.js"></script>
    <!-- 标签选择js -->
    <script src="${pageContext.request.contextPath }/static/admin/js/tag.js"></script>

    <!-- 图片上传js -->
    <!-- <script src="js/jquery.min.js"></script> -->
    <script src="${pageContext.request.contextPath }/static/admin/plugin/fileinput/js/bootstrap-fileinput.js"></script>
    <!-- bootstrap -->
    <script src="${pageContext.request.contextPath }/static/admin/bootstrap/js/bootstrap.min.js"></script>
    <!--/_footer /作为公共模版分离出去-->


    <!-- 日期插件 -->
    <script src="${pageContext.request.contextPath }/static/user/person/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
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

            <form class="form form-horizontal" name="upfile" id="form-article-add" enctype='multipart/form-data' action="admin/addHandleTopic.action" method="post">






                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>话题图片上传</label>
                    <div class="page-header formControls col-xs-4 col-sm-9">
                        <!-- <h3>FormData图片上传</h3> -->
                        <!-- <form> -->
                        <div class="form-group" id="uploadForm" enctype='multipart/form-data'>
                            <div class="h4">图片预览</div>
                            <div class="fileinput fileinput-new" data-provides="fileinput" id="exampleInputUpload">
                                <div class="fileinput-new thumbnail" style="width: 200px;height: auto;max-height:150px;">
                                    <!-- 这边有图片需要修改 -->
                                    <img id='picImg' style="width: 100%;height: auto;max-height: 140px;" src="static/admin/plugin/fileinput/images/noimage.png" alt="" />
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                                        <span class="btn btn-primary btn-file">
                                                    <span class="fileinput-new">选择文件</span>
                                        <span class="fileinput-exists">换一张</span>
                                        <input type="file" name="topImgurl" id="picID" accept="image/gif,image/jpeg,image/x-png" />
                                        </span>
                                    <a href="javascript:;" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">移除</a>
                                </div>
                            </div>
                        </div>
                        <!-- <button type="button" id="uploadSubmit" class="btn btn-info">提交</button> -->
                        <!-- </form> -->
                    </div>
                </div>
                <div class="row cl">
                <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>开始时间：</label>
                <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" onClick="WdatePicker()"  placeholder="请输入开始时间"  name="topicStart" readonly>
                    <%--<input type="text" id="user-name2" placeholder="name">  --%>
                </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>结束时间：</label>
                    <div class="formControls col-xs-8 col-sm-9">
                        <input type="text" class="input-text" onClick="WdatePicker()" value="" placeholder="请输入结束时间"  name="topicEnd" readonly>
                    </div>
                </div>


                <!-- 标签选择 -->
                <!-- <div class="main row cl">



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


                </div> -->
                <div class="row cl">
                    <label class="form-label col-xs-4 col-sm-2">话题内容：</label>
                    <div class="col-xs-8 col-sm-9">
                        <script id="editor" type="text/plain" name="topicContent"></script>
                        </div>
                        </div>


                        <div class="row cl">
                            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                            <button  class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
                        <button onClick="article_save();" class="btn btn-secondary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 保存草稿</button>
                        <button onClick="removeIframe();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
                        </div>
                        </div>



                        </form>
                        <div style="width:100%;height:100px;"></div>

        </article>

    </div>
</section>





<script type="text/javascript">
    $(function() {
        //比较简洁，细节可自行完善
        $('#uploadSubmit').click(function() {
            var data = new FormData($('#uploadForm')[0]);
            $.ajax({
                url: 'xxx/xxx',
                type: 'POST',
                data: data,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function(data) {
                    console.log(data);
                    if (data.status) {
                        console.log('upload success');
                    } else {
                        console.log(data.message);
                    }
                },
                error: function(data) {
                    console.log(data.status);
                }
            });
        });

    })
</script>





<script type="text/javascript">
    $(function() {
        // $('.skin-minimal input').iCheck({
        //     checkboxClass: 'icheckbox-blue',
        //     radioClass: 'iradio-blue',
        //     increaseArea: '20%'
        // });
        //
        //
        // $list = $("#fileList"),
        //     $btn = $("#btn-star"),
        //     state = "pending",
        //     uploader;
        //
        // var uploader = WebUploader.create({
        //     auto: true,
        //     swf: 'lib/webuploader/0.1.5/Uploader.swf',
        //
        //     // 文件接收服务端。
        //     server: 'fileupload.php',
        //
        //     // 选择文件的按钮。可选。
        //     // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        //     pick: '#filePicker',
        //
        //     // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
        //     resize: false,
        //     // 只允许选择图片文件。
        //     accept: {
        //         title: 'Images',
        //         extensions: 'gif,jpg,jpeg,bmp,png',
        //         mimeTypes: 'image/*'
        //     }
        // });
        // uploader.on('fileQueued', function(file) {
        //     var $li = $(
        //         '<div id="' + file.id + '" class="item">' +
        //         '<div class="pic-box"><img></div>' +
        //         '<div class="info">' + file.name + '</div>' +
        //         '<p class="state">等待上传...</p>' +
        //         '</div>'
        //         ),
        //         $img = $li.find('img');
        //     $list.append($li);
        //
        //     // 创建缩略图
        //     // 如果为非图片文件，可以不用调用此方法。
        //     // thumbnailWidth x thumbnailHeight 为 100 x 100
        //     uploader.makeThumb(file, function(error, src) {
        //         if (error) {
        //             $img.replaceWith('<span>不能预览</span>');
        //             return;
        //         }
        //
        //         $img.attr('src', src);
        //     }, thumbnailWidth, thumbnailHeight);
        // });
        // // 文件上传过程中创建进度条实时显示。
        // uploader.on('uploadProgress', function(file, percentage) {
        //     var $li = $('#' + file.id),
        //         $percent = $li.find('.progress-box .sr-only');
        //
        //     // 避免重复创建
        //     if (!$percent.length) {
        //         $percent = $('<div class="progress-box"><span class="progress-bar radius"><span class="sr-only" style="width:0%"></span></span></div>').appendTo($li).find('.sr-only');
        //     }
        //     $li.find(".state").text("上传中");
        //     $percent.css('width', percentage * 100 + '%');
        // });
        //
        // // 文件上传成功，给item添加成功class, 用样式标记上传成功。
        // uploader.on('uploadSuccess', function(file) {
        //     $('#' + file.id).addClass('upload-state-success').find(".state").text("已上传");
        // });
        //
        // // 文件上传失败，显示上传出错。
        // uploader.on('uploadError', function(file) {
        //     $('#' + file.id).addClass('upload-state-error').find(".state").text("上传出错");
        // });
        //
        // // 完成上传完了，成功或者失败，先删除进度条。
        // uploader.on('uploadComplete', function(file) {
        //     $('#' + file.id).find('.progress-box').fadeOut();
        // });
        // uploader.on('all', function(type) {
        //     if (type === 'startUpload') {
        //         state = 'uploading';
        //     } else if (type === 'stopUpload') {
        //         state = 'paused';
        //     } else if (type === 'uploadFinished') {
        //         state = 'done';
        //     }
        //
        //     if (state === 'uploading') {
        //         $btn.text('暂停上传');
        //     } else {
        //         $btn.text('开始上传');
        //     }
        // });
        //
        // $btn.on('click', function() {
        //     if (state === 'uploading') {
        //         uploader.stop();
        //     } else {
        //         uploader.upload();
        //     }
        // });
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
        var ue = UE.getEditor('editor');
       UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
        UE.Editor.prototype.getActionUrl = function(action){
            if(action == '/ueditor/upload/images.action'){
                return basePath+'ueditor/upload/images.action';
            }else{
                return this._bkGetActionUrl.call(this, action);
            }


        }

    });

</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>