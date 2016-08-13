package com.connectme.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity

public class blogmodel {
	public blogmodel(){}

@Id
@GeneratedValue(strategy=GenerationType.AUTO)
public int ID;
@NotEmpty(message = "Please enter a Title for Blog.")
public String Title;
@NotEmpty(message = "Please enter some content for Blog.")
public String Content;
public Date Creationdate;
public String username;



public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public String getTitle() {
	return Title;
}
public void setTitle(String title) {
	Title = title;
}
public String getContent() {
	return Content;
}
public void setContent(String content) {
	Content = content;
}
public Date getCreationdate() {
	return Creationdate;
}
public void setCreationdate(Date creationdate) {
	Creationdate = creationdate;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}

}
