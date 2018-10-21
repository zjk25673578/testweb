<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>${tab.tname}</title>
    <link rel="stylesheet" href="${ctx}/css/global.css">
</head>
<body>
<a href="TableList">返回表</a>
<form action="UpdateTableInfo" method="post">
    <input type="hidden" name="ids" value="${tab.ids}">
    <table>
        <tr>
            <td>数据库</td>
            <td>${tab.sche}</td>
        </tr>
        <tr>
            <td>表名</td>
            <td>${tab.tname}</td>
        </tr>
        <tr>
            <td>表注释</td>
            <td>${tab.tcomment}</td>
        </tr>
        <tr>
            <td>关联项目模块</td>
            <td><textarea name="profunc" class="note">${tab.profunc}</textarea></td>
        </tr>
        <tr>
            <td>关联的表</td>
            <td><textarea name="related" class="note">${tab.related}</textarea></td>
        </tr>
        <tr>
            <td>备注</td>
            <td><textarea name="note" class="note">${tab.note}</textarea></td>
        </tr>
        <tr>
            <td><input type="submit" value="保存"></td>
            <td><input type="reset" value="重写"></td>
        </tr>
    </table>
</form>
</body>
</html>
