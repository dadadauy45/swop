package com.swop.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Funsort;
import com.swop.service.AdminFunsortService;
import com.swop.utils.CommenUUIDUtils;

public class AdminAddFunsortServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String fun_name = request.getParameter("fun_name");
		
		Funsort funsort = new Funsort();
		funsort.setFun_id(CommenUUIDUtils.getUUID());
		funsort.setFun_name(fun_name);
		
		AdminFunsortService service = new AdminFunsortService();
		service.addFunsort(funsort);
		
		response.sendRedirect(request.getContextPath()+"/adminFunsortList");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
