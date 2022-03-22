package com.acorn.project.staff.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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


	
	//productId 중복 확인을 해서 json 문자열을 리턴해주는 메소드 
	@RequestMapping("/staff/checkProductId")
	@ResponseBody
	public Map<String, Object> checkid(@RequestParam String inputProductId){
		//UsersService 가 리턴해주는 Map 을 리턴해서 json 문자열을 응답한다. 
		return Pservice.isExistProductId(inputProductId);
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
	public ModelAndView adminOrderList(ModelAndView mView, OrderDto dto) {
		
		
		List<OrderDto> list=Oservice.getAllListOrder(dto);
		
		mView.addObject("list", list);

		mView.setViewName("staff/adminOrderList");
		return mView;
	}
	
	@RequestMapping("/staff/adminOrderDetail.do")
	public ModelAndView orderDetail(ModelAndView mView, OrderDto dto, int orderId) {
		
		
		dto.setOrderId(orderId);
		
		List<OrderListDto> list=Oservice.AllOrderDetailList(dto);

		mView.addObject("list", list);

		mView.setViewName("staff/adminOrderDetail");
		return mView;
		
	}
	
	@RequestMapping("/staff/home.do")
	public ModelAndView thisWeek(ModelAndView mView, OrderDto dto) {
		
		List<OrderDto> list=Oservice.thisWeek(dto);
		
		mView.addObject("list", list);

		mView.setViewName("staff/home");
		return mView;
	}
	
	@RequestMapping("/staff/lastWeek.do")
	public ModelAndView lastWeek(ModelAndView mView, OrderDto dto) {
		
		List<OrderDto> list=Oservice.lastWeek(dto);
		
		mView.addObject("list", list);

		mView.setViewName("staff/lastWeek");
		return mView;
	}
	
}
