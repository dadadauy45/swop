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

public class PersonalProductServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//根据uid查找这个用户所有发布的商品
		//获得session
		User user = (User) request.getSession().getAttribute("user");
		
		//获得service
		ProductService service = new ProductService();
		List<Product> productList = service.findProductByUid(user);
		List<Product> rentList = service.rentProductByUid(user);
		List<Product> sellList = service.sellProductByUid(user);
		List<Product> danateList = service.donateProductByUid(user);
		List<Product> boardList = service.boardProductByUid(user);
		
		//把获得productList保存到request域中，转发
		request.setAttribute("productList", productList);
		request.setAttribute("rentList", rentList);
		request.setAttribute("sellList", sellList);
		request.setAttribute("danateList", danateList);
		request.setAttribute("boardList", boardList);
		request.getRequestDispatcher("/personal.jsp").forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
