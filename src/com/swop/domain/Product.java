package com.swop.domain;

import java.util.Date;

public class Product {

	private String pid;
	private String pname;
	private Double price;
	private String pimage;
	private String pimage_1;
	private String pimage_2;
	private String pimage_3;
	private String pimage_4;
	private Date pdate;
	private Integer is_hot;
	private String desc;
	private String fun_sort;
	private String goods_sort;
	private String address;
	private String want;
	private String telephone;
	private String level_id;
	private Integer state;
	private String cid;
	private String uid;
	private Category category;
	
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	
	public String getPimage_1() {
		return pimage_1;
	}
	public void setPimage_1(String pimage_1) {
		this.pimage_1 = pimage_1;
	}
	public String getPimage_2() {
		return pimage_2;
	}
	public void setPimage_2(String pimage_2) {
		this.pimage_2 = pimage_2;
	}
	public String getPimage_3() {
		return pimage_3;
	}
	public void setPimage_3(String pimage_3) {
		this.pimage_3 = pimage_3;
	}
	public String getPimage_4() {
		return pimage_4;
	}
	public void setPimage_4(String pimage_4) {
		this.pimage_4 = pimage_4;
	}
	public Integer getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Integer is_hot) {
		this.is_hot = is_hot;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getFun_sort() {
		return fun_sort;
	}
	public void setFun_sort(String fun_sort) {
		this.fun_sort = fun_sort;
	}
	public String getGoods_sort() {
		return goods_sort;
	}
	public void setGoods_sort(String goods_sort) {
		this.goods_sort = goods_sort;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getWant() {
		return want;
	}
	public void setWant(String want) {
		this.want = want;
	}
	public String getLevel_id() {
		return level_id;
	}
	
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public void setLevel_id(String level_id) {
		this.level_id = level_id;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
}
