package com.FurtinureStation.DAO;

import java.util.List;

import com.FurtinureStation.list;
import com.FurtinureStation.model.productmodel;

public interface productDAO {
	 
	 public int insertRow(productmodel pmd);

	public List getList();

	 public productmodel getRowById(int id);

	 public int updateRow(productmodel pdm);

	 public int deleteRow(int id);

}
