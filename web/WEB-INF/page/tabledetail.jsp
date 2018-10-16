<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${ctx}/css/global.css">
</head>
<body>
<a href="TableList">返回表</a>
<a href="javascript:;">刷新这个表</a>
<a href="Login">重新登录数据库</a>
<hr>
<table>
    <tr>
        <td rowspan="${fn:length(columnsList) + 1}">
            <h3>${tname}</h3>
        </td>
        <td>列名</td>
        <td>数据类型</td>
        <td>数据最大长度</td>
        <td>关联列或表</td>
        <td>注释</td>
        <td>备注</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${columnsList}" var="columns">
        <tr>
            <td>${columns.colname}</td>
            <td>${columns.coltype}</td>
            <td>${columns.clength}</td>
            <td>${columns.related}</td>
            <td>${columns.ccomment}</td>
            <td>${columns.note}</td>
            <td>
                <a href="javascript:;">修改</a>
                <a href="javascript:;">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
