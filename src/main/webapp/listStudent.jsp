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
    <title>查询数据</title>
    <base href="<%=basePath%>" />
</head>
<body>
    <div align="center">
        <h3>查询数据</h3>
        <table>
            <thead>
            <tr>
                <td>学号</td>
                <td>姓名</td>
                <td>年龄</td>
            </tr>
            </thead>
            <tbody id="info"></tbody>
        </table>
        <input type="button" value="查询数据" id="queryData">
    </div>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script>

    $(function () {
        queryData();
        $("#queryData").click(function() {
            queryData();
        })
    })

    function queryData() {
        $("#info").html("");
        $.ajax({
            url: "student/queryStudent.do",
            type: "get",
            dataType: "json",
            success:function(data) {
                $.each(data,function(i, res) {
                    $("#info").append("<tr>")
                    .append("<td>"+res.id+"</td>")
                    .append("<td>"+res.name+"</td>")
                    .append("<td>"+res.age+"</td>")
                    .append("</tr>")
                })
            }
        })
    }

</script>
</body>
</html>
