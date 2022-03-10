package com.acorn.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home.do") 
	public String home(HttpServletRequest request) {
		return "home";
	}
	
	@RequestMapping("/cartlist.do")
	public String cartlist(HttpServletRequest request) {
		return "cartlist";
	}
	
}



















