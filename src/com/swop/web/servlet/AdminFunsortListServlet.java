package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Funsort;
import com.swop.service.AdminProductService;

public class AdminFunsortListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminProductService service = new AdminProductService();
		List<Funsort> adminFunsortList = service.findFunSortList();
		
		request.setAttribute("adminFunsortList", adminFunsortList);
		request.getRequestDispatcher("/admin/funsort/list.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
