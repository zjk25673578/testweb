<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>${col.tname} - ${col.colname}</title>
    <link rel="stylesheet" href="${ctx}/res/layui/css/layui.css">
    <link rel="stylesheet" href="${ctx}/css/global.css">
    <script type="text/javascript" src="${ctx}/res/layui/layui.js"></script>
</head>
<body>
<div class="layui-col-sm6">
    <form action="UpdateColInfo" method="post">
        <input type="hidden" name="ids" value="${col.ids}">
        <table class="layui-table" lay-size="sm">
            <colgroup>
                <col width="50">
                <col width="80">
                <col width="80">
                <col width="100">
                <col width="200">
                <col width="200">
            </colgroup>
            <thead>
            <tr>
                <td>来源</td>
                <td>表明</td>
                <td>列名</td>
                <td>注释</td>
                <td>关联表或列</td>
                <td>备注</td>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${col.sche}</td>
                <td>${col.tname}</td>
                <td>${col.colname}</td>
                <td>${col.ccomment}</td>
                <td><textarea name="related" class="layui-textarea note">${col.related}</textarea></td>
                <td><textarea name="note" class="layui-textarea note">${col.note}</textarea></td>
            </tr>
            </tbody>
        </table>
        <div class="layui-btn-container">
            <input class="layui-btn layui-btn-normal layui-btn-xs" type="submit" value="保存">
            <input class="layui-btn layui-btn-danger layui-btn-xs" type="reset" value="重写">
        </div>
    </form>
</div>
</body>
</html>
