<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MYSQL数据库登录</title>
    <link rel="stylesheet" href="${ctx}/css/global.css">
</head>
<body>
<h1>输入相关信息</h1>
<hr>
<form id="login-form" action="${ctx}/Main" method="post">
    <table>
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username" value="${dbConnection.username}"/></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="text" name="password" value="${dbConnection.password}"></td>
        </tr>
        <tr>
            <td>数据库地址:</td>
            <td><input type="text" name="address" value="${dbConnection.address}"></td>
        </tr>
        <tr>
            <td>数据库类型:</td>
            <td><input type="text" name="dbtype" value="${empty dbConnection.dbtype ? 'mysql' : dbConnection.dbtype}">
            </td>
        </tr>
        <tr>
            <td>数据库名(实例名):</td>
            <td><input type="text" name="docDbname" value="${dbConnection.docDbname}"></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="进入"/>
            </td>
            <td>
                <label style="cursor: pointer;" for="issave">保存为常用数据库</label>
                <input id="issave" type="checkbox" name="issave" value="1"/>
            </td>
        </tr>
        <c:if test="${not empty msg}">
            <tr>
                <td colspan="2">${msg}</td>
            </tr>
        </c:if>
    </table>
</form>
<h4>常用数据库</h4>
<c:forEach items="${list}" var="dbDoc">
    <p>
        <a href="Login?username=${dbDoc.username}&password=${dbDoc.password}&address=${dbDoc.address}&dbtype=${dbDoc.dbtype}&docDbname=${dbDoc.dbname}">${dbDoc.dbname}</a>
        <a href="DeleteCommons?ids=${dbDoc.ids}">删除</a>
    </p>
</c:forEach>
</body>
</html>
