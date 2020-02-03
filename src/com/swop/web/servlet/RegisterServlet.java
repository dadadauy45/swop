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

import com.swop.domain.User;
import com.swop.service.UserService;
import com.swop.utils.CommenUUIDUtils;

public class RegisterServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserService userService = new UserService();
		
		//解决乱码
		request.setCharacterEncoding("utf-8");
		//把页面的数据封装起来，注册
		User user = new User();
		Map<String, String[]> parameterMap = request.getParameterMap();
		try {
			BeanUtils.populate(user, parameterMap);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
		//封装UID
		user.setUid(CommenUUIDUtils.getUUID());
		user.setDate(new Date());
		
		//调用servcie注册用户
		boolean isRegister = userService.register(user);
		//转发到登录页面
		if(isRegister) {
			//注册成功
			response.sendRedirect(request.getContextPath()+"/login.jsp");
		}else {
			//注册失败。跳转到注册页面
			response.sendRedirect(request.getContextPath()+"/register.jsp");
			
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
