package com.swop.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Category;
import com.swop.service.AdminCategoryService;

public class AdminCategoryEditServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//获得cid
		String cid = request.getParameter("cid");
		AdminCategoryService service = new AdminCategoryService();
		
		//根据cid获得category
		Category category = service.findCategoryByCid(cid);
		
		request.setAttribute("category", category);
		
		request.getRequestDispatcher("/admin/category/edit.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
