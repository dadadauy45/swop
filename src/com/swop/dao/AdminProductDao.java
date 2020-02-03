package com.swop.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.swop.domain.Category;
import com.swop.domain.Funsort;
import com.swop.domain.GoodsSort;
import com.swop.domain.Product;
import com.swop.utils.DataSourceUtils;

public class AdminProductDao {

	public List<Product> findProductList() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class));
		return productList;
	}

	public List<Category> findCategoryList() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from category";
		List<Category> productList = runner.query(sql, new BeanListHandler<Category>(Category.class));
		return productList;
	}

	public List<Funsort> findFunSortList() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from fun_sort";
		List<Funsort> productList = runner.query(sql, new BeanListHandler<Funsort>(Funsort.class));
		return productList;
	}

	public List<GoodsSort> findGoodsSortList() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from goods_sort";
		List<GoodsSort> productList = runner.query(sql, new BeanListHandler<GoodsSort>(GoodsSort.class));
		return productList;
	}

	public int adminAddProduct(Product product) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into product values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		int update = runner.update(sql, product.getPid(), product.getPname(), product.getPrice(), product.getPimage(), product.getPimage_1(), product.getPimage_2(), product.getPimage_3(), product.getPimage_4(), product.getPdate(), product.getIs_hot(), product.getDesc(), product.getGoods_sort(), product.getFun_sort(), product.getAddress(), product.getWant(), product.getTelephone(), product.getCid(), product.getLevel_id(), product.getUid(), product.getState());
		return update;
	}

	public Product findProductByPid(String pid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where pid = ?";
		Product query = runner.query(sql, new BeanHandler<Product>(Product.class), pid);
		return query;
	}

	public int adminEditProduct(Product product) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update product set pname = ?, cid = ?, goods_sort = ?, fun_sort = ?, address = ? where pid = ?";
		int update = runner.update(sql, product.getPname(), product.getCid(), product.getGoods_sort(), product.getFun_sort(), product.getAddress(), product.getPid());
		return update;
	}

	public void delProductByPid(String pid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from product where pid = ?";
		runner.update(sql, pid);
	}

	public int getTotalCount() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from product";
		Long query = (Long) runner.query(sql, new ScalarHandler());
		return query.intValue();
	}

	public List<Product> findPageProductList(Integer index,Integer currentCount) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select *from product limit ?,?";
		List<Product> query = runner.query(sql, new BeanListHandler<Product>(Product.class), index,currentCount);
		return query;
	}

}
