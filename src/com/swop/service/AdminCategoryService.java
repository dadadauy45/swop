package com.swop.service;

import java.sql.SQLException;

import com.swop.dao.AdminCategoryDao;
import com.swop.domain.Category;

public class AdminCategoryService {

	public void addCategory(Category category) {

		AdminCategoryDao dao = new AdminCategoryDao();
		try {
			dao.addCategory(category);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//根据cid获得category对象
	public Category findCategoryByCid(String cid) {
		AdminCategoryDao dao = new AdminCategoryDao();
		Category category = null; 
		try {
			category = dao.findCategoryByCid(cid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return category;
	}

	//根据cid删除category对象
	public void delCategoryByCid(String cid) {
		AdminCategoryDao dao = new AdminCategoryDao();
		try {
			dao.delCategoryByCid(cid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//修改category信息
	public void editCategory(Category category) {
		AdminCategoryDao dao = new AdminCategoryDao();
		try {
			dao.editCategory(category);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
