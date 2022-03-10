package com.acorn.project.mealkit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MealkitController {
	//밀키트홈
	@RequestMapping("/mealkit/mealkit_home")
	public String allList() {
		
		return "mealkit/mealkit_home";
	}
	//밀키트뉴
	@RequestMapping("/mealkit/mealkit_new")
	public String newList() {
		
		return "mealkit/mealkit_new";
	}
	//밀키트베스트
	@RequestMapping("/mealkit/mealkit_best")
	public String bestList() {
		
		return "mealkit/mealkit_bests";
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
