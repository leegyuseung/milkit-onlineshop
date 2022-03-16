package com.acorn.project.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.acorn.project.order.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService service;
	
	@RequestMapping("staff/orderComplete.do")
	public String OrderComplete() {
		return "staff/orderComplete";
	}
}
