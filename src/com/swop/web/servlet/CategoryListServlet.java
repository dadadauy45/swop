package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.swop.domain.Category;
import com.swop.service.CategoryService;

public class CategoryListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CategoryService categoryService = new CategoryService();
		//调用service方法查询类别信息
		List<Category> categoryList = categoryService.getCategoryList();
		
		//把数据转换成json格式字符串
		Gson gson = new Gson();
		String json = gson.toJson(categoryList);
		
		response.setCharacterEncoding("utf-8");
		//把json写到页面
		response.getWriter().write(json);
		
	/*	//把categorylist存储到request域中，转发到页面显示
		request.setAttribute("categoryList", categoryList);
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);*/
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}