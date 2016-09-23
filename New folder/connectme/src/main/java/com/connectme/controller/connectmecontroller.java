 package com.connectme.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
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
public class connectmecontroller {
	 @Autowired
	 service serviceClass;

	 private Path path;
	 
	@RequestMapping(value = {"/","/home"})
	public ModelAndView indexview()
	{
	return new ModelAndView("index");	
	}
	@RequestMapping(value = {"admin/userProfile","user/userProfile","userProfile"})
	public ModelAndView userProfileview(@ModelAttribute("user") userprofile user,Principal p)
	{
		////String userName=SecurityContextHolder.getContext().getAuthentication().getName();
		//Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		//List l1;
		//userprofile principal1=(userprofile)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
      
		//int ID=0;
        
        // ID =l1.
      String userName=p.getName().toString();
		System.out.println("username = "+userName);		
       // System.out.println(ID);
		user=serviceClass.getRowbyusername(userName);
		 //all=serviceClass.getAllUsers();
	return new ModelAndView("userProfile","user",user);
		//return null;
	}
	private void foreach() {
		// TODO Auto-generated method stub
		
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
		String userName=SecurityContextHolder.getContext().getAuthentication().getName();
		blog.setUsername(userName);
		blog.setCreationdate(new java.util.Date());
		serviceClass.insertblog(blog);
		return new ModelAndView("redirect:Blog");
	}
	
	
	/*@RequestMapping(value={"/admin/deleteblog","/user/deleteblog","/deleteblog"})
	public ModelAndView deleteblog(@RequestParam int ID,@ModelAttribute blogmodel blog)
	{
		String userName=SecurityContextHolder.getContext().getAuthentication().getName();
		blog.setUsername(userName);
		blog.setCreationdate(new java.util.Date());
		//serviceClass.deleteblog(blog);
		return new ModelAndView("redirect:Blog");
	}*/
	
	
	@RequestMapping(value = {"admin/Forum","user/Forum","/Forum"})
	public ModelAndView Forumview(@ModelAttribute("forum") forummodel forum)
	{
		List forumList=serviceClass.getForumList();
	return new ModelAndView("Forum", "forumList", forumList);	
	}
	
	@RequestMapping(value={"/admin/addforum","/user/addforum","/addforum"})
	public ModelAndView addblog(@ModelAttribute("forum") forummodel forum)
	{
		String userName=SecurityContextHolder.getContext().getAuthentication().getName();
		forum.setUsername(userName);
		//forum.setCatagory("main");
		forum.setCreationdate(new java.util.Date());
		serviceClass.insertforum(forum);
		return new ModelAndView("redirect:Forum");
	}
	
	@RequestMapping(value = {"/user/Chat","/admin/Chat","/Chat"})
	public ModelAndView Chatview()
	{
	return new ModelAndView("Chat");	
	}
	/**
	 * @return
	 
	@RequestMapping(value = {"/Chat"})
	public ModelAndView ChatView()
	{
	return new ModelAndView("redirect:loginpage");	
	}
	*/
	@RequestMapping(value = {"/loginpage"})
	public ModelAndView loginview()
	{
	return new ModelAndView("loginpage");	
	}
	
	@RequestMapping(value = {"/edituser"})
	public ModelAndView editview(@RequestParam int userId,@ModelAttribute userprofile user)
	{
		
		
		user=serviceClass.getRowbyuserid(userId);
		
		
	return new ModelAndView("edituser","user",user);	
	}
	
	
	@RequestMapping(value = {"/Signin"})
	public ModelAndView Signinview(@ModelAttribute("userProfile") userprofile userProfile)
	{
	return new ModelAndView("Signin");	
	}
	 @RequestMapping(value={"/register"}, method = RequestMethod.POST)
	 public ModelAndView registeruser(@Valid @ModelAttribute("userProfile") userprofile userProfile, BindingResult result,HttpServletRequest request)
	 {
		
		 if(result.hasErrors()){
			 String error=result.toString();
			System.out.println(error);
	            return new ModelAndView("Signin");
	        }
		 else {
			 userProfile.setEnabled(true);
		 serviceClass.insertuser(userProfile);
		 
			MultipartFile profilepic = userProfile.getProfilepic();
		    String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		    path = Paths.get(rootDirectory + "/resources/images/" + userProfile.getUserId() + ".jpg");

		    if(profilepic != null && !profilepic.isEmpty()){
		        try {
		        	profilepic.transferTo(new File(path.toString()));
		        	
		        } 
		        catch (Exception ex){
		        	System.out.println(ex.getMessage());
		            ex.printStackTrace();
		            throw new RuntimeException("Product image saving failed", ex);
		        }
		    }
			}
		 System.out.println(path);
		 return new ModelAndView("redirect:loginpage");
	 }
	 
	 
	 
	 
	 @RequestMapping(value={"/edituserdata"}, method = RequestMethod.POST)
	 public ModelAndView edituserdata(@Valid @ModelAttribute("user") userprofile user, BindingResult result,HttpServletRequest request)
	 {
		
		 if(result.hasErrors()){
			 System.out.println(result.toString());
	            return new ModelAndView("403");
	        }
		 else {
		 //serviceClass.insertuser(userProfile);
		 
			MultipartFile profilepic = user.getProfilepic();
		    String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		    path = Paths.get(rootDirectory + "/resources/images/" + user.getUserId() + ".jpg");

		    if(profilepic != null && !profilepic.isEmpty()){
		        try {
		        	profilepic.transferTo(new File(path.toString()));
		        	
		        } 
		        catch (Exception ex){
		        	System.out.println(ex.getMessage());
		            ex.printStackTrace();
		            throw new RuntimeException("Product image saving failed", ex);
		        }
		    }
			}
		 System.out.println(path);
		 serviceClass.insertuser(user);
		 return new ModelAndView("redirect:userProfile");
	 }
	 
	 @RequestMapping(value="/aboutus")
		public ModelAndView aboutusview()
		{
			return new ModelAndView("aboutus");
		}
	 
	 @RequestMapping(value="/contactus")
		public ModelAndView contactusview()
		{
			return new ModelAndView("contactus");
		}
	 
	 @RequestMapping(value="/perform_logout")
	 public ModelAndView logoutPage(HttpServletRequest request, HttpServletResponse response)
	 {
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null){    
	            new SecurityContextLogoutHandler().logout(request, response, auth);
	        }
	        return new ModelAndView("redirect:/");
	 }
	 
	 
	 private String getPrincipal(){
	        String userName = null;
	        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	        
	        if (principal instanceof userprofile) {
	            userName = ((userprofile)principal).getUsername();
	        } else {
	            userName = principal.toString();
	        }
	        return userName;
	    }

}
