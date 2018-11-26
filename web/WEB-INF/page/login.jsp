<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MYSQL数据库登录</title>
    <link rel="stylesheet" href="${ctx}/res/layui/css/layui.css">
    <script type="text/javascript" src="${ctx}/res/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx}/js/login.js"></script>
    <style>
        body {
            padding: 20px 30px;
        }

        .layui-form-item .layui-form-checkbox {
            margin-top: 0;
        }
    </style>
</head>
<body>
<div class="layui-container">
    <h1>MYSQL数据库查看手册</h1>
    <cif test="${not empty msg}"><h3>${msg}</h3></cif>
    <hr class="layui-bg-red">
    <form id="login-form" class="layui-form layui-form-pane" action="${ctx}/Main" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input name="username" value="${dbConnection.username}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input name="password" value="${dbConnection.password}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">数据库地址</label>
            <div class="layui-input-inline">
                <input name="address" value="${dbConnection.address}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">数据库类型</label>
            <div class="layui-input-inline">
                <input name="dbtype" value="${empty dbConnection.dbtype ? 'mysql' : dbConnection.dbtype}"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">数据库名</label>
            <div class="layui-input-inline">
                <input name="docDbname" value="${dbConnection.docDbname}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-inline">
                <input class="layui-btn layui-btn-fluid layui-btn-sm" type="submit" value="进入"/>
            </div>
            <div class="layui-input-inline">
                <input type="checkbox" name="issave" value="1" title="保存为常用数据库">
            </div>
        </div>
    </form>
    <fieldset class="layui-elem-field" style="margin-top: 30px;">
        <legend>常用数据库</legend>
        <div class="layui-field-box">
            <c:forEach items="${list}" var="dbDoc">
                <p>
                    <a class="layui-btn layui-btn-xs"
                       href="Login?username=${dbDoc.username}&password=${dbDoc.password}&address=${dbDoc.address}&dbtype=${dbDoc.dbtype}&docDbname=${dbDoc.dbname}">
                            ${dbDoc.username} - ${dbDoc.dbname}
                    </a>
                    <a class="layui-btn layui-btn-xs layui-btn-danger" href="DeleteCommons?ids=${dbDoc.ids}">删除</a>
                </p>
            </c:forEach>
        </div>
    </fieldset>
</div>
</body>
</html>
