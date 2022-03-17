package com.acorn.project.order.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.cart.dto.CartDto;
import com.acorn.project.cart.service.CartService;
import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;
import com.acorn.project.order.service.OrderService;
import com.acorn.project.users.dto.UsersDto;

@Controller
public class OrderController {

	@Autowired
	private OrderService service2;
	
	@Autowired
	private CartService service;
	
	
	
	@RequestMapping("/staff/orderPage.do")
	public ModelAndView Orderlist(CartDto dto, ModelAndView mView, HttpSession session) {
		service.cartList(dto, mView, session);
		//view page 의 정보를 ModelAndView 객체에 담는다.
		mView.setViewName("staff/orderPage");
		//ModelAndView 객체를 리턴해 준다.
		return mView;
	}
	/*
	 *  MemberVO member = (MemberVO)session.getAttribute("member");  
 String userId = member.getUserId();
  
 order.setUserId(userId);
  
 service.orderInfo(order);
 
 orderDetail.setOrderId(orderId);   
 service.orderInfo_Details(orderDetail);
 
 
 return "redirect:/shop/orderList";
	 */
	@RequestMapping("/staff/orderHistory.do")
	public String Order(HttpSession session, OrderDto dto,  OrderDetailDto dtoDetail) {
		
		
		service2.orderInfo(dto, session);
		
		service2.orderInfo_Detail(dto, dtoDetail, session);
		
		service.deleteAll((String)session.getAttribute("id"));
		
		return "staff/orderHistory";
	}
	
	
}
