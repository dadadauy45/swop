package com.swop.service;

import java.sql.SQLException;
import java.util.List;

import com.swop.dao.FunSortDao;
import com.swop.domain.Funsort;

public class FunSortService {

	//获得类别信息
	public List<Funsort> findFunSortList() {
		FunSortDao dao = new FunSortDao();
		List<Funsort> funSortList = null;
		try {
			funSortList = dao.findFunSortList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return funSortList;
	}

}
