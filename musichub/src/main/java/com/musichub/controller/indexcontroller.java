package com.musichub.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.list;
import com.productmodel;
//import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class indexcontroller {
	@RequestMapping(value="index")
	public ModelAndView indexview()
	{
		return new ModelAndView("index");
	}
	@RequestMapping(value="contactus")
	public ModelAndView contactusview()
	{
		return new ModelAndView("contactus");
	}
	@RequestMapping(value="login")
	public ModelAndView loginview()
	{
		return new ModelAndView("login");
	}
	@RequestMapping(value="signup")
	public ModelAndView signupview()
	{
		return new ModelAndView("signup");
	}
	@RequestMapping(value="aboutus")
	public ModelAndView aboutusview()
	{
		return new ModelAndView("aboutus");
	}
	@RequestMapping(value="AllProducts")
	public ModelAndView productsview()
	{
		
		ModelAndView m1=new ModelAndView("AllProducts");
		m1.addObject("list",new list().toString());
		return m1 ;
	}
}