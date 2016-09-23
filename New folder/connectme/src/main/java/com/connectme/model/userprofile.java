package com.connectme.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class userprofile {
	
	  @Id
	    @GeneratedValue
	    private int userId;
	  
	  @NotEmpty (message = "Enter name")
	   	private String name;
	  
	  @Column(unique = true)
	  @NotEmpty (message = "Enter username")
	   	private String username;
	  
	  @NotEmpty (message = "Enter password")
	    private String password;
	  
	  @NotEmpty (message = "Enter Email")
	    private String Email;
	  
	  @NotEmpty (message = "Enter location")
	    private String location;
	  
	  private Boolean enabled;
	  
	  @NotEmpty (message = "Enter phone")
	  private String phone;
	  @Transient
	    private MultipartFile Profilepic;
	  public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public MultipartFile getProfilepic() {
		return Profilepic;
	}
	public void setProfilepic(MultipartFile profilepic) {
		Profilepic = profilepic;
	}
	
	  public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	
}
