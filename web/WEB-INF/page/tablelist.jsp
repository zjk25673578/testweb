<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>表信息</title>
    <link rel="stylesheet" href="${ctx}/css/global.css">
    <script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/table.js"></script>
</head>
<body>
<a href="RefreshTable">刷新数据</a>
<a href="Login">重新登录数据库</a>
<a href="DelTable" onclick="return delete_confirm();">删除所有表信息</a>
<a href="DelColumn" onclick="return delete_confirm();">删除所有列信息</a>
<hr>
<form action="${ctx}/TableList" method="post">
    <label style="cursor: pointer;" for="keywords">表名:</label>
    <input type="text" id="keywords" name="keywords" value="${keywords}"/>
    <input type="submit" value="Search"/>
    <input type="button" value="Reset" onclick="clearKeywords()"/>
</form>
<table>
    <thead>
    <td>序号</td>
    <td>数据来源</td>
    <td>表名</td>
    <td>关联项目模块</td>
    <td>注释</td>
    <td>关联其他表</td>
    <td>备注</td>
    <td>操作</td>
    </thead>
    <c:forEach items="${list}" var="tables" varStatus="vs">
        <tr>
            <td>${vs.index + 1}</td>
            <td>${tables.sche}</td>
            <td><a href="ColumnList?tname=${tables.tname}" target="_blank">${tables.tname}</a></td>
            <td>${tables.profunc}</td>
            <td>${tables.tcomment}</td>
            <td>${tables.related}</td>
            <td>${tables.note}</td>
            <td>
                <a href="UpdateTable?ids=${tables.ids}">修改</a>
                <a href="DeleteTable?ids=${tables.ids}" onclick="return delete_confirm();">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
