package com.FurtinureStation.model;

import java.util.List;
import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Cart implements Serializable {
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int cartId;
private int userid;
private int ID;
private String pname;
private int qty;
private String price;
private String Address;
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public int getCartId() {
	return cartId;
}
public void setCartId(int cartId) {
	this.cartId = cartId;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public int getQty() {
	return qty;
}
public void setQty(int qty) {
	this.qty = qty;
}

public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}


}
