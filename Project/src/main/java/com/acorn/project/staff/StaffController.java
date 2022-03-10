package com.acorn.project.staff;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StaffController {

	@RequestMapping("/staff/home.do")
	public String staff() {
		
		return "staff/home";
	}
}
