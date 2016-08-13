 package com.connectme.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.connectme.model.blogmodel;
import com.connectme.model.forummodel;
import com.connectme.model.userprofile;
import com.connectme.service.*;
import com.google.gson.Gson;

@Controller
//@Service
@Transactional
public class connectmecontroller {
	 @Autowired
	 service serviceClass;
	 
	 private Path path;
	 
	@RequestMapping(value = {"/","/home"})
	public ModelAndView indexview()
	{
	return new ModelAndView("index");	
	}
	
	@RequestMapping(value = {"admin/Blog","user/Blog","/Blog"})
	public ModelAndView blogview(@ModelAttribute("blog") blogmodel blog)
	{
		
		List blogList=serviceClass.geBlogtList();
		String json = new Gson().toJson(blogList);
	return new ModelAndView("Blog","blogList",json);	
	}
	
	@RequestMapping(value={"/admin/addblog","/user/addblog","/addblog"})
	public ModelAndView addblog(@ModelAttribute("blog") blogmodel blog)
	{
		
		blog.setUsername("sumanta");
		blog.setCreationdate(new java.util.Date());
		serviceClass.insertblog(blog);
		return new ModelAndView("redirect:Blog");
	}
	
	@RequestMapping(value = {"admin/Forum","user/Forum","/Forum"})
	public ModelAndView Forumview(@ModelAttribute("forum") forummodel forum)
	{
		List forumList=serviceClass.getForumList();
	return new ModelAndView("Forum", "forumList", forumList);	
	}
	
	@RequestMapping(value={"/admin/addforum","/user/addforum","/addforum"})
	public ModelAndView addblog(@ModelAttribute("forum") forummodel forum)
	{
		
		forum.setUsername("sumanta");
		//forum.setCatagory("main");
		forum.setCreationdate(new java.util.Date());
		serviceClass.insertforum(forum);
		return new ModelAndView("redirect:Forum");
	}
	
	@RequestMapping(value = {"/Chat"})
	public ModelAndView Chatview()
	{
	return new ModelAndView("Chat");	
	}
	
	@RequestMapping(value = {"/loginpage"})
	public ModelAndView loginview()
	{
	return new ModelAndView("loginpage");	
	}
	@RequestMapping(value = {"/Signin"})
	public ModelAndView Signinview(@ModelAttribute("user") userprofile user)
	{
	return new ModelAndView("Signin");	
	}
	 @RequestMapping(value={"/register"}, method = RequestMethod.POST)
	 public ModelAndView registeruser(@Valid @ModelAttribute("userProfile") userprofile userProfile, BindingResult result,HttpServletRequest request)
	 {
		
		 if(result.hasErrors()){
	            return new ModelAndView("Signin");
	        }
		 else {
		 serviceClass.insertuser(userProfile);
		 
			MultipartFile profilepic = userProfile.getProfilepic();
		    String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		    path = Paths.get(rootDirectory + "/resources/images/" + userProfile.getUserId() + ".jpg");

		    if(profilepic != null && !profilepic.isEmpty()){
		        try {
		        	profilepic.transferTo(new File(path.toString()));
		        } 
		        catch (Exception ex){
		            ex.printStackTrace();
		            throw new RuntimeException("Product image saving failed", ex);
		        }
		    }
			}
		 
		 return new ModelAndView("redirect:loginpage");
	 }

}
