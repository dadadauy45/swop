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

public class RecordServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 根据uid查找这个用户所有发布的商品
		// 获得session
		User user = (User) request.getSession().getAttribute("user");

		// 获得service
		ProductService service = new ProductService();
		List<Product> changeRecode = service.recordProductByUid(user);
		List<Product> rentRecode = service.rentRecodeByUid(user);
		List<Product> donateRecode = service.donateRecodeByUid(user);
		List<Product> sellRecode = service.sellRecodeByUid(user);
		List<Product> adoptRecode = service.adoptRecodeByUid(user);

		// 把获得productList保存到request域中，转发
		request.setAttribute("changeRecode", changeRecode);
		request.setAttribute("rentRecode", rentRecode);
		request.setAttribute("donateRecode", donateRecode);
		request.setAttribute("sellRecode", sellRecode);
		request.setAttribute("adoptRecode", adoptRecode);
		request.getRequestDispatcher("/record.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
