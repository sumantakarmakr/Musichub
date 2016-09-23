package com.connectme.model;

import java.util.ArrayList;
import java.util.List;

public class blogList {
	private List<blogmodel> blogList = new ArrayList<blogmodel>();

	public List<blogmodel> getProductList() {
		return blogList;
	}

	public void setProductList(List<blogmodel> productList) {
		this.blogList = productList;
	}
	
	public String toString()
	{
		
		return blogList.toString();
	}

}
