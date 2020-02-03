package com.swop.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.service.AdminFunsortService;

public class AdminDelFunsortServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminFunsortService service  = new AdminFunsortService();
		
		//获取参数
		String fun_id = request.getParameter("fun_id");
		service.delFunsortById(fun_id);
		
		response.sendRedirect(request.getContextPath()+"/adminFunsortList");
	}
		

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
