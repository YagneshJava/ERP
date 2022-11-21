package com.erp.controller;

import java.net.UnknownHostException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.erp.commonConstants.CommonConstants;
import com.erp.models.User;
import com.erp.service.AuthService;

@Controller
public class LoginController {

	
	@Autowired
	private AuthService service;
	
	@RequestMapping(value = "/login" )	
	public ModelAndView loginPage(String error , @RequestParam(value = "logout", required = false) String logout, HttpServletRequest request , User user) throws UnknownHostException {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
	    return model;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			SecurityContextLogoutHandler x = new SecurityContextLogoutHandler();
			x.setInvalidateHttpSession(true);
			x.setClearAuthentication(true);
			x.logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = { "/userWelcomePage" }, method = RequestMethod.GET)
	public String defaultCMOPage(HttpServletRequest request) {

		HttpSession session = null;
		session = request.getSession(false);
		String username = "";
		System.out.println("Authentication is : "+SecurityContextHolder.getContext().getAuthentication());
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			username = ((UserDetails) principal).getUsername();
		} else {
			username = principal.toString();
			
		}
		try {
			
			User users = service.getUserByUserName(username);
			if(null != users) {
				session.setAttribute(CommonConstants.USERLOGINDETAILS, users);
				return "customer/CustomerDashboard";
			}else {
				session.invalidate();
				return "redirect:/accessDenied";
			}
				
		} catch (Exception e) {		
			e.printStackTrace();
			session.invalidate();
			return "redirect:/accessDenied";
		}
		
	}
	
}
