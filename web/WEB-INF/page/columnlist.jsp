<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${tname}</title>
    <link rel="stylesheet" href="${ctx}/res/layui/css/layui.css">
    <link rel="stylesheet" href="${ctx}/css/global.css">
    <script type="text/javascript" src="${ctx}/res/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/table.js"></script>
</head>
<body>
    <a class="layui-btn layui-btn-xs layui-btn-normal" href="TableList">返回表</a>
    <a class="layui-btn layui-btn-xs" href="RefreshCol?tname=${tname}">刷新这个表</a>
    <input class="layui-btn layui-btn-xs" type="button" value="Clear" onclick="clearSelections()"/>
    <fieldset class="layui-elem-field layui-field-title">
        <legend>表名 - ${tname}</legend>
    </fieldset>
    <table class="layui-table" lay-size="sm">
        <colgroup>
            <col width="80">
            <col width="180">
            <col width="100">
            <col width="100">
            <col width="100">
            <col width="200">
            <col width="400">
            <col width="400">
            <col width="160">
        </colgroup>
        <thead>
        <tr>
            <td>序号</td>
            <td>列名</td>
            <td>数据类型</td>
            <td>最大长度</td>
            <td>可为空</td>
            <td>关联列或表</td>
            <td>注释</td>
            <td>备注</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${columnsList}" var="columns" varStatus="vs">
            <tr>
                <td>${vs.index + 1}</td>
                <td>${columns.colname}</td>
                <td>${columns.coltype}</td>
                <td>${columns.clength}</td>
                <td>${columns.isnull}</td>
                <td>${columns.related}</td>
                <td>${columns.ccomment}</td>
                <td>${columns.note}</td>
                <td>
                    <div class="layui-btn-group">
                        <a class="layui-btn layui-btn-xs" href="UpdateCol?ids=${columns.ids}">修改</a>
                        <a class="layui-btn layui-btn-xs layui-btn-danger"
                           onclick="delete_confirm('DeleteColumn?ids=${columns.ids}&tname=${columns.tname}')">删除</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
