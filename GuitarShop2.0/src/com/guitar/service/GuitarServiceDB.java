package com.guitar.service;

import java.util.List;

import com.guitar.dao.GuitarSqliteDao;
import com.guitar.dao.IGuitarDao;
import com.guitar.domain.Guitar;
import com.guitar.domain.GuitarSpec;

public class GuitarServiceDB {
	
	IGuitarDao guitarDao = new GuitarSqliteDao();
	
	public List<Guitar> searchGuitar(String serialNumber) {
		List<Guitar> list = guitarDao.searchGuitar(serialNumber);
		return list;
	}
	
	
	
}
