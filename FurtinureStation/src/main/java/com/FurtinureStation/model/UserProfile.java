package com.FurtinureStation.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class UserProfile{

    @Id
    @GeneratedValue
    private int userId;
    @NotEmpty(message = "Please enter your UserName.")
	private String username;
	@NotEmpty(message = "Please enter your password.")
	@Size(min= 6,max= 12,message = "Your password must between 6 and 15 characters")
    private String password;
    private Boolean enabled;
  
    public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
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

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }


} // The End of Class;