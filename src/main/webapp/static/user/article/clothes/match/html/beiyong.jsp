<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="comment-box-review">
    <c:forEach var="arvo" items="${arvo}">

        <div class="ques-answer">
            <div class="tag-img">
                <img title="${arvo.user.username}" src="${arvo.user.userImgurl}">
            </div>

            <div class="from-tag">
                <a>${arvo.user.username}</a>
                <a>${arvo.reviewDate}</a>
                <a href="" target="_blank" style="padding-right: 50px">回复</a>
            </div>

            <div class="ques-con">
                <p class="ques-con-content">${arvo.reviewContent}</p>
                    <%--<div class="answer-content-all rich-text aimgPreview">--%>
                    <%--<p> 价格这么好吗</p>--%>
                    <%--</div>--%>
            </div>
        </div>


        <%--<div class="answer-con first" id="answer-con" data-answer-id="269840">--%>
        <%--<div class="user">--%>
        <%--<hr>--%>
        <%--&lt;%&ndash;<a>根本不行小姐 (作者) ：</a>&ndash;%&gt;--%>
        <%--<span class="signature"></span>--%>
        <%--</div>--%>
        <%--&lt;%&ndash;<div class="answer-content"> 价格这么好吗</div>&ndash;%&gt;--%>
        <%--</div>--%>
    </c:forEach>
</div>
<div>
    <textarea name="commentcontent" class="text-black80" id="commentcontent" rows="2" cols="20"></textarea>
</div>
<div class="comment-option">

    <input class="btn btn-green text-white" id="btncomment" type="button" value="发布" onclick="tijiao()">
</div>
<script>
    function tijiao() {
        alert("调用");
        var reviewContent = $("#commentcontent").val();
        var articleId = $("#article_id_var").val();
        var username = $("#current_user_name").val();
        var userimg = $("#current_user_img").val();
        var now = $("#current_time").val();

        var datas = {"reviewContent":reviewContent,
            "articleId":articleId};
        $.ajax({
            type: 'POST',
            url: '${pageContext.request.contextPath}/user/clothes/ajaxAddReview.action',
            dataType: 'json', //表示返回值的数据类型
            contentType: 'application/json;charset=UTF-8', //内容类型
            traditional: true, //使json格式的字符串不会被转码
            data: JSON.stringify(datas),
            success: function(data) {
                alert("添加成功");
                var str='';

                str+='<div class="ques-answer">' +
                    '<div class="tag-img">'+
                    '<img title="" src="'+userimg+'">'+'</div>'+       //用户头像
                    '<div class="from-tag">'+
                    '<a>'+username+'</a>'+      //用户名
                    '<a>'+now+'</a>'+      //评论时间
                    '<a href="" target="_blank" style="">回复</a>'+'</div>'+
                    '<div class="ques-con">'+
                    '<p class="ques-con-content">'+data.reviewContent+'</p>'+
                    '</div>'+
                    '</div>';
                $(".comment-box-review").append(str);
            },
            error: function(data) {
                alert("失败");
            },
        });
    }
</script>
</div>
<div id="scroller"><ul class="comment-list list-unstyled text-black80"></ul></div>
</div>
<script src="/js/d3rich.comment.js" type="text/javascript"></script>
<script type="text/javascript">
    var outer_id = "14700";
    var outer_type = 0;
    var score = 5;
</script>

</body>
</html>
