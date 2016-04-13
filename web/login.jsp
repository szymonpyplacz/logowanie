<%--
  Created by IntelliJ IDEA.
  User: Szymon
  Date: 2016-04-10
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div id="header">
</div>
<h4>What would you like to do?</h4>
<a href="add.jsp"> Add new music album</a><br>
<a href="music.jsp"> See all albums</a>
</body>
</html>

<script>
    <%
    Cookie cookie = null;
    Cookie [] cookies = null;
    cookies = request.getCookies();
    cookie = cookies[0];
    %>
    var elem = document.getElementById("header");
    elem.innerHTML = "Hello, <%out.print(cookie.getValue());%>";
</script>