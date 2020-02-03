package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Product;
import com.swop.domain.User;
import com.swop.service.ProductService;

public class MyWuliuServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//准备物流信息中待发送的商品信息,即查找state为10的商品
		ProductService service = new ProductService();
		
		User user = (User) request.getSession().getAttribute("user");
		
		List<Product> wuliuProductList = service.findWuliuProduct(user);
		
		request.setAttribute("wuliuProductList", wuliuProductList);
		request.getRequestDispatcher("/wuliu.jsp").forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
