package com.swop.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminOutServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//获得session里面的adminUser对象，然后remove掉就可以了
		request.getSession().setAttribute("adminUser", "");
		request.getSession().removeAttribute("adminUser");
		
		//重定向到登录页面
		response.sendRedirect(request.getContextPath()+"/admin/home.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
