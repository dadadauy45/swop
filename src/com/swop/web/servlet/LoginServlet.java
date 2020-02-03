package com.swop.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.swop.domain.User;
import com.swop.service.UserService;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService = new UserService();
		
		//解决乱码
		request.setCharacterEncoding("utf-8");
		
		//获取session、
		HttpSession session = request.getSession();
		
		//获取参数
		String uname = request.getParameter("uname");
		String upassword = request.getParameter("upassword");
		//通过用户名密码查找用户
		User u = userService.login(uname,upassword);
		
		//判断是否为空
		if(u==null) {
			//没有获取到user
			request.setAttribute("loginInfo", "用户名或密码错误！");
			//转发到登录页面
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}else {
			//把user存到session中
			session.setAttribute("user", u);
			//重定向到首页
			response.sendRedirect(request.getContextPath()+"/index");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
