<%--
  Created by IntelliJ IDEA.
  User: 李莉莉
  Date: 2018/6/22
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../header.jsp" %>

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
    <%--底部css--%>
    <link rel="stylesheet" href="static/user/common/foot/css/foot.css">
    <%--导航栏css--%>
    <link rel="stylesheet" href="static/user/common/top/css/newindex_v201607.css">
    <link rel="stylesheet" href="static/user/common/top/css/newconment_v201607.css">
    <link rel="stylesheet" href="static/user/login/css/login.css">

    <link rel="stylesheet" href="static/user/designer/css/style.css" />
    <link rel="stylesheet" href="static/user/designer/css/xuanxiangka.css">
    <script src="static/user/common/jquery/jquery-3.1.1.min.js"></script>
    <%--导航栏js--%>
    <script src="static/user/common/top/js/index_search.js"></script>
    <%-- 鼠标点击弹出文字特效js --%>
    <script src="static/user/common/js/mouse.js"></script>
    <script src="static/user/login/js/login.js"></script>
    <%--登录js--%>
    <script type="text/javascript" src="static/user/login/js/modal.js"></script>
    <%--其它js--%>

    <%--遮罩层--%>
  <%--  <link rel="stylesheet" href="static/user/person/info/css/common.css" />
    <script type="text/javascript" src="static/user/person/info/js/jquery.purebox.js"></script>--%>

    <style>
        .pop {  display: none;  width: 600px; min-height: 470px;  max-height: 750px;  height:470px;  position: absolute;  top: 0;  left: 0;  bottom: 0;  right: 0;  margin: auto;  padding: 25px;  z-index: 130;  border-radius: 8px;  background-color: #fff;  box-shadow: 0 3px 18px rgba(100, 0, 0, .5);  }
        .pop-top{  height:40px;  width:100%;  border-bottom: 1px #E5E5E5 solid;  }
        .pop-top h2{  float: left;  display:black}
        .pop-top span{  float: right;  cursor: pointer;  font-weight: bold; display:black}
        .pop-foot{  height:20px;  line-height:50px;  width:100%;  border-top: 1px #E5E5E5 solid;  text-align: right; ;}
        .pop-cancel, .pop-ok {position:relative;top:-60px;  border: none;  border-radius: 5px; width: 80px; margin: 10px; background-color: #337AB7;  color: #fff;  cursor:pointer; }
        .pop-cancel {  background-color: #FFF;  border:1px #CECECE solid;  color: #000;  }
        .pop-content{  height: 380px;  }
        .pop-content-left{  float: left;  }
        .pop-content-right{  width:310px;  float: left;  padding-top:20px;  padding-left:20px;  font-size: 16px;  line-height:35px;  }
        .bgPop{  display: none;  position: absolute;  z-index: 129;  left: 0;  top: 0;  width: 100%;  height: 100%;  background: rgba(0,0,0,.2);  }
    </style>

</head>
<body style="background-color: white">
<c:set var="user" value="${sessionScope.user}"/>
<div id="back">
<div class="changePattern">
    <span id="pattern1"></span>
    <span id="pattern2"></span>
    <span id="pattern3"></span>
    <span id="pattern4"></span>
    <span id="pattern5"></span>
    <span id="pattern6"></span>
</div>

<header class="main_header">
    <div class="wrapper">
        <div class="logo1">
            <a href="#" title="Kanrisha Home" style="float:left; margin-top:-10px">
                <img src="${user.userImgurl}" alt="${user.username}" width="100" height="100"/>
            </a>
            <a href="#" style="float:left; color:#999; margin-top:15px; font-size:30px; margin-left:20px">${user.username}</a>
        </div>
        <nav class="top_buttons">
            <ul>

                <li class="big_button">
                    <div class="big_count">
                        <span>7</span>
                    </div>
                    <div class="out_border">
                        <div class="button_wrapper">
                            <div class="in_border">
                                <a href="#" title="私信" class="the_button">
                                    <span class="i_32_support"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="active_tab big_button">
                    <div class="out_border">
                        <div class="button_wrapper">
                            <div class="in_border">
                                <a href="${pageContext.request.contextPath }/designer/myTrade.action" title="我的接单" class="the_button">
                                    <span class="i_32_delivery"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </nav>
    </div>
</header>

<div class="wrapper contents_wrapper">

    <aside class="sidebar">
        <%--<ul class="tab_nav">
            <li class="i_32_dashboard">
                <a href="" title="General Info">
                    <span class="tab_label">设计之家</span>

                </a>
            </li>
            <li class="i_32_inbox">
                <a href="inbox.html" title="Your Messages">
                    <span class="tab_label">我的收藏</span>

                </a>
            </li>
            <li class="i_32_charts">
                <a href="charts.html" title="Visual Data">
                    <span class="tab_label">设计上传</span>

                </a>
            </li>
            <li class="i_32_ui">
                <a href="ui.html" title="Kit elements">
                    <span class="tab_label">关注&粉丝</span>

                </a>
            </li>
            <li class="i_32_tables">
                <a href="tables.html" title="Some Rows">
                    <span class="tab_label">我的发表</span>

                </a>
            </li>
            <li class="i_32_forms">
                <a href="forms.html" title="Some Fields">
                    <span class="tab_label">个人信息</span>
                </a>
            </li>
        </ul>--%>
            <ul class="tab_nav">
                <li class="i_32_dashboard">
                    <a href="${pageContext.request.contextPath }/designer/design.action" title="General Info">
                        <span class="tab_label">设计之家</span>

                    </a>
                </li>
                <li class="i_32_inbox">
                    <a href="${pageContext.request.contextPath }/user/mycollections.action" title="Your Messages">
                        <span class="tab_label">我的收藏</span>

                    </a>
                </li>
                <li class="i_32_charts">
                    <a href="${pageContext.request.contextPath }/user/designUp.action" title="Visual Data">
                        <span class="tab_label">设计上传</span>

                    </a>
                </li>
                <li class="i_32_ui">
                    <a href="${pageContext.request.contextPath }/user/myAttention.action" title="Kit elements">
                        <span class="tab_label">关注&粉丝</span>

                    </a>
                </li>
                <li class="i_32_tables">
                    <a href="${pageContext.request.contextPath }/designer/myPublish.action" title="Some Rows">
                        <span class="tab_label">我的发表</span>

                    </a>
                </li>
                <li class="i_32_forms">
                    <a href="${pageContext.request.contextPath }/designer/personalInfo.action" title="Some Fields">
                        <span class="tab_label">个人信息</span>
                    </a>
                </li>
            </ul>
    </aside>

    <div class="contents">
        <div class="grid_wrapper">

            <div class="rt_content">
                <div class="page_title">
                    <h2 class="fl">订单详情</h2>
                </div>
                <table class="table">
                    <tbody><tr>
                        <td>收件人：${roInfo.receiveUserName}</td>
                        <td>联系电话：${roInfo.tel}</td>
                        <td>收件地址：${roInfo.addressContent}</td>
                        <td>下单时间：${roInfo.ordersDate}</td>
                    </tr>
                    <tr>
                        <td>订单状态：
                            <c:choose>
                            <c:when test="${roInfo.ordersState=='0'}">
                            <a>未发货</a>
                        </c:when>
                        <c:otherwise>
                            <a>已发货</a>
                        </c:otherwise>
                        </c:choose>
                        </td>
                        <td colspan="3"></td>
                    </tr>
                    </tbody></table>
                <table class="table">
                    <tbody><tr>
                        <td class="center"><img src="${roInfo.goodsImgurl}" class="mCS_img_loaded" width="50" height="50"></td>
                        <td>${roInfo.goodsName}</td>
                        <td class="center">颜色：${roInfo.color}</td>
                        <td class="center"><strong class="rmb_icon">￥${roInfo.goodsPrice}</strong></td>
                        <td class="center">尺码：${roInfo.size}
                        </td>
                        <td class="center"><strong>1</strong></td>
                        <td class="center"><strong class="rmb_icon">￥${roInfo.goodsPrice}</strong></td>
                        <td class="center">${roInfo.goodschildName}</td>
                    </tr>
                    </tbody>
                </table>
               <%-- <aside class="mtb" id="mtb" style="text-align:right;">
                      &lt;%&ndash;  <a href="javascript:;" class="">发货</a>&ndash;%&gt;
                    <a href="javascript:void(0)" class="click_pop">发货</a>
                    &lt;%&ndash;<button&ndash;%&gt;
                </aside>--%>

                <aside class="mtb" id="mtb" style="text-align:right;">
                    <c:choose>
                        <c:when test="${roInfo.ordersState=='0'}">
                            <input value="发货" class="group_btn click_pop" type="button">
                        </c:when>
                        <c:otherwise>
                            <div></div>
                        </c:otherwise>
                    </c:choose>

                </aside>
            </div>
    </div>

</div>

    <div class="bgPop"></div>
    <!--弹出框-->
    <div class="pop">
        <div class="pop-top">

            <span class="pop-close">Ｘ</span>
        </div>
        <div class="pop-content">
            <div class="pop-content-left">
                <img src="" alt="" class="teathumb">
            </div>
            <div class="pop-content-right">
              请输入快递单号：<input type="text" name="num" value="" placeholder="请输入快递单号"/>
            </div>
            <%--<div class="pop-foot">
                <input type="button" value="关闭" class="pop-cancel pop-close">
                <input type="button" value="报名" class="pop-ok">
            </div>--%>
        </div>
        <div class="pop-foot">
            <input type="button" value="关闭" class="pop-cancel pop-close">
            <input type="button" value="提交" class="pop-ok" onclick="submit()">
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('.pop-close').click(function () {
                $('.bgPop,.pop').hide();
            });
            $('.click_pop').click(function () {
                $('.bgPop,.pop').show();
            });
        });
        function submit() {
            var num=$("input[name='num']").val();
            window.location.href="${pageContext.request.contextPath }/designer/updateOrder.action?ordersId=${num}"+"&num="+num;
        }


    </script>


</div>


    <%@ include file="../../footer.jsp" %>
</div>
</body>
</html>

