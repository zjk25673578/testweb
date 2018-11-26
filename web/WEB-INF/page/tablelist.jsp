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
<a href="RefreshTable" class="layui-btn layui-btn-xs">刷新数据</a>
<a href="Login" class="layui-btn layui-btn-xs layui-btn-normal">重新登录数据库</a>
<a href="DelTable" class="layui-btn layui-btn-xs layui-btn-danger" onclick="return delete_confirm();">删除所有表信息</a>
<a href="DelColumn" class="layui-btn layui-btn-xs layui-btn-danger" onclick="return delete_confirm();">删除所有列信息</a>
<hr class="layui-bg-gray">
<form action="${ctx}/TableList" method="post">
    <label class="layui-form-label" style="cursor: pointer;" for="keywords">表名:</label>
    <div class="layui-input-inline">
        <input class="layui-input" type="text" id="keywords" name="keywords" value="${keywords}"/>
    </div>
    <input class="layui-btn layui-btn-xs layui-btn-warm" type="submit" value="Search"/>
    <input class="layui-btn layui-btn-xs layui-btn-normal" type="button" value="Reset" onclick="clearKeywords()"/>
    <input class="layui-btn layui-btn-xs" type="button" value="Clear" onclick="clearSelections()"/>
</form>
<table class="layui-table" lay-size="sm">
    <colgroup>
        <col width="50">
        <col width="100">
        <col width="200">
        <col width="300">
        <col width="400">
        <col width="200">
        <col width="400">
        <col width="">
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
    <tbody>
    <c:forEach items="${list}" var="tables" varStatus="vs">
        <tr>
            <td>${vs.index + 1}</td>
            <td>${tables.sche}</td>
            <td><a href="ColumnList?tname=${tables.tname}" target="_blank">${tables.tname}</a></td>
            <td>${tables.profunc}</td>
            <td>${tables.tcomment}</td>
            <td>${tables.related}</td>
            <td>${tables.note}</td>
            <td>
                <div class="layui-btn-group">
                    <a class="layui-btn layui-btn-xs" href="UpdateTable?ids=${tables.ids}">修改</a>
                    <a class="layui-btn layui-btn-xs layui-btn-danger" href="DeleteTable?ids=${tables.ids}"
                       onclick="return delete_confirm();">删除</a>
                </div>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
