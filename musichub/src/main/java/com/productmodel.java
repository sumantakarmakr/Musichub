package com;
import  java.io.Serializable;
public class productmodel implements Serializable {
	public String ProductID;
	public String GroupName;
	public String Name;
	public String Price;
	public String Qty;
	public String Photo;
	 public productmodel(String ProductID,String GroupName,String Name,String Price,String Qty,String Photo)
	 {
		this.ProductID=ProductID;
		this.GroupName=GroupName;
		this.Name=Name;
		this.Price=Price;
		this.Qty=Qty;
		this.Photo=Photo;
	 }
		public String toString(){
			return "{ProductID:'"+ProductID+"',GroupName:'"+GroupName+"',Name:'"+Name+"',Price:'"+Price+"',Qty:'"+Qty+"',Photo:'"+Photo+"'}";}
	public String getProductID() {
		return ProductID;
	}

	public void setProductID(String productID) {
		ProductID = productID;
	}

	public String getGroupName() {
		return GroupName;
	}

	public void setGroupName(String groupName) {
		GroupName = groupName;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getPrice() {
		return Price;
	}

	public void setPrice(String price) {
		Price = price;
	}

	public String getQty() {
		return Qty;
	}

	public void setQty(String qty) {
		Qty = qty;
	}

	public String getPhoto() {
		return Photo;
	}

	public void setPhoto(String photo) {
		Photo = photo;
	}

	
}

