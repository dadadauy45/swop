package com.swop.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swop.domain.Category;
import com.swop.domain.GoodsSort;
import com.swop.domain.Newlevel;
import com.swop.domain.Product;
import com.swop.service.CategoryService;
import com.swop.service.ProductService;

public class SearchProductServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//解决乱码
		request.setCharacterEncoding("utf-8");
		//获取参数
		String search = request.getParameter("search");
		
		ProductService service = new ProductService();
		List<Product> productList = service.findSortProduct(search);
		
		CategoryService serviceCategory = new CategoryService();
		List<Category> categoryList = serviceCategory.getCategoryList();
		
		List<Newlevel> newLevelList = serviceCategory.getLevelList();
		List<GoodsSort> goodsList = serviceCategory.getGoodsList();
		
		//保存到request域中。转发
		request.setAttribute("categoryList", categoryList);
		request.setAttribute("newLevelList", newLevelList);
		request.setAttribute("goodsList", goodsList);
		
		
		//将商品保存到request域中
		request.setAttribute("productList", productList);
//		转发到change.jsp中
		request.getRequestDispatcher("/change.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}