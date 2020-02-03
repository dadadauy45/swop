package com.swop.service;

import java.sql.SQLException;
import java.util.List;

import com.swop.dao.ProductDao;
import com.swop.domain.Product;
import com.swop.domain.User;

public class ProductService {

	//搜索查询商品
	public List<Product> findSortProduct(String search) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.findSortProduct(search);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//查找分类商品
	public List<Product> getProductListByCid(String cid) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.getProductListByCid(cid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//根据功能类别查找商品
	public List<Product> findProductListByFunsort(String fun_sort) {
		
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.findProductListByFunsort(fun_sort);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//获得商品详情
	public Product findProductByPid(String pid) {
		
		ProductDao dao = new ProductDao();
		Product product = null;
		try {
			product = dao.findProductByPid(pid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product;
	}

	//查找书籍
	public List<Product> findBooks() {
		ProductDao dao = new ProductDao();
		List<Product> product_book = null;
		try {
			product_book = dao.findBooks();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product_book;
	}

	
	//查找日用
	public List<Product> findDailys() {
		ProductDao dao = new ProductDao();
		List<Product> product_daily = null;
		try {
			product_daily = dao.findDailys();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product_daily;
	}

	//查找服饰
	public List<Product> findCloths() {
		ProductDao dao = new ProductDao();
		List<Product> product_cloth = null;
		try {
			product_cloth = dao.findCloths();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product_cloth;
	}

	//查找鞋包
	public List<Product> findShoes() {
		ProductDao dao = new ProductDao();
		List<Product> product_shoe = null;
		try {
			product_shoe = dao.findShoes();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product_shoe;
	}

	public List<Product> findDecorations() {
		ProductDao dao = new ProductDao();
		List<Product> product_decoration = null;
		try {
			product_decoration = dao.findDecorations();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product_decoration;
	}

	//发布商品
	public boolean announceProduct(Product product) {
		ProductDao dao = new ProductDao();
		int updeta = 0;
		try {
			updeta = dao.announceProduct(product);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(updeta>0) {
			return true;
		}else {
			return false;
		}
	}

	//根据uid查找同一个用户的所有发布商品
	public List<Product> findProductByUid(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.findProductByUid(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//删除product
	public boolean delProductByPid(String pid) {
		ProductDao dao = new ProductDao();
		int update = 0;
		try {
			update = dao.delProductByPid(pid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(update>0) {
			return true;
		}else {
			return false;
		}
	}

	//查找交易记录的商品
	public List<Product> recordProductByUid(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.recordProductByUid(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//查找出租的商品
	public List<Product> rentProductByUid(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.rentProductByUid(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//查找卖品商品
	public List<Product> sellProductByUid(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.sellProductByUid(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//查找捐赠商品
	public List<Product> donateProductByUid(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.donateProductByUid(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//查找寄样商品
	public List<Product> boardProductByUid(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.boardProductByUid(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//查找租借记录
	public List<Product> rentRecodeByUid(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.rentRecodeByUid(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//查找邻赠商品记录
	public List<Product> donateRecodeByUid(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.donateRecodeByUid(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//查找买卖商品记录
	public List<Product> sellRecodeByUid(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.sellRecodeByUid(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//查找领养商品记录·
	public List<Product> adoptRecodeByUid(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.adoptRecodeByUid(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//创建物流订单
	public boolean createWuliu(String pid, String address, String telephone) {
		ProductDao dao = new ProductDao();
		int update = 0;
		try {
			update = dao.createWuliu(pid,address,telephone);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(update>0) {
			return true;
		}else {
			return false;
		}
	}

	public List<Product> findWuliuProduct(User user) {
		ProductDao dao = new ProductDao();
		List<Product> productList = null;
		try {
			productList = dao.findWuliuProduct(user.getUid());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

}
