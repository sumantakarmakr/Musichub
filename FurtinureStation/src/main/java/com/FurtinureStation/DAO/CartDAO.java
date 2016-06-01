package com.FurtinureStation.DAO;

import java.util.List;

import com.FurtinureStation.model.Cart;
import com.FurtinureStation.model.UserProfile;



public interface CartDAO {

	void addToCart(Cart cart);
	String updateCart(Cart cart, int cartId);
	String modifyCart(Cart cart);
	void deleteCart(int cartId);
	Cart getCartById(int cartId);
	List getCart(int userId);
	UserProfile getUserIdByName(String username);
}
