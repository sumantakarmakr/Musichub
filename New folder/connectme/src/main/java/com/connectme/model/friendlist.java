package com.connectme.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class friendlist {

	public int getListid() {
		return listid;
	}
	public void setListid(int listid) {
		this.listid = listid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFriendname() {
		return friendname;
	}
	public void setFriendname(String friendname) {
		this.friendname = friendname;
	}
	public boolean isFriendrequest() {
		return friendrequest;
	}
	public void setFriendrequest(boolean friendrequest) {
		this.friendrequest = friendrequest;
	}
	@Id
    @GeneratedValue
    private int listid;
	private String username;
	private String friendname;
	private boolean friendrequest;
}
