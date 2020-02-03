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
import com.swop.domain.Product;
import com.swop.service.AdminProductService;

public class AdminProductEditServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//修改商品信息
		String pid = request.getParameter("pid");

		//根据pid查找商品
		AdminProductService service = new AdminProductService();
		
		Product product = service.findProductByPid(pid);
		List<Category> categoryList = service.findCategoryList();
		List<Funsort> funSort = service.findFunSortList();
		List<GoodsSort> goodSort = service.findGoodsSortList();
		
		
		//查到商品回显
		request.setAttribute("product", product);
		request.setAttribute("categoryList", categoryList);
		request.setAttribute("funSort", funSort);
		request.setAttribute("goodSort", goodSort);
		
		request.getRequestDispatcher("/admin/product/edit.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
