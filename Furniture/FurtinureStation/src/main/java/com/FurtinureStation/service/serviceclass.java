package com.FurtinureStation.service;

import java.util.List;

import com.FurtinureStation.list;
import com.FurtinureStation.model.productmodel;

public interface serviceclass {
	public int insertRow(productmodel pdm);

	 public List getList();

	 public productmodel getRowById(int ID);

	 public int updateRow(productmodel pdm);

	 public int deleteRow(int ID);
	
	
	
}
