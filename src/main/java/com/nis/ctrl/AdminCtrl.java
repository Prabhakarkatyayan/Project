package com.nis.ctrl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.nis.model.Admin;
import com.nis.model.Employee;
import com.nis.repository.AdminRepository;

@RestController
public class AdminCtrl {
	@Autowired
	AdminRepository adminRepository;
	@GetMapping("/AdminLogin")
	public ModelAndView adminLogin() 
	{
	 return new ModelAndView("AdminLogin","Adm",new Admin());
	}
	@GetMapping("/AdminHomePage")
	public ModelAndView adminHomePage() 
	{
	 return new ModelAndView("AdminHomePage");
	}
	
	@PostMapping("/CheckAdminLogin")
	public ModelAndView adminCheck(@ModelAttribute Admin admin,HttpServletRequest req)
	{   List<Admin> A=adminRepository.checkAdminLogin(admin.getAdminId(), admin.getPassword());
	    if(A.size()==0) {
	    	Map<String,Object>model=new HashMap<String,Object>();
	    	model.put("Adm",new Admin());
	    	model.put("Message", "Invalid UserId or Password");
	    	return new ModelAndView("AdminLogin",model);	
	    } 
	    else
	    {HttpSession ses=req.getSession();
	      ses.setAttribute("SES_ADMIN", A.get(0));
	      ses.setAttribute("LTIME",new java.util.Date());

	    	return new ModelAndView("redirect:/AdminHomePage");
	    }
	}
	@GetMapping("/AdminLogout")
	public ModelAndView adminLogout(HttpServletRequest req)
	{HttpSession ses=req.getSession();
	  ses.invalidate();
	 return new ModelAndView("AdminLogin","Adm",new Admin());	
	}

	
}
