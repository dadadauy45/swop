package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.swop.domain.Funsort;
import com.swop.service.FunSortService;

public class FunSortListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		FunSortService service = new FunSortService();
		List<Funsort> funSortList = service.findFunSortList();
		
		//把数据转换成json格式字符串
		Gson gson = new Gson();
		String json = gson.toJson(funSortList);
		
		response.setCharacterEncoding("utf-8");
		//把json写到页面
		response.getWriter().write(json);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}