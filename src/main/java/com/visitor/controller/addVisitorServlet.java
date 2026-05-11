package com.visitor.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.visitor.dao.VisitorDAO;
import com.visitor.model.Visitor;

@WebServlet("/addVisitor")
@MultipartConfig
public class addVisitorServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("vname");
        String contact = req.getParameter("contact");
        String purpose = req.getParameter("purpose");

       
        Part filePart = req.getPart("image");
        String fileName = filePart.getSubmittedFileName();

        
        String uploadPath = getServletContext().getRealPath("/visitorImage");

       
        File f = new File(uploadPath);
        if (!f.exists()) {
            f.mkdirs();   
        }
        filePart.write(uploadPath + "/" + fileName);

        System.out.println("Saved at: " + uploadPath + "/" + fileName);

        
        Visitor v = new Visitor();
        v.setVname(name);
        v.setContact(contact);
        v.setPurpose(purpose);
        v.setImagePath(fileName);

        new VisitorDAO().addVisitor(v);

       resp.sendRedirect("dashboard.jsp");
    }
}