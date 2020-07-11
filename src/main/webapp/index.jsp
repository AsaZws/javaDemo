<%--
  Created by IntelliJ IDEA.
  User: zhouweisheng
  Date: 2020/7/3
  Time: 11:53 下午
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
    <title>功能入口</title>
    <base href="<%=basePath%>" />
</head>
<body>
    <div align="center">
        <h3>SSM整合的例子</h3>
        <table>
            <tr><td><a href="addStudent.jsp">注册学生</a></td></tr>
            <tr><td><a href="listStudent.jsp">浏览学生</a></td></tr>
        </table>
    </div>
</body>
</html>
