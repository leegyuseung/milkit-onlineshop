package com.acorn.project.staff.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.order.dto.OrderDto;
import com.acorn.project.order.dto.OrderListDto;
import com.acorn.project.order.service.OrderService;
import com.acorn.project.product.service.ProductService;
import com.acorn.project.users.service.UsersService;

@Controller
public class StaffController {
	
	@Autowired
	private ProductService Pservice;
	
	@Autowired
	private UsersService Uservice;
	
	@Autowired
	private OrderService Oservice;

	@RequestMapping("/staff/home.do")
	public String staff() {
		
		return "staff/home";
	}
	
	@RequestMapping("/staff/product/list")
	public ModelAndView ProductsList(ModelAndView mView) {
		Pservice.getListProduct(mView);
		//view page 의 정보를 ModelAndView 객체에 담는다.
		mView.setViewName("staff/product/list");
		//ModelAndView 객체를 리턴해 준다.
		return mView;
	}
	
	@RequestMapping("/staff/usersList")
	public ModelAndView UsersList(ModelAndView mView) {
		Uservice.getList(mView);
		mView.setViewName("staff/usersList");
		return mView;
	}
	
	@RequestMapping("/staff/adminOrderList.do")
	public ModelAndView adminOrderList(ModelAndView mView, OrderDto dto, HttpSession session) {
		
		String id=(String)session.getAttribute("id");
		dto.setUserId(id);
		
		List<OrderDto> list=Oservice.getAllListOrder(dto);
		
		mView.addObject("list", list);

		mView.setViewName("staff/adminOrderList");
		return mView;
	}
	
	@RequestMapping("/staff/adminOrderDetail.do")
	public ModelAndView orderDetail(ModelAndView mView, OrderDto dto, HttpSession session, int orderId) {
		
		String id=(String)session.getAttribute("id");
		dto.setUserId(id);
		
		dto.setOrderId(orderId);
		
		List<OrderListDto> list=Oservice.AllOrderDetailList(dto);

		mView.addObject("list", list);

		mView.setViewName("staff/adminOrderDetail");
		return mView;
		
	}
	
}
