package com.niit.EComFront.Controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.EComBack.DAO.UserDAO;
import com.niit.EComBack.Model.UserDetails;

@Controller
public class HomeController
{
	@Autowired
	UserDAO ud;
	
 @RequestMapping({"/","/home"})
 public String indexpage(Model M) {
	 M.addAttribute("sliderpage",true);
	 return "index";
	}
 @RequestMapping("/aboutus")
 public String aboutpage(Model M) {
	 M.addAttribute("aboutpage",true);
	 return "index";
 }
 @RequestMapping("/contactus")
 public String contactpage(Model M) {
	 M.addAttribute("contactpage",true);
	 return "index";
	 
 }

 @RequestMapping("/Login")
 public String loginpage(Model M) {
	 M.addAttribute("Loginpage",true);
	 M.addAttribute("error",false);
	 M.addAttribute("message","");
	 return "index";
 }
 
 @RequestMapping("/flogin")
 public String floginpage(Model M) {
	 M.addAttribute("fLoginpage",true);
	 M.addAttribute("error",true);
	 M.addAttribute("message","user name ,password incorrect");
	 return "index";
 }
 
 @RequestMapping("/loginsuccess")
	public String isLoggedin(HttpSession session) 
	{
	String email = SecurityContextHolder.getContext().getAuthentication().getName();
	Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
	for (GrantedAuthority authority : authorities) 
	{
	
	if (authority.getAuthority().equals("ROLE_USER")) 
	{
	
	UserDetails customer = ud.SelectUser(email);
	session.setAttribute("useremail",customer.getEmailId());
	session.setAttribute("usercartid",customer.getCartId());
	session.setAttribute("username",customer.getUserName());
	session.setAttribute("userlogin",true);
	if(session.getAttribute("proid")!=null)
	{
	return "redirect:/addToCart?pid="+Integer.parseInt(session.getAttribute("proid").toString());
	}
	else
	{
	return "redirect:/";
	}
	} 
	else 
	{
	System.out.println("error");
	session.setAttribute("username","Administrator");
	session.setAttribute("userlogin", false);
	return "redirect:/";
	}
	}
	return "redirect:/";
	
	}
	

 
}
