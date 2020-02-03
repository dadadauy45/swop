package com.swop.service;

import java.sql.SQLException;
import java.util.List;

import com.swop.dao.CategoryDao;
import com.swop.domain.Category;
import com.swop.domain.GoodsSort;
import com.swop.domain.Newlevel;

public class CategoryService {

	public List<Category> getCategoryList() {

		CategoryDao categoryDao = new CategoryDao();
		//调用dao方法查询类别信息
		List<Category> categoryList = null;
		try {
			categoryList = categoryDao.getCategoryList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return categoryList;
	}

	//查找新旧程度
	public List<Newlevel> getLevelList() {
		CategoryDao categoryDao = new CategoryDao();
		List<Newlevel> newLevelList = null;
		try {
			newLevelList = categoryDao.getLevelList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newLevelList;
	}

	//查找功能分类
	public List<GoodsSort> getGoodsList() {
		CategoryDao categoryDao = new CategoryDao();
		List<GoodsSort> goodsList = null;
		try {
			goodsList = categoryDao.getGoodsList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodsList;
	}

}
