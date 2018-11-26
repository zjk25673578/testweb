<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>${col.tname} - ${col.colname}</title>
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
    <fieldset class="layui-elem-field layui-field-title">
        <legend>${col.tname} ==> ${col.colname}</legend>
    </fieldset>
    <form class="layui-form layui-form-pane" action="UpdateColInfo" method="post">
        <input type="hidden" name="ids" value="${col.ids}">
        <div class="layui-form-item">
            <label class="layui-form-label">来源</label>
            <div class="layui-input-inline">
                <input class="layui-input" readonly value="${col.sche}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">表名</label>
            <div class="layui-input-inline">
                <input class="layui-input" readonly value="${col.tname}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">列名</label>
            <div class="layui-input-inline">
                <input class="layui-input" readonly value="${col.colname}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">注释</label>
            <div class="layui-input-block">
                <input class="layui-input" readonly value="${col.ccomment}">
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">关联表或列</label>
            <div class="layui-input-block">
                        <textarea name="related" placeholder="请输入内容"
                                  class="layui-textarea note">${col.related}</textarea>
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea name="note" placeholder="请输入内容" class="layui-textarea note">${col.note}</textarea>
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
