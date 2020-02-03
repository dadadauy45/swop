package com.swop.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.swop.domain.Funsort;
import com.swop.utils.DataSourceUtils;

public class AdminFunsortDao {

	public void addFunsort(Funsort funsort) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into fun_sort values(?,?)";
		runner.update(sql, funsort.getFun_id(),funsort.getFun_name());
		
	}

	public Funsort getFunsortById(String fun_id) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from fun_sort where fun_id = ?";
		Funsort funSort = runner.query(sql, new BeanHandler<Funsort>(Funsort.class), fun_id);
		return funSort;
	}

	public void editFunsort(Funsort funsort) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update fun_sort set fun_name = ? where fun_id = ?";
		runner.update(sql, funsort.getFun_name(),funsort.getFun_id());
		
	}

	public void delFunsortById(String fun_id) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from fun_sort where fun_id = ?";
		runner.update(sql, fun_id);
	}

}
