
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
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>




    <!-- 图片上传bootstrap fileinput插件 -->
    <link href="${pageContext.request.contextPath }/static/admin/plugin/fileinput/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/static/admin/plugin/fileinput/css/bootstrap-fileinput.css" rel="stylesheet">

    <!-- 标签 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/admin/css/tag.css">
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
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>

</head>
<body style="background-color: #FFFFFF">
<%@ include file="../../header.jsp" %>
<div class="Hui-article" style="background-color: #F5F5F5;margin-top: -100px"  >
    <article class="cl pd-20" style="margin: 100px">
        <form class="form form-horizontal" id="form-article-add" enctype='multipart/form-data' action="user/publishcheck.action?clothesTagId=${param.clothesTagId}" method="post">
            <div class="row cl" style="padding: 30px;font-size: 18px;">
                <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>文章标题：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text" class="input-text" value="" placeholder="" id="" name="articleTitle">
                </div>
            </div>

            <!-- 标签选择 -->
            <div class="main row cl">



                <%--<label class="form-label col-xs-4 col-sm-2">标签选择：</label>--%>
                <%--<div class="select-list formControls con3 col-xs-8 col-sm-9">--%>

                    <%--<span><input type="checkbox" name="check1" value="" id="check1" hidden/><em class="con3-1">时装</em></span>--%>
                    <%--<span><input type="checkbox" name="check2"  value="" id="check1" hidden/><em class="con3-2">三文字2</em></span>--%>
                    <%--<span><input type="checkbox" name="check3"  value="" id="check1" hidden/><em class="con3-3">三文字3</em></span>--%>
                    <%--<span><input type="checkbox" name="check4" value="" id="check1" hidden/><em class="con3-4">三文字4</em></span>--%>
                    <%--<span><input type="checkbox" name="check5" value=""  id="check1" hidden/><em class="con3-5">三文字5</em></span>--%>
                    <%--<span><input type="checkbox" name="check6"  value="" id="check1" hidden/><em class="con3-6">三文字6</em></span>--%>
                    <%--<span><input type="checkbox" name="check7" value=""  id="check1" hidden/><em class="con3-7">三文字7</em></span>--%>
                    <%--<span><input type="checkbox" name="check8" value="" id="check1" hidden/><em class="con3-8">三文字8</em></span>--%>
                <%--</div>--%>


            </div>


            <div class="row cl" style="margin-left: 15px;font-size: 18px">
                <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>图片上传</label>
                <div class="page-header formControls col-xs-4 col-sm-9">
                    <!-- <h3>FormData图片上传</h3> -->
                    <!-- <form> -->
                    <div class="form-group" id="uploadForm" enctype='multipart/form-data' style="margin-top: -50px">
                        <div class="h4">封面预览</div>
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




            <div class="row cl" >
                <label class="form-label col-xs-4 col-sm-2" style="margin-left: 30px;font-size: 18px">文章内容：</label>
                <div class="col-xs-8 col-sm-9" style="margin-left: -20px">
                    <script id="editor" type="text/plain" name="content"></script>
                </div>
            </div>


            <div class="row cl" >
                <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2" style="margin-left: 220px;margin-top: 20px">
                    <button  class="btn btn-primary radius" type="submit" onclick="tankuang()"><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
                </div>
            </div>
            <script>
                function tankuang() {
                    alert("您的文章将在审核之后发布");
                }
            </script>


        </form>
        <div style="width:100%;height:100px;"></div>



    </article>

</div>
<script type="text/javascript">
    $(function() {

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



<%@ include file="../../footer.jsp" %>
</body>
</html>
