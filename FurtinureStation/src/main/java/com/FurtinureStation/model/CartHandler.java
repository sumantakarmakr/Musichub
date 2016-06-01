package com.FurtinureStation.model;

import org.springframework.stereotype.Component;

@Component("cartHandler")
public class CartHandler {
	
	
	public Cart initFlow()
	{
		return new Cart();
	}

}
