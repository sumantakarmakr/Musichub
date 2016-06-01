package com.FurtinureStation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.FurtinureStation.DAO.CartDAO;
import com.FurtinureStation.DAO.CartDAOImpl;
import com.FurtinureStation.model.Cart;


@Service("cartService")
@Transactional
public class CartService {
	@Autowired
	CartDAO cartDAO;
	
	public void addToCart(Cart cart)
	{
		cartDAO.addToCart(cart);
	}
	
	public String modifyCart(Cart cart, int cartId)
	{
		return cartDAO.updateCart(cart, cartId);
	}

	public void deleteCart(int cartId)
	{
		cartDAO.deleteCart(cartId);
	}
	
	public Cart findById(int cartId)
	{
		System.out.println("finding " + cartId);
		return cartDAO.getCartById(cartId);
	}
	
	public List getCart(int userid)
	{
		return cartDAO.getCart(userid);
	}
	public String updateCart(Cart cart)
	{
		
		return cartDAO.modifyCart(cart);
	}
	public int getUserIdByName(String username)
	{
		System.out.println(username);
		return cartDAO.getUserIdByName(username).getUserId();
	}
}
