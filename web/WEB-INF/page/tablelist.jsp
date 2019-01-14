<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>表信息</title>
    <link rel="stylesheet" href="${ctx}/res/layui/css/layui.css">
    <link rel="stylesheet" href="${ctx}/css/global.css">
    <script type="text/javascript" src="${ctx}/res/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/table.js"></script>
</head>
<body>
    <a class="layui-btn layui-btn-xs" onclick="refreshTable('RefreshTable');">刷新数据</a>
    <a href="Login" class="layui-btn layui-btn-xs layui-btn-normal">重新登录数据库</a>
    <a class="layui-btn layui-btn-xs layui-btn-danger" onclick="delete_confirm('DelTable');">删除所有表信息</a>
    <a class="layui-btn layui-btn-xs layui-btn-danger" onclick="delete_confirm('DelColumn');">删除所有列信息</a>
    <a class="layui-btn layui-btn-xs layui-btn-warm" onclick="exportTable('ExportTable');">导出数据库文档</a>
    <hr class="layui-bg-gray">
    <form action="${ctx}/TableList" method="post">
        <div class="layui-inline">
            <label class="layui-form-label" style="cursor: pointer;" for="tabname">表名:</label>
            <div class="layui-input-inline">
                <input class="layui-input" type="text" id="tabname" name="tabname" value="${tabname}"/>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label" style="cursor: pointer;" for="colname">列名:</label>
            <div class="layui-input-inline">
                <input class="layui-input" type="text" id="colname" name="colname" value="${colname}"/>
            </div>
        </div>
        <input class="layui-btn layui-btn-xs layui-btn-warm" type="submit" value="Search"/>
        <input class="layui-btn layui-btn-xs layui-btn-normal" type="button" value="Reset" onclick="clearKeywords()"/>
        <input class="layui-btn layui-btn-xs" type="button" value="Clear" onclick="clearSelections()"/>
        <input class="layui-btn layui-btn-primary layui-btn-xs" type="button" value="All" onclick="allSelector()"/>
    </form>
    <table class="layui-table" lay-size="sm">
        <colgroup>
            <col width="80">
            <col width="100">
            <col width="160">
            <col width="200">
            <col width="400">
            <col width="200">
            <col width="400">
            <col width="160">
        </colgroup>
        <thead>
        <tr>
            <td>序号</td>
            <td>数据来源</td>
            <td>表名</td>
            <td>关联项目模块</td>
            <td>注释</td>
            <td>关联其他表</td>
            <td>备注</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody id="tbody">
        <c:forEach items="${list}" var="tables" varStatus="vs">
            <tr>
                <td ids="${tables.ids}">${vs.index + 1}</td>
                <td>${tables.sche}</td>
                <td><a href="ColumnList?tname=${tables.tname}" target="_blank">${tables.tname}</a></td>
                <td>${tables.profunc}</td>
                <td>${tables.tcomment}</td>
                <td>${tables.related}</td>
                <td>${tables.note}</td>
                <td>
                    <div class="layui-btn-group">
                        <a class="layui-btn layui-btn-xs" href="UpdateTable?ids=${tables.ids}">修改</a>
                        <a class="layui-btn layui-btn-xs layui-btn-danger"
                           onclick="delete_confirm('DeleteTable?ids=${tables.ids}')">删除</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
