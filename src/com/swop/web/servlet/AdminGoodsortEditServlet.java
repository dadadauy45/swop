package com.swop.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.GoodsSort;
import com.swop.service.AdminGoodsortService;

public class AdminGoodsortEditServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String good_id = request.getParameter("goods_id");
		AdminGoodsortService servcie = new AdminGoodsortService();
		
		//根据good_id获取goodsort对象
		GoodsSort goodsort = servcie.findGoodsortById(good_id);
		
		request.setAttribute("goodsort", goodsort);
		request.getRequestDispatcher("/admin/goodsort/edit.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
