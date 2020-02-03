package com.swop.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.swop.domain.Category;
import com.swop.utils.DataSourceUtils;

public class AdminCategoryDao {

	public void addCategory(Category category) throws SQLException {

		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into category values(?,?)";
		runner.update(sql, category.getCid(),category.getCname());
	}

	public Category findCategoryByCid(String cid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from category where cid = ?";
		Category category = runner.query(sql, new BeanHandler<Category>(Category.class), cid);
		return category;
	}

	public void delCategoryByCid(String cid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from category where cid = ?";
		runner.update(sql, cid);
	}

	public void editCategory(Category category) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update category set cname = ? where cid = ?";
		runner.update(sql, category.getCname(),category.getCid());
	}

}
