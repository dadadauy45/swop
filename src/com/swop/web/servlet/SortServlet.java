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

public class SortServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductService service = new ProductService();
		String cid = request.getParameter("cid");
		List<Product> productList = service.getProductListByCid(cid);
		
		CategoryService serviceCategory = new CategoryService();
		List<Category> categoryList = serviceCategory.getCategoryList();
		
		List<Newlevel> newLevelList = serviceCategory.getLevelList();
		List<GoodsSort> goodsList = serviceCategory.getGoodsList();
		
		//保存到request域中。转发
		request.setAttribute("categoryList", categoryList);
		request.setAttribute("newLevelList", newLevelList);
		request.setAttribute("goodsList", goodsList);
		
		request.setAttribute("productList", productList);
		request.getRequestDispatcher("/change.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
