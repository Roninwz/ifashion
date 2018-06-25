<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/21
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>


    var titleInit = document.title, isShine = true;

    setInterval(function() {
        var title = document.title;
        if (isShine == true) {
            if (/新/.test(title) == false) {
                document.title = '【你有新消息】';
            } else {
                document.title = '【　　　　　】';
            }
        } else {
            document.title = titleInit;
        }
    }, 500);

    window.onfocus = function() {
        isShine = false;
    };
    window.onblur = function() {
        isShine = true;
    };

    // for IE
    document.onfocusin = function() {
        isShine = false;
    };
    document.onfocusout = function() {
        isShine = true;
    };
</script>
</body>
</html>
