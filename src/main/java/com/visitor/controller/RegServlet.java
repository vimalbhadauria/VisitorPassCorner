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
@WebServlet("/register")
public class RegServlet  extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("uname");
		String email=req.getParameter("email");
		String pass=req.getParameter("pwd");
		System.out.println(name+" "+ email+" "+ pass);
		User u=new User();
		u.setUname(name);
		u.setEmail(email);
		u.setPass(pass);
		UserDAO dao=new UserDAO();
		boolean b=dao.registerUser(u);
		if(b!=false)
		{
			HttpSession session=req.getSession();
			session.setAttribute("uname", name);
			resp.sendRedirect("Reg.jsp?msg=success");
		}
		else
		{
			resp.sendRedirect("Reg.jsp?error=1");
		}
	}

}
