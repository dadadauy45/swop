package com.swop.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.swop.domain.Funsort;
import com.swop.utils.DataSourceUtils;

public class FunSortDao {

	public List<Funsort> findFunSortList() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from fun_sort";
		List<Funsort> FunsortList = runner.query(sql, new BeanListHandler<Funsort>(Funsort.class));
		return FunsortList;
	}

}
