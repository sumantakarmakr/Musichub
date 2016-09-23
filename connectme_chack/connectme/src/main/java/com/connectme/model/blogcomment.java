package com.connectme.model;

import java.util.Date;

import javax.persistence.Entity;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
public class blogcomment {

	public int ID;
	public String Title;
	public String Content;
	public Date Creationdate;
	public String username;
	@NotEmpty(message = "Please enter some comments for Blog.")
	public String comments;
	
	
	
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
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	
}
