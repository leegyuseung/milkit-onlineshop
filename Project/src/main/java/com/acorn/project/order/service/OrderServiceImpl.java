package com.acorn.project.order.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.project.order.dao.OrderDao;
import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderDao dao;

	@Override
	public void orderInfo(OrderDto dto, HttpSession session) {
		String id=(String)session.getAttribute("id");
		dto.setUserId(id);
		dao.orderInfo(dto);
		
	}

	@Override
	public void orderInfo_Detail(OrderDto dto, OrderDetailDto dtoDetail, HttpSession session) {
		//세션 아이디 불러오기
		String id=(String)session.getAttribute("id");
		dtoDetail.setUserId(id);

		//orderDto의 orderId랑 orderDetailDto의 orderId랑 연동하기
		int orderId=dto.getOrderId();
		dtoDetail.setOrderId(orderId);
		System.out.println(dtoDetail.getOrderId());//0 나옴....
		
		
		dao.orderInfo_Detail(dtoDetail);
		
	}
	
}
