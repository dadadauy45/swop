package com.swop.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Category;
import com.swop.service.AdminCategoryService;
import com.swop.utils.CommenUUIDUtils;

public class AdminCategoryAddServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//解决乱码
		request.setCharacterEncoding("utf-8");
		String cname = request.getParameter("cname");
		Category category = new Category();
		category.setCid(CommenUUIDUtils.getUUID());
		category.setCname(cname);
		
		AdminCategoryService service = new AdminCategoryService();
		service.addCategory(category);
		
		response.sendRedirect(request.getContextPath()+"/adminCategoryList");
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
