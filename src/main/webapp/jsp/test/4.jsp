<%--
  Created by IntelliJ IDEA.
  User: Roninwz
  Date: 2018/6/21
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    function showNotice(content) {
        Notification.requestPermission(function (perm) {
            if (perm == "granted") {
                var notification = new Notification("iFashion:", {
                    dir: "auto",
                    lang: "hi",
                    tag: "testTag",
                    icon: "${pageContext.request.contextPath}/static/admin/images/logo.png",
                    body: content
                });
            }
        })
    }
    showNotice("这是通知");
</script>
</body>
</html>
