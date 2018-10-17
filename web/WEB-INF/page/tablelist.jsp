<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>表信息</title>
    <link rel="stylesheet" href="${ctx}/css/global.css">
</head>
<body>
<a href="RefreshTable">刷新数据</a>
<a href="Login">重新登录数据库</a>
<a href="javascript:;">导出为WORD</a>
<hr>
<table>
    <thead>
        <td>数据来源</td>
        <td>表名</td>
        <td>创建时间</td>
        <td>关联模块</td>
        <td>注释</td>
        <td>关联其他表</td>
        <td>备注</td>
        <td>操作</td>
    </thead>
    <c:forEach items="${list}" var="tables">
        <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
            <td>${tables.sche}</td>
            <td><a href="TableDetail?tname=${tables.tname}" target="_blank">${tables.tname}</a></td>
            <td>${tables.ctime}</td>
            <td>${tables.profunc}</td>
            <td>${tables.tcomment}</td>
            <td>${tables.related}</td>
            <td>${tables.note}</td>
            <td>
                <a href="javascrip:;">修改</a>
                <a href="javascrip:;">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
