package com.FurtinureStation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import com.FurtinureStation.model.productmodel;
import com.FurtinureStation.list;
import com.FurtinureStation.DAO.*;
@Service()
@Transactional
public class serviceclassimpl implements serviceclass{

	@Autowired
	productDAO productDAO;
	public int insertRow(productmodel pdm) {
		// TODO Auto-generated method stub
		return productDAO.insertRow(pdm);
	}

	public List getList() {
		// TODO Auto-generated method stub
		return productDAO.getList();
	}

	public productmodel getRowById(int ID) {
		// TODO Auto-generated method stub
		return productDAO.getRowById(ID);
	}

	public int updateRow(productmodel pdm) {
		// TODO Auto-generated method stub
		return productDAO.updateRow(pdm);
	}

	public int deleteRow(int ID) {
		// TODO Auto-generated method stub
		return productDAO.deleteRow(ID);
	}

}
