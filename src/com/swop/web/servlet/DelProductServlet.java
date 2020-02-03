package com.swop.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.service.ProductService;

public class DelProductServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//获取pid
		String pid = request.getParameter("pid");
		ProductService service = new ProductService();
		
		boolean flag = service.delProductByPid(pid);
		if(flag) {
			//删除成功，跳转到PersonalProduct这个servlet
			response.sendRedirect(request.getContextPath()+"/personalProduct");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
