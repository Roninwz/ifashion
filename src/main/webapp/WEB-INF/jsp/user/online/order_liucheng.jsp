<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gxy
  Date: 2018/6/24
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<base href="<%=basePath%>">
<head>
    <title>Title</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1, minimum-scale=1.0, maximum-scale=1, user-scalable=no" />
    <link href="static/user/online/onrder_liucheng/css/bootstrap.css" rel="stylesheet" />
    <link href="static/user/online/onrder_liucheng/css/flow.css" rel="stylesheet" />

    <style>
        * {
            margin: 0;
            padding: 0;
            font-size: 12px;
        }

        #alert {
            z-index: 2;
            border: 1px solid rgba(0,0,0,.2);
            width: 598px;
            height: auto;
            border-radius: 6px;
            box-shadow: 0 5px 15px rgba(0,0,0,.5);
            background: #fff;
            z-index: 1000;
            position: absolute;
            left: 50%;
            top: 15%;
            margin-left: -299px;
            display: none;
        }
        .model-head {
            padding: 15px;
            color: #73879C;
            border-bottom: 1px solid #e5e5e5;
        }
        .close {
            padding: 0;
            cursor: pointer;
            background: 0 0;
            border: 0;
            float: right;
            font-size: 14px !important;
            font-weight: 700;
            text-shadow: 0 1px 0 #fff;
            opacity: 0.4;
            margin-top: 5px;
        }
        #close:hover {
            cursor: pointer;
            color: #000;
        }
        #mask {
            position: absolute;
            top: 0;
            left: 0;
            /* height: 100%; */
            width: 100%;
            background: #000;
            opacity: 0.3;
            display: none;
            z-index: 1;
        }
        .model-content {
            position: relative;
            padding: 15px;
        }
        .model-foot {
            padding: 15px;
            text-align: right;
        }
        #contA ul li{
            float:left;
            list-style-type:none;
            margin:15px;
        }
        #contB ul li{
            float:left;
            list-style-type:none;
            margin:13px;
        }
        #contC ul li,#contD ul li{
            list-style-type: none;
        }
        .bgtype{
            width:100%;
            margin: 0 auto;
        }
        .bgtype .radio{
           margin-left:120px;
        }
        .name{
            color: #4db14d;
            margin-left: 100px;

        }
    </style>

</head>
<body>
<div id="content" style="text-align:center;margin:40px auto;"> <a style="font-size:36px;" href="#"><%--点击遮罩层--%></a> </div>
<%--<%@include file="order.jsp"%>--%>
<div id="alert" class="">
    <div class="model-head">
        <span class="close">&times;</span>
        <h4 class="modal-title">定制流程</h4>
    </div>
    <div class="model-content">
        <div class="main">
            <div class="row">
                <div class="col-md-12">
                    <div class="flow">
                        <div class="flowListBox"> </div>
                    </div>
                </div>
                <div class="col-md-12" id="flowDiv">
                    <ol id="iList">
                        <!-- <div id="contA">aaaaa<br>aaaaaaaaa<br>aaaaaaaaa<br>aaaaaaaaa<br>aaaaaaaaa<br>aaaaaaaaa<br>aaaaaaaaa<br>aaaaaaaaa<br>aaaaaaaaa</div>
                        <div class="contentList" id="contB">bb<br>bbbbbb<br>22222222<br>22222222222<br>222222222<br>222222<br>2222222<br>222222<br>222222</div>
                        <div class="contentList" id="contC">cc</div>
                        <div class="contentList" id="contD">dd</div> -->
                        <div id="contA">
                            <ul>
                                <c:forEach items="${goodsTypes}" var="type">
                                    <li>
                                        <div class="bgtype">
                                            <h3 class="name">${type.goodstypeName}</h3>
                                            <img src="${type.goodstypeimgUrl}"/>
                                            <div class="radio"><input type="radio" name="type" value="${type.goodstypeId}"></div>

                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                         <div class="contentList" id="contB" class="B">
                             <ul></ul>
                         </div>
                        <div class="contentList" id="contC">
                            <ul></ul>
                        </div>
                        <div class="contentList" id="contD">
                            <ul></ul>

                        </div>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="foot-btn">
        <button type="button" class="btn btn-primary" id="btnBack">上一步</button>
        <button type="button" class="btn btn-default"  style="float:right; display:none" id="btnok">完成</button>
        <button type="button" class="btn btn-success"  style="float:right; margin-right:10px;" id="btnNext">下一步</button>
    </div>
</div>

<div id="mask"></div>

<!--content/-->
<script type="text/javascript" src="static/user/online/onrder_liucheng/js/jquery.min.js"></script>
<script type="text/javascript" src="static/user/online/onrder_liucheng/js/flow.js"></script>
<script type="text/javascript">
    var myAlert = document.getElementById("alert");
    var myMask=document.getElementById('mask');
    myMask.style.display="block";
    myAlert.style.display = "block";
    var num=0;

    $(".btn-success").click(function(){
        /*alert(111)*/
        num++;

        var id=$('input[name="type"]:checked').val();
        /*alert(id);*/
        /*var datas={"id":id};*/
     if(num==1){

         $.ajax({
             url: "${pageContext.request.contextPath }/user/online_select2.action?id="+id,
             type: "GET",
             dataTyp: "json",
             /*data:datas,*/
             success: function(da){
                 var s="";
                 for(var i=0;i<da.length;i++){
                     s+="<li><div class='bgtype'><h2 class='name'>"+da[i].goodschildName+"</h2><img src='"+da[i].goodschildImg+"'/> <div class='radio'><input type='radio' name='childtype' value='"+da[i].goodschildId+"'></div></div></li>";
                 }
                /* $("#contB ul li").css({"float":"left","list-style-type":"none","margin":"15px"})*/
                 $("#contB ul").append(s);


             }
         });

     }
        var childid=$('input[name="childtype"]:checked').val();
     /*alert(childid)*/
        if(num==2){

            $.ajax({
                url: "${pageContext.request.contextPath }/user/online_select3.action?id="+id+"&goodschildId="+childid,
                type: "POST",
                dataTyp: "json",
                /*data:datas,*/
                success: function(data){
                   /* alert("11111111111")*/
                    var t="";
                    for(var i=0;i<data.length;i++){
//
                        t+="<li><input type='radio' name='material' value='"+data[i].goodsmaterialId+"'>"+data[i].goodsmaterialName+"</li>";
                        /*t="<li><input type='radio' name='material' value='"+hhhhhh+"'>"+"hhhhhhhh"+"</li>";*/
                        /*alert(t);*/
                    }
                    $("#contC ul").append(t);
                }
            });

        }
        var materiaId=$('input[name="material"]:checked').val();
        if(num==3){

            $.ajax({
                url: "${pageContext.request.contextPath }/user/online_select4.action?id="+id+"&goodschildId="+childid+"&materiId="+materiaId,
                type: "GET",
                dataTyp: "json",
                /*data:datas,*/
                success: function(da){
                    /*alert("chengg")*/
                    var s="";
                    for(var i=0;i<da.length;i++){
                        s+="<li><input type='radio' name='style' value='"+da[i].goodsstyleId+"'>"+da[i].goodsstyleName+"</li>";
                    }
                    $("#contD ul").append(s);
                }
            });

        }

    })
    $("#btnok").click(function () {
        var id=$('input[name="type"]:checked').val();
        var childid=$('input[name="childtype"]:checked').val();
        var materiaId=$('input[name="material"]:checked').val();
        var styleId=$('input[name="style"]:checked').val();
        window.location.href="${pageContext.request.contextPath }/user/online_order.action?typeid="+id+"&childid="+childid+"&materiId="+materiaId+"&styleId="+styleId;
    });
    /* $("#content a").click(function(){
         myMask.style.display="block";
         myAlert.style.display = "block";
         /!*document.body.style.overflow = "hidden";*!/
     })*/
    $(".close").click(function(){
        myAlert.style.display = "none";
        myMask.style.display = "none";
        window.location.href="user/online_list.action";
    })
</script>

</body>
</html>
