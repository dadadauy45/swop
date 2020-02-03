package com.swop.service;

import java.sql.SQLException;

import com.swop.dao.UserDao;
import com.swop.domain.User;

public class UserService {

	UserDao UserDao = new UserDao();
	//注册
	public boolean register(User user) {
		//调用dao层操作数据库
		int register = 0;
		try {
			register = UserDao.register(user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return register>0?true:false;
		
	}
	
	//登录
	public User login(String uname, String upassword) {
		User user = null;
		try {
			user = UserDao.login(uname,upassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	//修改user用户数据
	public boolean editUser(User user) {
		UserDao dao = new UserDao();
		int update = 0;
		try {
			update = dao.editUser(user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(update>0) {
			//修改成功
			return true;
		}else {
			//修改失败
			return false;
		}
	}
}
