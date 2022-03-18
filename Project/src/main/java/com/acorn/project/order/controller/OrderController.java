package com.acorn.project.order.controller;

import java.util.List;

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
	public ModelAndView cartlist(CartDto dto, ModelAndView mView, HttpSession session) {
		service.cartList(dto, mView, session);
		//view page 의 정보를 ModelAndView 객체에 담는다.
		mView.setViewName("staff/orderPage");
		//ModelAndView 객체를 리턴해 준다.
		return mView;
	}

	@RequestMapping("/staff/orderComplete.do")
	public String Order(HttpSession session, OrderDto dto,  OrderDetailDto dtoDetail) {
		
		service2.orderInfo(dto, session);
		
		//여기dto에는 orderId가 추가되지 않았음

		service2.orderInfo_Detail(dto, dtoDetail, session);
		
		//service.deleteAll((String)session.getAttribute("id"));
		
		return "staff/orderComplete";
	}
	
	@RequestMapping("/staff/orderHistory.do")
	public ModelAndView orderList(ModelAndView mView, OrderDto dto, HttpSession session) {
		
		String id=(String)session.getAttribute("id");
		dto.setUserId(id);
		
		List<OrderDto> list=service2.getListOrder(dto);
		
		mView.addObject("list", list);

		mView.setViewName("staff/orderHistory");
		return mView;
		
	}
	
	
}
