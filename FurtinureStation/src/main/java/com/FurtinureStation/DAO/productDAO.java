package com.FurtinureStation.DAO;

import java.util.List;

import com.FurtinureStation.list;
import com.FurtinureStation.model.productmodel;
import com.FurtinureStation.model.Cart;
import com.FurtinureStation.model.UserProfile;

public interface productDAO {
	 
	 public int insertRow(productmodel pmd);

	public List getList();

	 public productmodel getRowById(int id);

	 public int updateRow(productmodel pdm);

	 public int deleteRow(int id);
	 
	 public int insertuser(UserProfile user);
	 public int insertcart(Cart cart);
	 public Cart getCartById(int cartId);

}
