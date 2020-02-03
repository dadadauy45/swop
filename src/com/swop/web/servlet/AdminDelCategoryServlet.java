package com.swop.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.service.AdminCategoryService;

public class AdminDelCategoryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//获取cid
		String cid = request.getParameter("cid");
		AdminCategoryService service = new AdminCategoryService();
		service.delCategoryByCid(cid);
		
		response.sendRedirect(request.getContextPath()+"/adminCategoryList");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
