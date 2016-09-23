package com.connectme.service;

import java.util.List;

import com.connectme.model.blogmodel;
import com.connectme.model.forummodel;
import com.connectme.model.userprofile;

public interface service {
	

	 public List geBlogtList();
	 public List getForumList();

	 public blogmodel getRowById(int ID);
	 public userprofile getRowbyuserid(int userid);
	 public userprofile getRowbyusername(String username);
	 public int insertblog(blogmodel blog);
	 public int insertforum(forummodel forum);
	public int insertuser(userprofile user);
	public List getAllUsers();
	public List getAllFriends(String username);
	

}
