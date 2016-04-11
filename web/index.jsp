<%@ page import="java.io.PrintWriter" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  
  <script>
    function hideBox(failedLogin) {
      var elem = document.getElementById("failedLogin")
      if(failedLogin != true)
        elem.style.display = "none";
      else
        elem.style.display = "inline";
    }
  </script>
  
  <body onload="hideBox(<%=request.getAttribute("loginTest")%>)">

  <div id="header">
    <h2> Welcome</h2>
  </div>
  <div id="failedLogin" style="display: inline">
    <h4>failed login attempt</h4>
  </div>

  <form method="post" action="/Login">
    <input name="user" placeholder="user name"/><br>
    <input name="pass" placeholder="password" type="password"/><br><br>
    <input type="submit" value="Login" name="begin"/><br><br>
  </form>
  </body>
</html>
