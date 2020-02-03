package com.swop.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.swop.domain.Category;
import com.swop.service.AdminCategoryService;

public class AdminEditCategoryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		Map<String, String[]> parameterMap = request.getParameterMap();
		Category category = new Category();
		try {
			BeanUtils.populate(category, parameterMap);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		AdminCategoryService service = new AdminCategoryService();
		service.editCategory(category);
		
		response.sendRedirect(request.getContextPath()+"/adminCategoryList");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
