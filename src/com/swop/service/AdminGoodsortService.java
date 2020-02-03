package com.swop.service;

import java.sql.SQLException;

import com.swop.dao.AdminGoodsortDao;
import com.swop.domain.GoodsSort;

public class AdminGoodsortService {

	//添加goodsort对象
	public void addGoodsort(GoodsSort goodsort) {
		AdminGoodsortDao dao = new AdminGoodsortDao();
		try {
			dao.addGoodsort(goodsort);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//根据id活的对象
	public GoodsSort findGoodsortById(String good_id) {
		AdminGoodsortDao dao = new AdminGoodsortDao();
		GoodsSort goodsort = null;
		try {
			goodsort = dao.findGoodsortById(good_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodsort;
	}

	//更改goodsort对象
	public void editGoodsort(GoodsSort goodsort) {
		AdminGoodsortDao dao = new AdminGoodsortDao();
		try {
			dao.editGoodsort(goodsort);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//根据id删除商品
	public void delGoodsortById(String good_id) {
		AdminGoodsortDao dao = new AdminGoodsortDao();
		try {
			dao.delGoodsortById(good_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
