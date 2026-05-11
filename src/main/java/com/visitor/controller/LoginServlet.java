package com.visitor.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.visitor.dao.UserDAO;
import com.visitor.model.User;
@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("uname");
		String pass=req.getParameter("pwd");
		User u=new User();
		u.setUname(name);
		u.setPass(pass);
		UserDAO dao=new UserDAO();
		boolean b=dao.loginUser(u);
		if(b!=false)
		{
			HttpSession session=req.getSession();
			session.setAttribute("uname", name);
			resp.sendRedirect("dashboard.jsp");
		}else {
            resp.sendRedirect("login.jsp?error=1");
        }
		
	}

}
