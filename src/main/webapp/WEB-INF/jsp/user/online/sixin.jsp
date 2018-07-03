<%--
  Created by IntelliJ IDEA.
  User: gxy
  Date: 2018/6/24
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/static/user/online/js/jquery-2.1.1.min.js"></script>
</head>
<style>
    .slide{
        width: 50px;
        height: 250px;
        position: fixed;
        top: 50%;
        margin-top: -126px;
        background: #018D75;
        right: 0;
        border-radius: 5px 0 0 5px;
        z-index: 999;
    }
    .slide ul{
        list-style: none;
    }
    .slide .icon li{
        width: 49px;
        height: 50px;
        background: url(${pageContext.request.contextPath}/static/user/online/images/icon.png) no-repeat;
    }
    .slide .icon .up{
        background-position:-330px -120px ;
    }
    .slide .icon li.qq{
        background-position:-385px -73px ;
    }
    .slide .icon li.tel{
        background-position:-385px -160px ;
    }
    .slide .icon li.wx{
        background-position:-385px -120px ;
    }
    .slide .icon li.down{
        background-position:-330px -160px ;
    }
    .slide .info{
        top: 50%;
        height: 147px;
        position: absolute;
        right: 100%;
        background: #018D75;
        width: 0px;
        overflow: hidden;
        margin-top: -73.5px;
        transition:0.5s;
        border-radius:4px 0 0 4px ;
    }
    .slide .info.hover{
        width: 145px;

    }
    .slide .info li{
        width: 145px;
        color: #CCCCCC;
        text-align: center;
    }
    .slide .info li p{
        font-size: 1.1em;
        line-height: 2em;
        padding: 15px;
        text-align: left;
    }
    .slide .info li.qq p a{
        display: block;
        margin-top: 12px;
        width: 100px;
        height: 32px;
        line-height: 32px;
        color: #00DFB9;
        font-size: 16px;
        text-align: center;
        text-decoration: none;
        border: 1px solid #00DFB9;
        border-radius: 5px;
    }
    .slide .info li.qq p a:hover{
        color: #FFFFFF;
        border: none;
        background: #00E0DB;
    }
    .slide .info li div.img{
        height: 100%;
        background: #DEFFF9;
        margin: 15px;
    }
    .slide .info li div.img img{
        width: 100%;
        height: 100%;
    }
    /*控制菜单的按钮*/
    .index_cy{
        width: 30px;
        height: 30px;
        background: url(${pageContext.request.contextPath}/static/user/online/images/index_cy.png);
        position: fixed;
        right: 0;
        top: 50%;
        margin-top: 140px;
        background-position: 62px 0;
        cursor: pointer;
    }
    .index_cy2{
        width: 30px;
        height: 30px;
        background: url(${pageContext.request.contextPath}/static/user/online/images/index_cy.png);
        position: fixed;
        right: 0;
        top: 50%;
        margin-top: 140px;
        background-position: 30px 0;
        cursor: pointer;
    }

    /*自适应 当屏小于1050时隐藏*/
    @media screen and (max-width: 1050px) {
        .slide{
            display: none;
        }
        #btn{
            display: none;
        }

    }
</style>
<body>
<%--<div style="height:2000px;"></div>--%>

<!--右侧悬浮菜单-->
<div class="slide">
    <ul class="icon">
        <li class="up" title="上一页"></li>
        <li class="qq"></li>
        <li class="tel"></li>
        <li class="wx"></li>
        <li class="down" title="下一页"></li>
    </ul>
    <ul class="info">
        <li class="qq">
            <p>在线沟通，请点我<a href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes" target="_blank">在线咨询</a></p>
        </li>
        <li class="tel">
            <p>欢迎咨询</p>
        </li>
        <li class="wx">
            <div class="img"><img src="img/1441956938.png" /></div>
        </li>
    </ul>
</div>
<div id="btn" class="index_cy"></div>

<script type="text/javascript">
    $(function(){

        $('.slide .icon li').not('.up,.down').mouseenter(function(){
            $('.slide .info').addClass('hover');
            $('.slide .info li').hide();
            $('.slide .info li.'+$(this).attr('class')).show();//.slide .info li.qq
        });
        $('.slide').mouseleave(function(){
            $('.slide .info').removeClass('hover');
        });

        $('#btn').click(function(){
            $('.slide').toggle();
            if($(this).hasClass('index_cy')){
                $(this).removeClass('index_cy');
                $(this).addClass('index_cy2');
            }else{
                $(this).removeClass('index_cy2');
                $(this).addClass('index_cy');
            }

        });

    });
</script>
</body>
</html>
