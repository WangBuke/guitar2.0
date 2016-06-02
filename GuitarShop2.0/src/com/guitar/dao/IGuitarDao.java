package com.guitar.dao;

import java.util.List;

import com.guitar.domain.Guitar;
import com.guitar.domain.GuitarSpec;


public interface IGuitarDao {
	
	public List<Guitar> searchGuitar(String serialNumber);
	
}
