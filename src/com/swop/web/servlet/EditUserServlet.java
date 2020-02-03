package com.swop.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.swop.domain.User;
import com.swop.service.UserService;

public class EditUserServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		//封装参数
		User user = new User();
		Map<String, String[]> parameterMap = request.getParameterMap();
		try {
			BeanUtils.populate(user, parameterMap);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
		UserService service = new UserService();
		boolean flag = service.editUser(user);
		
		if(flag) {
			//修改成功跳到个人中心
			response.sendRedirect(request.getContextPath()+"/personalProduct");
		}else {
			//修改失败，提示修改失败
			request.setAttribute("errorInfo", "修改失败！！");
			request.getRequestDispatcher("/modified.jsp").forward(request, response);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
