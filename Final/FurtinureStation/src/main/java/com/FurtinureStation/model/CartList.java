package com.FurtinureStation.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class CartList implements Serializable {
	
	private List<Cart> cartList = new ArrayList<Cart>();

	public List<Cart> getCartList() {
		return cartList;
	}

	public void setCartList(List<Cart> cartList) {
		this.cartList = cartList;
	}
	
	public String toString()
	{
		return cartList.toString();
	}

}
