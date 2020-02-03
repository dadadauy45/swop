package com.swop.domain;

import java.util.ArrayList;
import java.util.List;

public class PageBean<T> {

	// 当前页
	private int currentPage;
	// 当前页显示条数
	private int currentCount;
	// 总条数
	private int totalcount;
	// 总页数
	private int totalPage;
	// 当前页显示数据
	private List<T> productList = new ArrayList<T>();
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getCurrentCount() {
		return currentCount;
	}
	public void setCurrentCount(int currentCount) {
		this.currentCount = currentCount;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<T> getProductList() {
		return productList;
	}
	public void setProductList(List<T> productList) {
		this.productList = productList;
	}
	
}
