package com.swop.service;

import java.sql.SQLException;
import java.util.List;

import com.swop.dao.GoodSortDao;
import com.swop.domain.GoodsSort;

public class GoodsSortService {

	//查找商品类别信息
	public List<GoodsSort> findGoodsSort() {
		GoodSortDao dao = new GoodSortDao();
		List<GoodsSort> goodsSortList = null;
		try {
			goodsSortList = dao.findGoodsSort();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return goodsSortList;
	}

}
