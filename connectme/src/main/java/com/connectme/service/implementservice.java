package com.connectme.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.connectme.model.blogmodel;
import com.connectme.model.forummodel;
import com.connectme.model.userprofile;
import com.connectme.DAO.*;;
@Service
@Transactional
public class implementservice implements service{
	@Autowired
	dao daoobj;
	
	public int insertuser(userprofile user) {
		// TODO Auto-generated method stub
		return daoobj.insertuser(user);
	}

	

	public blogmodel getRowById(int ID) {
		// TODO Auto-generated method stub
		return daoobj.getRowById(ID);
	}

	public int insertblog(blogmodel blog) {
		// TODO Auto-generated method stub
		return daoobj.insertBlog(blog);
	}


	public List getForumList() {
		// TODO Auto-generated method stub
		return daoobj.getForumList();
	}

	public int insertforum(forummodel forum) {
		// TODO Auto-generated method stub
		return daoobj.insertForum(forum);
		
	}

	public List geBlogtList() {
		// TODO Auto-generated method stub
		return daoobj.getBlogList();
	}

}
