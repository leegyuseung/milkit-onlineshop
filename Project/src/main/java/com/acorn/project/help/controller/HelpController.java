package com.acorn.project.help.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelpController {

	@RequestMapping(value = "/help/help.do")
	public String help() {
		
		return "help/help";
	}
}
