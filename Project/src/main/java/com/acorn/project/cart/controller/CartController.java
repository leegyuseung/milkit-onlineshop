package com.acorn.project.cart.controller;



import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.acorn.project.cart.dto.CartDto;
import com.acorn.project.cart.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService service;
	
	
	@RequestMapping("/private/cart/carthome")
	public String cart() {
		
		return "cart/carthome";
	}
	
	@RequestMapping("/private/cart/cartlist")
	public String cartList(HttpSession session, ModelAndView mView) {
		String id=(String)session.getAttribute("id");
		List<CartDto> list=service.cartList(id);
		mView.addObject("list", list);
		return "cart/carthome";
	}
	
	
	@RequestMapping("/private/cart/insert.do")
	public String insert(@ModelAttribute CartDto dto, HttpSession session) {
		String id=(String)session.getAttribute("id");
		dto.setId(id);
		service.insert(dto);
		return "redirect:/private/cart/cartlist.do";
	}
}
