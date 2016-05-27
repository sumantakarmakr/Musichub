package com.FurtinureStation.controller;




import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import com.FurtinureStation.model.*;
import com.FurtinureStation.service.*;
@Controller
@Service
@Transactional
public class furtinurecontroller {
	
	 @Autowired
	serviceclass serviceClass;
	 
	 private Path path;
	
	@RequestMapping(value = {"/","/home"})
	public ModelAndView indexview()
	{
	return new ModelAndView("index");	
	}
	
	
	@RequestMapping(value={"/AllProducts","admin/AllProducts"})
	public ModelAndView AllProductsview()
	{
		
		List productList = serviceClass.getList();
		  return new ModelAndView("AllProducts", "productList", productList);
	}

	
	
	
	@RequestMapping("admin/editproduct")
	public ModelAndView editproductview(@RequestParam int ID,@ModelAttribute productmodel pdm)
	{
		pdm=serviceClass.getRowById(ID);
		
	return new ModelAndView("editproduct", "pdm", pdm);	
	}
	
	@RequestMapping("order/{cardId}")
	public ModelAndView addcart(@RequestParam("cart") Cart cart)
	{
	//	serviceClass.insercart(cart);
		return new ModelAndView("cart");
	}
	/*@RequestMapping("/order/{cartId}")
	 public String createOrder(@PathVariable("cartId") int cartId) {
	 UserProfile userOrder = new UserProfile();
	 Cart cart=serviceClass.getCartById(cartId);
	 userOrder.setCart(cart);
	 UserProfile usersDetail = cart.getUserProfile();
	 userOrder.setUsersDetail(usersDetail);
	 userOrder.setBillingAddress(usersDetail.getBillingAddress());
	 userOrder.setShippingAddress(usersDetail.getShippingAddress());
	 orderService.addOrder(userOrder);
	 return "redirect:/checkout?cartId="+cartId;
	 }*/

	
	@RequestMapping("/productdetails")
	public ModelAndView detailsview()
	{
	return new ModelAndView("productdetails");	
	}
	
	
	 @RequestMapping(value="admin/reg_product")
	public ModelAndView regview(@ModelAttribute productmodel productmodel)
	{
		// ModelAndView m1=new ModelAndView("redirect:reg_product");
       /* if (result.hasErrors()) {
			 
			 return new ModelAndView("reg_product");
			 
			}
		else {
		serviceClass.insertRow(productmodel);
		MultipartFile productImage = productmodel.getPhoto();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/resources/images/" + productmodel.getID() + ".jpg");

        if(productImage != null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            } 
            catch (Exception ex){
                ex.printStackTrace();
                throw new RuntimeException("Product image saving failed", ex);
            }
        }
		}
		*/
        return new ModelAndView("reg_product");	
	}
	 
	 
	 
	 
	@RequestMapping(value={"/insert","admin/insert"})
	public ModelAndView insert(@Valid @ModelAttribute("productmodel") productmodel productmodel, BindingResult result ,HttpServletRequest request)
	{
	 if (result.hasErrors()) {
		 
		 return new ModelAndView("reg_product");
		 
		}
	else {
	serviceClass.insertRow(productmodel);
	MultipartFile productImage = productmodel.getPhoto();
    String rootDirectory = request.getSession().getServletContext().getRealPath("/");
    path = Paths.get(rootDirectory + "/resources/images/" + productmodel.getID() + ".jpg");

    if(productImage != null && !productImage.isEmpty()){
        try {
            productImage.transferTo(new File(path.toString()));
        } 
        catch (Exception ex){
            ex.printStackTrace();
            throw new RuntimeException("Product image saving failed", ex);
        }
    }
	}
	return new ModelAndView("redirect:/");	
	}
	 
	 
	 
	@RequestMapping("admin/delete")
	 public ModelAndView deleteUser(@RequestParam int ID) {
	  serviceClass.deleteRow(ID);
	  return new ModelAndView("redirect:AllProducts");
	 }
	
	
	
	@RequestMapping(value="/aboutus")
	public ModelAndView aboutusview()
	{
		return new ModelAndView("aboutus");
	}
	
	
	@RequestMapping(value="/403")
	public ModelAndView errorview()
	{
		return new ModelAndView("403");
	}
	
	
	
	@RequestMapping(value="/contactus")
	public ModelAndView contactusview()
	{
		return new ModelAndView("contactus");
	}
	
	
	
	 @RequestMapping("/update")
	 public ModelAndView updateUser(@Valid @ModelAttribute("pdm") productmodel pdm, BindingResult result, HttpServletRequest request) {
		 if(result.hasErrors()){
	            return new ModelAndView("editproduct");
	        }
		 MultipartFile productImage = pdm.getPhoto();
	        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
	        path = Paths.get(rootDirectory + "/resources/images/" + pdm.getID() + ".jpg");

	        if(productImage != null && !productImage.isEmpty()){
	            try {
	                productImage.transferTo(new File(path.toString()));
	            } catch (Exception ex){
	                ex.printStackTrace();
	                throw new RuntimeException("Product image saving failed", ex);
	            }
	        }


		 serviceClass.updateRow(pdm);
	  return new ModelAndView("redirect:AllProducts");
	 }

	 
	
	 
	 @RequestMapping("/viewProduct")
		public String getProductById(@RequestParam("ID") int ID, Model model) {
		 productmodel product = serviceClass.getRowById(ID);
			model.addAttribute("product", product);
			return "viewProduct";
		}
	 
	 
	 
	 
	 @RequestMapping(value="/reg_user")
	 public ModelAndView reguser(@ModelAttribute("user") UserProfile user)
	 {
		// shippingAddress ShippingAddress = new shippingAddress();
		 //user.setShippingAddress(ShippingAddress);
		 
		 return new ModelAndView("reg_user");
	 }
	 @RequestMapping(value={"/register"}, method = RequestMethod.POST)
	 public ModelAndView registeruser(@Valid @ModelAttribute("user") UserProfile user, BindingResult result)
	 {
		
		//shippingAddress ShippingAddress = new shippingAddress();
		 //user.setShippingAddress(ShippingAddress);
		 if(result.hasErrors()){
	            return new ModelAndView("reg_user");
	        }
		 user.setEnabled(true);
		 serviceClass.insertuser(user);
		 
		 
		 return new ModelAndView("redirect:loginpage");
	 }
	 
	 
	 
	 @RequestMapping(value = "/admin")
	    public ModelAndView adminPage() {
	       // model.addAttribute("user", getPrincipal());
		 ModelAndView m1=new ModelAndView();
		 m1.addObject("user", getPrincipal());
	        return new ModelAndView("index") ;
	    }
	 
	/* @RequestMapping(value={"/loginpage"},method = RequestMethod.GET)
	 public ModelAndView login(@ModelAttribute UserProfile userform)
	 {
		 return new ModelAndView("loginpage");
	 }*/
	 
	 @RequestMapping(value={"/loginpage"})
	 public ModelAndView login() {
	       // model.addAttribute("user", getPrincipal());
		
	        return new ModelAndView("loginpage") ;
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
	 
	        if (principal instanceof UserDetails) {
	            userName = ((UserDetails)principal).getUsername();
	        } else {
	            userName = principal.toString();
	        }
	        return userName;
	    }



}
