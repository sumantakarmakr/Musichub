package com.FurtinureStation.model;
import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "product")
public class productmodel implements Serializable {
	
	public productmodel(){}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int ID;
	@NotEmpty(message = "Please enter your Group Name.")
	public String GroupName;
	@NotEmpty(message = "Please enter your Name.")
	public String Name;
	@NotEmpty(message = "Please enter your Pricee.")
	@Min(value = 0, message = "The product price must not be less then zero")
	public String Price;
	@NotEmpty(message = "Please enter your QTY.")
	public String Qty;
	@NotEmpty(message = "Please enter your Descipion.")
	public String Desc;
	@Transient
    private MultipartFile Photo;



	



	public MultipartFile getPhoto() {
		return Photo;
	}



	public void setPhoto(MultipartFile photo) {
		Photo = photo;
	}



	public int getID() {
		return ID;
	}



	public void setID(int iD) {
		ID = iD;
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



	public String getDesc() {
		return Desc;
	}



	public void setDesc(String desc) {
		Desc = desc;
	}




	
	


	public productmodel(String GroupName,String Name,String Price,String Qty,String Desc,MultipartFile Photo,int products)
	 {
		
		this.GroupName=GroupName;
		this.Name=Name;
		this.Price=Price;
		this.Qty=Qty;
		this.Desc=Desc;
		this.Photo=Photo;
		this.ID=products;
	 }
		/*public String toString(){
			return "{ProductID:'"+ProductID+"',GroupName:'"+GroupName+"',Name:'"+Name+"',Price:'"+Price+"',Qty:'"+Qty+"',Desc:'"+Desc+"',Photo:'"+Photo+"'}";
			}*/
}

