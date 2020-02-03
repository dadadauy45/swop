package com.swop.service;

import java.sql.SQLException;
import java.util.List;

import com.swop.dao.AdminProductDao;
import com.swop.domain.Category;
import com.swop.domain.Funsort;
import com.swop.domain.GoodsSort;
import com.swop.domain.PageBean;
import com.swop.domain.Product;

public class AdminProductService {

	//查找所有商品信息
	public List<Product> findProductList() {

		AdminProductDao dao = new AdminProductDao();
		List<Product> productList = null;
		try {
			productList = dao.findProductList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}

	//查找所有小类信息
	public List<Category> findCategoryList() {
		AdminProductDao dao = new AdminProductDao();
		List<Category> categoryList = null;
		try {
			categoryList = dao.findCategoryList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return categoryList;
	}

	//查找商品功能分类信息
	public List<Funsort> findFunSortList() {
		AdminProductDao dao = new AdminProductDao();
		List<Funsort> funSortList = null;
		try {
			funSortList = dao.findFunSortList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return funSortList;
	}

	
	//查找其他类别信息
	public List<GoodsSort> findGoodsSortList() {
		AdminProductDao dao = new AdminProductDao();
		List<GoodsSort> goodSortList = null;
		try {
			goodSortList = dao.findGoodsSortList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodSortList;
	}

	//后台添加商品
	public boolean adminAddProducrt(Product product) {
		AdminProductDao dao = new AdminProductDao();
		int update = 0;
		try {
			update = dao.adminAddProduct(product);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(update>0) {
			return true;
		}else {
			return false;
		}
	}

	//根据pid获得商品
	public Product findProductByPid(String pid) {
		AdminProductDao dao = new AdminProductDao();
		Product product = null;
		try {
			product = dao.findProductByPid(pid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product;
	}

	//修改商品
	public boolean adminEditProduct(Product product) {
		AdminProductDao dao = new AdminProductDao();
		int update = 0; 
		try {
			update = dao.adminEditProduct(product);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(update>0) {
			return true;
		}else {
			return false;
		}
	}

	//根据pid删除商品
	public void delProductByPid(String pid) {
		AdminProductDao dao = new AdminProductDao();
		try {
			dao.delProductByPid(pid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//分页操作
	public PageBean findPageBean(int currentPage, int currentCount) {
		
		AdminProductDao dao = new AdminProductDao();
		
		//封装一个pageBean 
		PageBean<Product> pageBean = new PageBean<>();
		
		pageBean.setCurrentPage(currentPage);
		pageBean.setCurrentCount(currentCount);
		
		int totalCount = 0;
		try {
			totalCount = dao.getTotalCount();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		pageBean.setTotalcount(totalCount);
		
		//总页数
		int totalPage = (int) Math.ceil(totalCount*1.0/currentCount);
		pageBean.setTotalPage(totalPage);
		
		//当前页的商品列表
		int index = (currentPage-1)*currentCount;
		List<Product> productList = null;
		try {
			productList = dao.findPageProductList(index,currentCount);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		pageBean.setProductList(productList);
		return pageBean;
	}

}
