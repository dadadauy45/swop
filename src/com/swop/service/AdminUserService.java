package com.swop.service;

import java.sql.SQLException;

import com.swop.dao.AdminUserDao;
import com.swop.domain.AdminUser;

public class AdminUserService {

	//实现后台登录
	public AdminUser adminLogin(AdminUser admin_user) {

		AdminUserDao dao = new AdminUserDao();
		AdminUser adminUser = null;
		try {
			adminUser = dao.adminLogin(admin_user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return adminUser;
	}

}
