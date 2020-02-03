package com.swop.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Funsort;
import com.swop.service.AdminFunsortService;

public class AdminFunsortEditServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//获取fun_id
		String fun_id = request.getParameter("fun_id");
		AdminFunsortService service  = new AdminFunsortService();
		
		//通过fun_id获得fun_sort对象
		Funsort funSort = service.getFunsortById(fun_id);
		
		request.setAttribute("funSort", funSort);
		request.getRequestDispatcher("/admin/funsort/edit.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}