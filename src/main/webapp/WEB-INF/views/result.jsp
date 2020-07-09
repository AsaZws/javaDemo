<%--
  Created by IntelliJ IDEA.
  User: zhouweisheng
  Date: 2020/7/3
  Time: 11:52 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>result</title>
</head>
<body>
    result.jsp结果页面，注册结果：${tips}
</body>
</html>
