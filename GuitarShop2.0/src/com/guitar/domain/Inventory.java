package com.guitar.domain;

import java.util.ArrayList;
import java.util.List;

import com.guitar.service.GuitarServiceDB;
import com.guitar.service.GuitarServiceDB;

public class Inventory {
	private List<Guitar> guitars;
	
	GuitarServiceDB service = new GuitarServiceDB();

	public Inventory() {
		guitars = new ArrayList<Guitar>();
	}
	
	
	//查询吉他方法
	public List<Guitar> searchGuitar(String serialNumber) {
		guitars = service.searchGuitar(serialNumber);
		return guitars;
	}
	
}
