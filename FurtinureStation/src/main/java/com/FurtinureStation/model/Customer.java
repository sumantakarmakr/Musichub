package com.FurtinureStation.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer {

	public Customer()
	{}
		@Id
    @GeneratedValue
    private int cutomerId;

    @NotEmpty (message = "The customer name must not be null")
    private String customerName;

    @NotEmpty (message = "The customer email must not be null")
    private String customerEmail;
    private String customerPhone;

    @NotEmpty (message = "The customer username must not be null")
    private String username;

    @NotEmpty (message = "The customer password must not be null")
    private String password;

    private boolean enabled;

    @OneToOne
    @JoinColumn(name = "shippingAddressId")
    private shippingAddress shippingAddress;

    @OneToOne
    @JoinColumn(name = "cartId")
    private Cart cart;

    
    public int getCutomerId() {
		return cutomerId;
	}

	public void setCutomerId(int cutomerId) {
		this.cutomerId = cutomerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
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

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public shippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(shippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}


	
}
