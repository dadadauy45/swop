package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Category;
import com.swop.domain.GoodsSort;
import com.swop.domain.Newlevel;
import com.swop.service.CategoryService;

public class FindCategoryListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CategoryService service = new CategoryService();
		List<Category> categoryList = service.getCategoryList();
		
		List<Newlevel> newLevelList = service.getLevelList();
		List<GoodsSort> goodsList = service.getGoodsList();
		
		//保存到request域中。转发
		request.setAttribute("categoryList", categoryList);
		request.setAttribute("newLevelList", newLevelList);
		request.setAttribute("goodsList", goodsList);
		request.getRequestDispatcher("/exchange.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
