package com.FurtinureStation.model;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class productmodel implements Serializable {
	
	public productmodel(){}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int ID;
	public String GroupName;
	public String Name;
	public String Price;
	public String Qty;
	public String Desc;
	public String Photo;
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



	public String getPhoto() {
		return Photo;
	}



	public void setPhoto(String photo) {
		Photo = photo;
	}
	
	


	public productmodel(String GroupName,String Name,String Price,String Qty,String Desc,String Photo,int products)
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

