package com.connectme.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class user {
	@Id
    @GeneratedValue
    private int authoritiesId;
	private int userId;
    private String authority;
    public int getAuthoritiesId() {
		return authoritiesId;
	}
	public void setAuthoritiesId(int authoritiesId) {
		this.authoritiesId = authoritiesId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	

}
