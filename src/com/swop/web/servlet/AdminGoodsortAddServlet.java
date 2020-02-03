package com.swop.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.GoodsSort;
import com.swop.service.AdminGoodsortService;
import com.swop.utils.CommenUUIDUtils;

public class AdminGoodsortAddServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		String good_name = request.getParameter("goods_name");
		GoodsSort goodsort = new GoodsSort();
		goodsort.setGoods_id(CommenUUIDUtils.getUUID());
		goodsort.setGoods_name(good_name);
		
		AdminGoodsortService service  = new AdminGoodsortService();
		service.addGoodsort(goodsort);
		
		response.sendRedirect(request.getContextPath()+"/adminGoodsortList");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
