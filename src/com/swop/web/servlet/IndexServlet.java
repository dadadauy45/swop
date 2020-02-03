package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Product;
import com.swop.service.ProductService;

public class IndexServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductService service = new ProductService();
	
		//书籍
		List<Product> product_book = service.findBooks();
		//日用
		List<Product> product_daily = service.findDailys();
		
		//服装
		List<Product> product_cloth = service.findCloths();
		
		//鞋包
		List<Product> product_shoe = service.findShoes();
		
		//饰品
		List<Product> product_decoration = service.findDecorations();
		
		request.setAttribute("product_book", product_book);
		request.setAttribute("product_daily", product_daily);
		request.setAttribute("product_cloth", product_cloth);
		request.setAttribute("product_shoe", product_shoe);
		request.setAttribute("product_decoration", product_decoration);
		
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
