package com.connectme.DAO;

import java.util.List;

import com.connectme.model.blogmodel;
import com.connectme.model.forummodel;
import com.connectme.model.userprofile;

public interface dao {
	public int insertuser(userprofile user);
	public blogmodel getRowById(int id);
	public List getBlogList();
	public List getForumList();
	public int insertBlog(blogmodel blog);
	public int insertForum(forummodel blog);
}
