package com.swop.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.swop.domain.GoodsSort;
import com.swop.utils.DataSourceUtils;

public class GoodSortDao {

	public List<GoodsSort> findGoodsSort() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from goods_sort";
		List<GoodsSort> goodsSortList = runner.query(sql, new BeanListHandler<GoodsSort>(GoodsSort.class));
		return goodsSortList;
	}

}
