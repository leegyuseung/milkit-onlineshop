package com.acorn.project.mealkit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.acorn.project.mealkit.service.MealkitService;

@Controller
public class MealkitController {
	@Autowired MealkitService service;
	
	//밀키트홈
	@RequestMapping(value = "/mealkit/mealkit_home")
	public String allList(HttpServletRequest request) {
		
		service.allList(request);
		
		return "mealkit/mealkit_home";
	}
	//밀키트한국
	@RequestMapping("/mealkit/mealkit_k")
	public String kList() {
		
		return "mealkit/mealkit_k";
	}
	//밀키트중국
	@RequestMapping("/mealkit/mealkit_c")
	public String cList() {
		
		return "mealkit/mealkit_c";
	}
	//밀키트일본
	@RequestMapping("/mealkit/mealkit_j")
	public String jList() {
		
		return "mealkit/mealkit_j";
	}
	//밀키트서양
	@RequestMapping("/mealkit/mealkit_w")
	public String wList() {
		
		return "mealkit/mealkit_w";
	}
}
