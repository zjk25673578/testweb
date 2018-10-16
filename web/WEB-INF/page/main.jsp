<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据库文档</title>
    <meta charset="utf-8">
</head>
<body>
<table>
    <tr>
        <td>用户名:</td>
        <td>${dbConnection.username}</td>
    </tr>
    <tr>
        <td>密码:</td>
        <td>${dbConnection.password}</td>
    </tr>
    <tr>
        <td>数据库地址:</td>
        <td>${dbConnection.address}</td>
    </tr>
    <tr>
        <td>数据库类型:</td>
        <td>
            ${dbConnection.dbtype}
        </td>
    </tr>
    <tr>
        <td>数据库名(实例名):</td>
        <td>${dbConnection.dbname}</td>
    </tr>
    <tr>
        <td colspan="2">${msg}</td>
    </tr>
</table>
</body>
</html>
