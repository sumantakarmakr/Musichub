package com.FurtinureStation.DAO;
import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.transaction.annotation.Transactional;

import com.FurtinureStation.model.productmodel;


public class implementDAO implements productDAO {
	
	
	@Autowired
	 SessionFactory sessionFactory;
	 @Transactional
	public int insertRow(productmodel pdm) {
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(pdm);
		  tx.commit();
		  Serializable ID = session.getIdentifier(pdm);
		  session.close();
		  return (Integer) ID;
	}

	public productmodel getRowById(int ID) {
		 Session session = sessionFactory.openSession();
		  productmodel pdm = (productmodel)session.load(productmodel.class,ID);
		  return pdm;
	}

	public int updateRow(productmodel pdm) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(pdm);
		  tx.commit();
		  Serializable ID = session.getIdentifier(pdm);
		  session.close();
		  return (Integer) ID;
	}

	public int deleteRow(int id) {
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  productmodel pdm = (productmodel) session.load(productmodel.class, id);
		  session.delete(pdm);
		  tx.commit();
		  Serializable ID = session.getIdentifier(pdm);
		  session.close();
		  return (Integer) ID;
	}

	public List getList() {
		 Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		// List productList = session.createQuery("from product").list();
		Criteria criteria = session.createCriteria(productmodel.class);
		 List productList=criteria.list();
			//session.close();
			//return criteria.list();
		 //session.close();
		  return productList;
	}
	}
