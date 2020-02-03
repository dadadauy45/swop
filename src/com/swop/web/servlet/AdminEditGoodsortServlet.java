package com.swop.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.swop.domain.GoodsSort;
import com.swop.service.AdminGoodsortService;

public class AdminEditGoodsortServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		Map<String, String[]> parameterMap = request.getParameterMap();
		GoodsSort goodsort = new GoodsSort();
		
		try {
			BeanUtils.populate(goodsort, parameterMap);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		// 更改
		AdminGoodsortService servcie = new AdminGoodsortService();
		servcie.editGoodsort(goodsort);
		
		response.sendRedirect(request.getContextPath()+"/adminGoodsortList");
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}