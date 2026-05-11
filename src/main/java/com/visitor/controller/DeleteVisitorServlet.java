package com.visitor.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.visitor.dao.VisitorDAO;

@WebServlet("/DeleteVisitorServlet")
public class DeleteVisitorServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        VisitorDAO dao = new VisitorDAO();
        boolean status = dao.deleteVisitor(id);

        if(status){
            response.sendRedirect("dashboard.jsp");
        } else {
            response.getWriter().println("Delete Failed!");
        }
    }
}