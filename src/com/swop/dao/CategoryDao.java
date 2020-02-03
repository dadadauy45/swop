package com.swop.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.swop.domain.Category;
import com.swop.domain.GoodsSort;
import com.swop.domain.Newlevel;
import com.swop.utils.DataSourceUtils;

public class CategoryDao {

	public List<Category> getCategoryList() throws SQLException {

		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from category";
		List<Category> categoryList = runner.query(sql, new BeanListHandler<Category>(Category.class));
		return categoryList;
	}

	public List<Newlevel> getLevelList() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from new_old";
		List<Newlevel> newLevelList = runner.query(sql, new BeanListHandler<Newlevel>(Newlevel.class));
		return newLevelList;
	}

	public List<GoodsSort> getGoodsList() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from goods_sort";
		List<GoodsSort> goodsList = runner.query(sql, new BeanListHandler<GoodsSort>(GoodsSort.class));
		return goodsList;
	}

}
