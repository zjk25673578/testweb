<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>${tab.tname}</title>
    <link rel="stylesheet" href="${ctx}/res/layui/css/layui.css">
    <script type="text/javascript" src="${ctx}/res/layui/layui.js"></script>
    <style>
        body {
            padding: 20px 30px;
        }

        .note {
            resize: none;
        }
    </style>
</head>
<body>
<div class="layui-container">
    <a class="layui-btn layui-btn-normal layui-btn-sm" href="TableList">返回表</a>
    <hr class="layui-bg-gray">
    <form class="layui-form layui-form-pane" action="UpdateTableInfo" method="post">
        <input type="hidden" name="ids" value="${tab.ids}">
        <div class="layui-form-item">
            <label class="layui-form-label">数据库</label>
            <div class="layui-input-inline">
                <input class="layui-input" readonly value="${tab.sche}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">表名</label>
            <div class="layui-input-inline">
                <input class="layui-input" readonly value="${tab.tname}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">表注释</label>
            <div class="layui-input-block">
                <input class="layui-input" readonly value="${tab.tcomment}">
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">项目模块</label>
            <div class="layui-input-block">
                <textarea name="profunc" placeholder="请输入内容" class="layui-textarea note">${tab.profunc}</textarea>
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">关联的表</label>
            <div class="layui-input-block">
                <textarea name="related" placeholder="请输入内容" class="layui-textarea note">${tab.related}</textarea>
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea name="note" placeholder="请输入内容" class="layui-textarea note">${tab.note}</textarea>
            </div>
        </div>

        <div class="layui-btn-container">
            <input class="layui-btn layui-btn-normal layui-btn-sm" type="submit" value="保存">
            <input class="layui-btn layui-btn-danger layui-btn-sm" type="reset" value="重写">
        </div>
    </form>
</div>
<script>
    layui.use('form', function () {
        var form = layui.form;
    });
</script>
</body>
</html>
