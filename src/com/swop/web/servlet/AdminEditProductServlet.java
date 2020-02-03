package com.swop.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.swop.domain.Product;
import com.swop.service.AdminProductService;

public class AdminEditProductServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//解决乱码
		request.setCharacterEncoding("utf-8");
		
		Product product = new Product();
		Map<String, String[]> parameterMap = request.getParameterMap();
		try {
			BeanUtils.populate(product, parameterMap);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		AdminProductService service = new AdminProductService();
		boolean flag = service.adminEditProduct(product);
		if(flag) {
			//修改成功
			response.sendRedirect(request.getContextPath()+"/adminProductList");
		}else {
			//修改失败
			response.sendRedirect(request.getContextPath()+"/adminProductEdit?pid="+product.getPid());
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
