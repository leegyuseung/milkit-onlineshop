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
import com.acorn.project.order.dto.OrderListDto;
import com.acorn.project.order.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	private OrderService Oservice;
	
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
	
	@RequestMapping("/staff/orderPage2.do")
	public ModelAndView cartlist2(CartDto dto, ModelAndView mView, HttpSession session) {
		//view page 의 정보를 ModelAndView 객체에 담는다.
		mView.setViewName("staff/orderPage2");
		//ModelAndView 객체를 리턴해 준다.
		return mView;
	}

	@RequestMapping("/private/orderComplete.do")
	public String Order(HttpSession session, OrderDto dto,  OrderDetailDto dtoDetail) {
		
		Oservice.orderInfo(dto, session);

		Oservice.orderInfo_Detail(dto, dtoDetail, session);
		
		service.deleteAll((String)session.getAttribute("id"));
		
		return "staff/orderComplete";
	}
	
	@RequestMapping("/private/orderHistory.do")
	public ModelAndView orderList(ModelAndView mView, OrderDto dto, HttpSession session) {
		
		String id=(String)session.getAttribute("id");
		dto.setUserId(id);
		
		List<OrderDto> list=Oservice.getListOrder(dto);
		
		mView.addObject("list", list);

		mView.setViewName("staff/orderHistory");
		return mView;
		
	}
	
	@RequestMapping("/private/orderDetail.do")
	public ModelAndView orderDetail(ModelAndView mView, OrderDto dto, HttpSession session, int orderId) {
		
		String id=(String)session.getAttribute("id");
		dto.setUserId(id);
		
		dto.setOrderId(orderId);
		
		List<OrderListDto> list=Oservice.orderDetailList(dto);

		mView.addObject("list", list);

		mView.setViewName("staff/orderDetail");
		return mView;
		
	}
	
	@RequestMapping("/staff/delivered.do")
	public ModelAndView delivered(ModelAndView mView, OrderDto dto) {
		
		Oservice.delivered(dto);
		
		//Oservice.stockReduce(dtoDetail);
		
		//Oservice.buyCount(dtoDetail);
		
		mView.setViewName("redirect:/staff/adminOrderList.do");
		
		return mView;
	}
}
