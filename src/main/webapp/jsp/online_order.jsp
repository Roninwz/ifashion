<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: gxy
  Date: 2018/6/13
  Time: 21:38
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
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>在线定制</title>
    <link rel="stylesheet" type="text/css" href="static/user/online/online_order/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="static/user/online/online_order/css/htmleaf-demo.css">
    <link rel="stylesheet" href="static/user/online/online_order/css/style.css"> <!-- Resource style -->
</head>
<body>
<div class="cd-product-builder">
    <header class="main-header">
        <h1 class="title">在线定制流程</h1>
        <nav class="cd-builder-main-nav disabled">
            <ul>
                <li class="active"><a href="#models">类别</a></li>
                <li><a href="#colors">种类</a></li>
                <li><a href="#accessories">材质</a></li>
                <li><a href="#summary">风格</a></li>
            </ul>
        </nav>
    </header>

    <div class="cd-builder-steps">
        <ul>
            <li data-selection="models" class="active builder-step">
                <section class="cd-step-content">
                    <header>
                        <h1>Select 类别</h1>
                        <span class="steps-indicator">Step <b>1</b> of 4</span>
                    </header>
                    <ul class="models-list options-list cd-col-2">
                        <c:forEach var="type" items="${goodsTypes}">
                            <li class="js-option js-radio">
                                <span class="name">${type.goodstypeName}</span>
                                <img src="${type.goodstypeimgUrl}" alt="${type.goodstypeName}">
                                <div class="radio"><input type="hidden" value="${type.goodstypeId}" name="select1"/></div>
                            </li>
                        </c:forEach>
                        <%--<li class="js-option js-radio"  data-model="product-01">
                            <span class="name">男装</span>
                            <img src="img/nan_zhuang_p1.jpg" alt="男装">
                            <div class="radio"></div>
                        </li>

                        <li class="js-option js-radio" data-price="140700" data-model="product-02">
                            <span class="name">女装</span>
                            <img src="img/nan_zhuang_p1.jpg" alt="女装">
                            <div class="radio"></div>
                        </li>
                        <li class="js-option js-radio" data-price="42400" data-model="product-01">
                            <span class="name">男装</span>
                            <img src="img/nan_zhuang_p1.jpg" alt="童装">
                            <div class="radio"></div>
                        </li>

                        <li class="js-option js-radio" data-price="140700" data-model="product-02">
                            <span class="name">女装</span>
                            <img src="img/nan_zhuang_p1.jpg" alt="男鞋">
                            <div class="radio"></div>
                        </li>--%>
                    </ul>
                </section>
            </li>
            <!-- additional content will be inserted using ajax -->
        </ul>
    </div>
    <footer class="cd-builder-footer disabled step-1">
        <div class="selected-product">
            <img src="img/product01_col01.jpg" alt="">

        </div>

        <nav class="cd-builder-secondary-nav">
            <ul>
                <li class="next nav-item">
                    <ul>
                        <li class="visible"><a href="#0">类别</a></li>
                        <li><a href="#0">种类</a></li>
                        <li><a href="#0">材质</a></li>
                        <li class="buy"><a href="#0">风格</a></li>
                    </ul>
                </li>
                <li class="prev nav-item">
                    <ul>
                        <li class="visible"><a href="#0">风格</a></li>
                        <li><a href="#0">材质</a></li>
                        <li><a href="#0">类别</a></li>
                        <li><a href="#0">种类</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <span class="alert">Please, select a model first!</span>
    </footer>
</div>

<script>window.jQuery || document.write('<script src="static/user/online/online_order/js/jquery-2.1.1.min.js"><\/script>')</script>
<script src="static/user/online/online_order/js/main.js"></script> <!-- Resource jQuery -->

</body>
</html>
