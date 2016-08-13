package com.connectme.DAO;

import com.connectme.model.blogmodel;
import com.connectme.model.forummodel;
import com.connectme.model.userprofile;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
@Repository
@Transactional
public class implementDAO implements dao {
	
	@Autowired
	 SessionFactory sessionFactory;
	public int insertuser(userprofile user) {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(user);
		  tx.commit();
		  Serializable ID = session.getIdentifier(user);
		  session.close();
		  return (Integer) ID;
	}
	
	public blogmodel getRowById(int ID) {
		 Session session = sessionFactory.openSession();
		  blogmodel pdm = (blogmodel)session.get(blogmodel.class,ID);
		  return pdm;
	}

	public List getBlogList() {
		Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		// List productList = session.createQuery("from product").list();
		Criteria criteria = session.createCriteria(blogmodel.class);
		 List blogList=criteria.list();
			//session.close();
			//return criteria.list();
		 //session.close();
		return blogList;
	}

	public int insertBlog(blogmodel blog) {
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(blog);
		  tx.commit();
		  Serializable ID = session.getIdentifier(blog);
		  session.close();
		  return (Integer) ID;
	}

	public List getForumList() {
		Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		// List productList = session.createQuery("from product").list();
		Criteria criteria = session.createCriteria(forummodel.class);
		 List forumList=criteria.list();
			//session.close();
			//return criteria.list();
		 //session.close();
		return forumList;
	}

	public int insertForum(forummodel forum) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(forum);
		  tx.commit();
		  Serializable ID = session.getIdentifier(forum);
		  session.close();
		  return (Integer) ID;
	}
}
