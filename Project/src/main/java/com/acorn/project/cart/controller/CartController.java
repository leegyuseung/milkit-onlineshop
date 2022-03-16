package com.acorn.project.cart.controller;


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
	
	@RequestMapping("/cart/carthome.do")
	public ModelAndView list(CartDto dto, ModelAndView mView, HttpSession session) {
		service.cartList(dto, mView, session);
		//view page 의 정보를 ModelAndView 객체에 담는다.
		mView.setViewName("cart/carthome");
		//ModelAndView 객체를 리턴해 준다.
		return mView;
	}
	
	
	@RequestMapping("/cart/insert.do")
	public String insert(@ModelAttribute CartDto dto, HttpSession session ) {
		String id=(String)session.getAttribute("id");
		if(id==null) {
			String guestId=session.getId();
			System.out.println(guestId);
			dto.setId(guestId);
			
		}else {
			dto.setId(id);
		}
		service.insert(dto);
		return "redirect:/cart/carthome.do";
	}
	
	@RequestMapping("/cart/delete.do")
	public ModelAndView delete(int cart_id, ModelAndView mView) {
		service.delete(cart_id);
		mView.setViewName("redirect:/cart/carthome.do");
		return mView;
	}
}
