package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.PageBean;
import com.swop.domain.Product;
import com.swop.service.AdminProductService;

public class AdminProductListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//查找数据库所有商品
		AdminProductService service = new AdminProductService();
		
		//当前页(假如第一页)
		String currentPagestr = request.getParameter("currentPage");
		if(currentPagestr==null)
			currentPagestr = "1";
		int currentPage = Integer.parseInt(currentPagestr);
		//每页显示条数
		int currentCount = 10;
		
		PageBean<Product> pageBean = service.findPageBean(currentPage,currentCount);
		
		request.setAttribute("pageBean", pageBean);
		request.getRequestDispatcher("/admin/product/list.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
