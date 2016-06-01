package com.FurtinureStation.DAO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.FurtinureStation.model.Cart;
import com.FurtinureStation.model.UserProfile;
import com.FurtinureStation.model.productmodel;



@Repository
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	SessionFactory mySessionFactory;

	public SessionFactory getMySessionFactory() {
		return mySessionFactory;
	}

	public void setMySessionFactory(SessionFactory mySessionFactory) {
		this.mySessionFactory = mySessionFactory;
	}

	public void addToCart(Cart cart) {
		Session session=mySessionFactory.openSession();
		 Transaction tx = session.beginTransaction();
		productmodel product = (productmodel)session.get(productmodel.class, cart.getID());
		cart.setPname(product.getName());
		cart.setPrice(product.getPrice());
		session.saveOrUpdate(cart);
		tx.commit();
		  Serializable ID = session.getIdentifier(cart);
		  session.close();
		 // return (Integer) cartId;
		
	}

	public String updateCart(Cart c, int cartId) {
		Session session=mySessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class,cartId);
		 cart.setAddress(c.getAddress());
		 
		 
		session.update(cart);
		 
		session.close();
		 
		
		return "success";
	}

	public void deleteCart(int cartId) {
		Session session=mySessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class,cartId);
		session.delete(cart);
		session.flush();
		session.close();
	}

	public Cart getCartById(int cartId) {
		Session session=mySessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class, cartId);
		if(cart!=null)
			return cart;
		else
		return null;
	}

	public List getCart(int userid) {
		Session session=mySessionFactory.openSession();
		Criteria criteria = session.createCriteria(Cart.class);
		criteria=criteria.add(Restrictions.eq("userid",userid));
		return criteria.list();		
	}

	
	public boolean validate(int cartId)
	{
		Session session = mySessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class, cartId);
		if (cart!=null)
			return true;
		else
			return false;
	}
	
	public String modifyCart(Cart cart) {
		System.out.println("Updating Cart");
		Session session=mySessionFactory.openSession();
		
		Criteria c = session.createCriteria(Cart.class);
		c.add(Restrictions.eq("userid", cart.getUserid()));
		List<Cart> cartUser = c.list();
		System.out.println(cartUser);
		for(Cart user : cartUser)
		{
			user.setAddress(cart.getAddress());
			
			session.update(user);
		}
		//session.saveOrUpdate(cart);
		session.flush();
		return "success";
	}

	public UserProfile getUserIdByName(String username) {
		Session session=mySessionFactory.openSession();
		Criteria c = session.createCriteria(UserProfile.class);
		c.add(Restrictions.eq("username", username));
		List<UserProfile> user = c.list();
		
		return user.get(0);
	}
	
}
