package com.swop.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.service.AdminGoodsortService;

public class AdminDelGoodsortServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String good_id = request.getParameter("goods_id");
		AdminGoodsortService servcie = new AdminGoodsortService();
		servcie.delGoodsortById(good_id);
		
		response.sendRedirect(request.getContextPath()+"/adminGoodsortList");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
