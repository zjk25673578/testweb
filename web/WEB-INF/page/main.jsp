<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>员工考勤</title>
</head>
<body>
请选择需要查看的员工:
<select name="" id="">
    <c:forEach items="${userList}" var="user">
        <option value="${user.ids}">${user.realname}</option>
    </c:forEach>
</select>
</body>
</html>
