<%--
  Created by IntelliJ IDEA.
  User: Szymon
  Date: 2016-04-12
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a new album</title>
</head>
<body>
<h4>Add a new album</h4>

<form method="post" action="/addAlbum">
    <input type="text" placeholder="band name" name="bandName"/><br>
    <input type="text" placeholder="album name" name="albumName"/><br>
    <input type="number" placeholder="year" name="year"  max="2016" min="1900" /><br>
    <input type="radio" name="genre" value="rock" />rock<br>
    <input type="radio" name="genre" value="metal" />metal<br>
    <input type="radio" name="genre" value="reggea" />reggea<br>
    <input type="radio" name="genre" value="house" />house<br>
    <input type="radio" name="genre" value="techno" />techno<br>
    <input type="radio" name="genre" value="folk" />folk<br>
    <input type="radio" name="genre" value="pop" />pop<br>
    <input type="radio" name="genre" value="other" />other<br><br>
    <br>
<input type="submit" value="Add" name="add"/><br><br>
</form>
<button><a href="login.jsp">return</a></button>
</body>
</html>
