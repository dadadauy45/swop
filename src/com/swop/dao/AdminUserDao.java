package com.swop.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.swop.domain.AdminUser;
import com.swop.utils.DataSourceUtils;

public class AdminUserDao {

	public AdminUser adminLogin(AdminUser admin_user) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from adminuser where adminName = ? and adminPassword = ?";
		AdminUser adminUser = runner.query(sql, new BeanHandler<AdminUser>(AdminUser.class), admin_user.getAdminName(), admin_user.getAdminPassword());
		return adminUser;
	}

}
