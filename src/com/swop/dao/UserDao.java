package com.swop.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.swop.domain.User;
import com.swop.utils.DataSourceUtils;

public class UserDao {

	public int register(User user) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into user values(?,?,?,?,?,?,?,?,?)";
		int query = runner.update(sql, user.getUid(), user.getUname(), user.getUpassword(), user.getEmail(), user.getTelephone(), user.getSex(), user.getQQ(), user.getDate(),user.getAddress());
		return query;
	}

	public User login(String uname, String upassword) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from user where uname=? and upassword=?";
		User user = runner.query(sql, new BeanHandler<User>(User.class), uname, upassword);
		return user;
	}

	public int editUser(User user) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update user set uname=?,email=?,telephone=?,QQ=?,address=? where uid=?";
		int update = runner.update(sql, user.getUname(),user.getEmail(),user.getTelephone(),user.getQQ(),user.getAddress(),user.getUid());
		return update;
	}
}