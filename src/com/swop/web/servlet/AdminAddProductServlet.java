package com.swop.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.swop.domain.Product;
import com.swop.service.AdminProductService;
import com.swop.utils.CommenUUIDUtils;

public class AdminAddProductServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//解决乱码
		request.setCharacterEncoding("utf-8");
		Map<String, String[]> properties = request.getParameterMap();
		Product product = new Product();
		try {
			BeanUtils.populate(product, properties);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		//pid
		product.setPid(CommenUUIDUtils.getUUID());
		//pdate
		product.setPdate(new Date());
		
		AdminProductService service = new AdminProductService();
		boolean flag = service.adminAddProducrt(product);
		if(flag) {
			//添加成功
			response.sendRedirect(request.getContextPath()+"/adminProductList");
		}else {
			//添加失败
			response.sendRedirect(request.getContextPath()+"/adminProductAdd");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
