<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${tname}</title>
    <link rel="stylesheet" href="${ctx}/css/global.css">
    <script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/table.js"></script>
</head>
<body>
<a href="TableList">返回表</a>
<a href="RefreshTableCol?tname=${tname}">刷新这个表</a>
<a href="Login">重新登录数据库</a>
<hr>
<h3>${tname}</h3>
<table>
    <thead>
    <td>序号</td>
    <td>列名</td>
    <td>数据类型</td>
    <td>数据最大长度</td>
    <td>关联列或表</td>
    <td>注释</td>
    <td>备注</td>
    <td>操作</td>
    </thead>
    <c:forEach items="${columnsList}" var="columns" varStatus="vs">
        <tr>
            <td>${vs.index + 1}</td>
            <td>${columns.colname}</td>
            <td>${columns.coltype}</td>
            <td>${columns.clength}</td>
            <td>${columns.related}</td>
            <td>${columns.ccomment}</td>
            <td>${columns.note}</td>
            <td>
                <a href="javascript:;">修改</a>
                <a href="DeleteColumn?ids=${columns.ids}&tname=${columns.tname}" onclick="return delete_confirm();">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
