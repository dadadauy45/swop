package com.swop.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Product;
import com.swop.service.ProductService;

public class ProductInfoServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ProductService service = new ProductService();

		String pid = request.getParameter("pid");
		// 根据pid获得商品详情
		Product product = service.findProductByPid(pid);

		request.setAttribute("product", product);
		request.getRequestDispatcher("/Commodity_detail.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
