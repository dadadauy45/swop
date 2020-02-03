package com.swop.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.service.ProductService;

public class WuliuServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//解决乱码
		request.setCharacterEncoding("utf-8");
		
		//获得pid
		String pid = request.getParameter("pid");
		//获得地址
		String address = request.getParameter("address");
		//获得手机号码
		String telephone = request.getParameter("telephone");
		//调用service的方法实现物流功能
		ProductService service = new ProductService();
		boolean flag = service.createWuliu(pid,address,telephone);
		
		if(flag) {
			//转到物流成功，转发到personalProduct
			response.sendRedirect(request.getContextPath()+"/personalProduct");
		}else {
			//转到物流失败
			request.setAttribute("errorInfo", "发送失败，请重新发送！！");
			request.getRequestDispatcher("/chat.jsp").forward(request, response);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
