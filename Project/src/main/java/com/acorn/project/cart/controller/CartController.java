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
	
	@Inject
	CartDao dao;
	
	@RequestMapping("/private/cart/carthome")
	public String cart(HttpSession session) {
		String id=session.getId();
		service.cartList(id);
		
		return "cart/carthome";
	}
	
	@RequestMapping("/private/insert.do")
	public String insert(@ModelAttribute CartDto dto, HttpSession session) {
		
		dto.setId(session.getId());
		dao.insert(dto);
		return "redirect:/cart/carthome.do";
	}
}
