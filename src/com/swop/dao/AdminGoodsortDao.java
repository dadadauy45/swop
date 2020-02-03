package com.swop.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.swop.domain.GoodsSort;
import com.swop.utils.DataSourceUtils;

public class AdminGoodsortDao {

	public void addGoodsort(GoodsSort goodsort) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into goods_sort values(?,?)";
		runner.update(sql, goodsort.getGoods_id(),goodsort.getGoods_name());
	}

	public GoodsSort findGoodsortById(String good_id) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from goods_sort where goods_id = ?";
		GoodsSort goodsort = runner.query(sql, new BeanHandler<GoodsSort>(GoodsSort.class), good_id);
		return goodsort;
	}

	public void editGoodsort(GoodsSort goodsort) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update goods_sort set goods_name = ? where goods_id = ?";
		runner.update(sql, goodsort.getGoods_name(), goodsort.getGoods_id());
		
	}

	public void delGoodsortById(String good_id) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from goods_sort where goods_id = ?";
		runner.update(sql, good_id);
	}

}
