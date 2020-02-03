package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Funsort;
import com.swop.domain.GoodsSort;
import com.swop.service.AdminProductService;

public class AdminGoodsortListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AdminProductService service = new AdminProductService();
		List<GoodsSort> adminGoodsortList = service.findGoodsSortList();
		
		request.setAttribute("adminGoodsortList", adminGoodsortList);
		request.getRequestDispatcher("/admin/goodsort/list.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
