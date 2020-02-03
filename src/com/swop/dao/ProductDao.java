package com.swop.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.swop.domain.Category;
import com.swop.domain.Product;
import com.swop.utils.DataSourceUtils;

public class ProductDao {

	public List<Product> findSortProduct(String search) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where pname like ?";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), "%" + search + "%");
		return productList;
	}

	public List<Product> getProductListByCid(String cid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql1 = "select * from category where cid = ?";
		Category category = runner.query(sql1, new BeanHandler<Category>(Category.class), cid);

		String sql = "select * from product where cid = ?";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), cid);

		for (Product product : productList) {
			product.setCategory(category);
		}
		return productList;
	}

	public List<Product> findProductListByFunsort(String fun_sort) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where fun_sort = ?";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), fun_sort);
		return productList;
	}

	public Product findProductByPid(String pid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where pid = ?";
		Product product = runner.query(sql, new BeanHandler<Product>(Product.class), pid);
		return product;
	}

	public List<Product> findBooks() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where goods_sort = ? limit ?,?";
		List<Product> product_book = runner.query(sql, new BeanListHandler<Product>(Product.class), 1, 0, 6);
		return product_book;
	}

	public List<Product> findDailys() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where goods_sort = ? limit ?,?";
		List<Product> product_daily = runner.query(sql, new BeanListHandler<Product>(Product.class), 2, 0, 6);
		return product_daily;
	}

	public List<Product> findCloths() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where goods_sort = ? limit ?,?";
		List<Product> product_cloth = runner.query(sql, new BeanListHandler<Product>(Product.class), 3, 0, 6);
		return product_cloth;
	}

	public List<Product> findShoes() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where goods_sort = ? limit ?,?";
		List<Product> product_shoe = runner.query(sql, new BeanListHandler<Product>(Product.class), 4, 0, 6);
		return product_shoe;
	}

	public List<Product> findDecorations() throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where goods_sort = ? limit ?,?";
		List<Product> product_decoration = runner.query(sql, new BeanListHandler<Product>(Product.class), 5, 0, 6);
		return product_decoration;
	}

	public int announceProduct(Product product) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into product values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		int update = runner.update(sql, product.getPid(), product.getPname(), product.getPrice(), product.getPimage(),
				product.getPimage_1(), product.getPimage_2(), product.getPimage_3(), product.getPimage_4(),
				product.getPdate(), product.getIs_hot(), product.getDesc(), product.getGoods_sort(),
				product.getFun_sort(), product.getAddress(), product.getWant(), product.getTelephone(),
				product.getCid(), product.getLevel_id(), product.getUid(),product.getState());
		return update;
	}

	public List<Product> findProductByUid(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 0";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

	public int delProductByPid(String pid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from product where pid=?";
		int update = runner.update(sql, pid);
		return update;
	}


	public List<Product> rentProductByUid(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 1";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

	public List<Product> sellProductByUid(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 2";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

	public List<Product> donateProductByUid(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 3";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

	public List<Product> recordProductByUid(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 5";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

	public List<Product> boardProductByUid(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 4";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

	public List<Product> rentRecodeByUid(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 6";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

	public List<Product> donateRecodeByUid(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 7";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

	public List<Product> sellRecodeByUid(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 9";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

	public List<Product> adoptRecodeByUid(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 8";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

	public int createWuliu(String pid, String address, String telephone) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update product set address = ? , telephone = ? ,state = ? where pid = ?";
		int update = runner.update(sql, address, telephone, 10, pid);
		return update;
	}

	public List<Product> findWuliuProduct(String uid) throws SQLException {
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from product where uid = ? and state = 10";
		List<Product> productList = runner.query(sql, new BeanListHandler<Product>(Product.class), uid);
		return productList;
	}

}
