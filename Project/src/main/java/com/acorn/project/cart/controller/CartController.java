package com.acorn.project.cart.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.acorn.project.cart.dao.CartDao;
import com.acorn.project.cart.dto.CartDto;
import com.acorn.project.cart.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService service;
	
	
	@RequestMapping("/private/cart/carthome")
	public String cart(HttpSession session) {
		String id=(String)session.getAttribute("id");
		service.cartList(id);
		
		return "cart/carthome";
	}
	
	@RequestMapping("/private/cart/insert.do")
	public String insert(@ModelAttribute CartDto dto, HttpSession session) {
		String id=(String)session.getAttribute("id");
		dto.setId(id);
		service.insert(dto);
		return "redirect:/private/cart/carthome.do";
	}
}
