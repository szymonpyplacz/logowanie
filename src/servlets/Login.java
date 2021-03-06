package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Login", urlPatterns = "/login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("user");
        String password = request.getParameter("pass");
        PrintWriter out = response.getWriter();
        if("admin".equals( request.getParameter("user")) && "admin".equals(request.getParameter("pass")))
        {
            Cookie login = new Cookie("user", request.getParameter("user"));
            request.setAttribute("user", userName);
            response.addCookie(login);
            request.getRequestDispatcher("login.jsp").forward(request,response);
            response.sendRedirect("login.jsp");
        }
        else{
            request.setAttribute("loginTest", Boolean.TRUE);
            request.getRequestDispatcher("index.jsp").forward(request,response);
    }
    }

}
