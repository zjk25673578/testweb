<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>数据库文档</title>
    <meta charset="utf-8">
</head>
<body>
    <c:forEach items="${userList}" var="user">
        <p>${user}</p>
    </c:forEach>
</body>
</html>
