package com.visitor.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.visitor.dao.VisitorDAO;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		try {
			
			int id = Integer.parseInt(req.getParameter("id"));

			
			VisitorDAO dao = new VisitorDAO();
			dao.checkoutVisitor(id);

		} catch (Exception e) {
			e.printStackTrace();
		}

		
		resp.sendRedirect("dashboard.jsp");
	}
}