<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>${col.tname} - ${col.colname}</title>
    <link rel="stylesheet" href="${ctx}/css/global.css">
</head>
<body>
<form action="UpdateColInfo" method="post">
    <input type="hidden" name="ids" value="${col.ids}">
    <table>
        <tr>
            <td>来源</td>
            <td>表明</td>
            <td>列名</td>
            <td>注释</td>
            <td>关联表或列</td>
            <td>备注</td>
        </tr>
        <tr>
            <td>${col.sche}</td>
            <td>${col.tname}</td>
            <td>${col.colname}</td>
            <td>${col.ccomment}</td>
            <td><textarea name="related" class="note">${col.related}</textarea></td>
            <td><textarea name="note" class="note">${col.note}</textarea></td>
        </tr>
        <tr>
            <td colspan="6"><input type="submit" value="保存"></td>
        </tr>
    </table>
</form>
</body>
</html>
