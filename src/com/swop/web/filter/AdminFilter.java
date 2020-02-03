package com.swop.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.swop.domain.AdminUser;
import com.swop.domain.User;

public class AdminFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletResponse resp = (HttpServletResponse) response;
		HttpServletRequest req = (HttpServletRequest) request;

		HttpSession session = req.getSession();
		AdminUser adminUser = (AdminUser) session.getAttribute("adminUser");

		// 获得请求路径
		String path = req.getRequestURI();
		if (path.indexOf("/admin/home.jsp") > -1) {
			// 不过滤，继续执行下面的操作
			chain.doFilter(req, resp);
		} else if (adminUser == null) {
			// 没有登录
			resp.sendRedirect(req.getContextPath() + "/admin/home.jsp");
		} else {
			// 登录
			chain.doFilter(request, response);
		}

		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
