package com.swop.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.swop.domain.Funsort;
import com.swop.service.AdminFunsortService;

public class AdminEditFunsortServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		Funsort funsort = new Funsort();
		Map<String, String[]> parameterMap = request.getParameterMap();
		
		try {
			BeanUtils.populate(funsort, parameterMap);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		AdminFunsortService service  = new AdminFunsortService();
		service.editFunsort(funsort);
		
		response.sendRedirect(request.getContextPath()+"/adminFunsortList");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
