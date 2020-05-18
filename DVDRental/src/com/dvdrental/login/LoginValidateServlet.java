package com.dvdrental.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginValidateServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String userName = req.getParameter("txtEmailAddress");
		String password = req.getParameter("txtPassword");
		HttpSession session = req.getSession();
		Login_Bean login = new Login_Bean();
		if(userName !=null && password !=null && login.check(userName, password)){
			session.setAttribute("isLoggedIn", true);
			session.setAttribute("user_name", userName);
			session.setAttribute("cust_id",login.getUserId());
			session.setAttribute("user_type",login.getUserType());
			resp.sendRedirect(req.getContextPath()+"/jsp/global/home.jsp");
		}else{
			session.setAttribute("login", false);
			resp.sendRedirect(req.getContextPath()+"/jsp/user/login/login.jsp");
		}
	}
}
