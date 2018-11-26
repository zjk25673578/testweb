<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>${tab.tname}</title>
    <link rel="stylesheet" href="${ctx}/res/layui/css/layui.css">
    <link rel="stylesheet" href="${ctx}/css/global.css">
    <script type="text/javascript" src="${ctx}/res/layui/layui.js"></script>
</head>
<body>
<a class="layui-btn layui-btn-normal layui-btn-xs" href="TableList">返回表</a>
<hr class="layui-bg-gray">
<div class="layui-col-sm5">
    <form class="layui-form" action="UpdateTableInfo" method="post">
        <input type="hidden" name="ids" value="${tab.ids}">
        <table class="layui-table form-table" lay-size="sm">
            <colgroup>
                <col width="100">
                <col width="250">
            </colgroup>
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
                <td><textarea name="profunc" class="layui-textarea note">${tab.profunc}</textarea></td>
            </tr>
            <tr>
                <td>关联的表</td>
                <td><textarea name="related" class="layui-textarea note">${tab.related}</textarea></td>
            </tr>
            <tr>
                <td>备注</td>
                <td><textarea name="note" class="layui-textarea note">${tab.note}</textarea></td>
            </tr>
        </table>
        <div class="layui-btn-container">
            <input class="layui-btn layui-btn-normal layui-btn-xs" type="submit" value="保存">
            <input class="layui-btn layui-btn-danger layui-btn-xs" type="reset" value="重写">
        </div>
    </form>
</div>
</body>
</html>
