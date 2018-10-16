<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据库登录</title>
</head>
<body>
<h1>输入相关信息</h1>
<hr>
<form action="${ctx}/Main" method="post">
    <table>
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username" value="${dbConnection.username}" /></td>
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
            <td>
                <select name="dbtype">
                    <option value="mysql" ${dbConnection.dbtype eq 'mysql' ? 'selected' : ''}>MYSQL</option>
                    <option value="oracle" ${dbConnection.dbtype eq 'oracle' ? 'selected' : ''}>ORACLE</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>数据库名(实例名):</td>
            <td><input type="text" name="docDbname" value="${dbConnection.docDbname}"></td>
        </tr>
        <tr>
            <td><input type="submit" value="进入"/></td>
            <td><input type="reset" value="重写"/></td>
        </tr>
        <c:if test="${not empty msg}">
            <tr>
                <td colspan="2">${msg}</td>
            </tr>
        </c:if>
    </table>
</form>
</body>
</html>
