package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.swop.domain.GoodsSort;
import com.swop.service.GoodsSortService;

public class GoodSortListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			GoodsSortService service = new GoodsSortService();
			
			List<GoodsSort> goodsSortList = service.findGoodsSort();
			
			Gson gson = new Gson();
			String json = gson.toJson(goodsSortList);
			
			//乱码
			response.setCharacterEncoding("utf-8");
			response.getWriter().write(json);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
