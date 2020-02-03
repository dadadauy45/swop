package com.swop.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.swop.domain.AdminUser;
import com.swop.service.AdminUserService;

public class AdminLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AdminUser admin_user = new AdminUser();
		Map<String, String[]> parameterMap = request.getParameterMap();
		
		try {
			BeanUtils.populate(admin_user, parameterMap);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
		AdminUserService service = new AdminUserService();
		AdminUser adminUser = service.adminLogin(admin_user);
		
		if(adminUser!=null) {
			//登陆成功
			request.getSession().setAttribute("adminUser", adminUser);
			response.sendRedirect(request.getContextPath()+"/admin/index.jsp");
		}else {
			response.sendRedirect(request.getContextPath()+"/admin/home.jsp");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
