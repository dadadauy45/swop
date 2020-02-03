package com.swop.service;

import java.sql.SQLException;

import com.swop.dao.AdminFunsortDao;
import com.swop.domain.Funsort;

public class AdminFunsortService {

	//添加funSort对象
	public void addFunsort(Funsort funsort) {
		AdminFunsortDao dao = new AdminFunsortDao();
		try {
			dao.addFunsort(funsort);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	//根据id获得对象
	public Funsort getFunsortById(String fun_id) {
		AdminFunsortDao dao = new AdminFunsortDao();
		Funsort funSort = null;
		try {
			funSort = dao.getFunsortById(fun_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return funSort;
	}

	//更改对象信息
	public void editFunsort(Funsort funsort) {
		AdminFunsortDao dao = new AdminFunsortDao();
		try {
			dao.editFunsort(funsort);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//根据id删除商品
	public void delFunsortById(String fun_id) {
		AdminFunsortDao dao = new AdminFunsortDao();
		try {
			dao.delFunsortById(fun_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
