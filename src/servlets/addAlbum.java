package servlets;

import org.h2.command.ddl.CreateTable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "addAlbum", urlPatterns = "/addAlbum")
public class addAlbum extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bandName = request.getParameter("bandName");
        String albumName = request.getParameter("albumName");
        int year = Integer.parseInt(request.getParameter("year"));
        String genre = request.getParameter("genre");
    }
}


