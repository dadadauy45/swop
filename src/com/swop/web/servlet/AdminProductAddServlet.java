package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Category;
import com.swop.domain.Funsort;
import com.swop.domain.GoodsSort;
import com.swop.service.AdminProductService;

public class AdminProductAddServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//准备所有的分类信息
		AdminProductService service = new AdminProductService();
		List<Category> adminCategoryList = service.findCategoryList();
		List<Funsort> adminFunSortList = service.findFunSortList();
		List<GoodsSort> adminGoodsSortList = service.findGoodsSortList();
		
		request.setAttribute("adminCategoryList", adminCategoryList);
		request.setAttribute("adminFunSortList", adminFunSortList);
		request.setAttribute("adminGoodsSortList", adminGoodsSortList);
		
		request.getRequestDispatcher("/admin/product/add.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
