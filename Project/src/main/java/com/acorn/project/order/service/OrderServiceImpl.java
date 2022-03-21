package com.acorn.project.order.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.order.dao.OrderDao;
import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;
import com.acorn.project.order.dto.OrderListDto;

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
		
		int orderId=dao.getOrderId();
		dtoDetail.setOrderId(orderId);
		
		dao.orderInfo_Detail(dtoDetail);
		
	}

	@Override
	public List<OrderDto> getListOrder(OrderDto dto) {

		return dao.getList(dto);
		
	}
	
	@Override
	public List<OrderDto> getAllListOrder(OrderDto dto) {
		
		return dao.getAllList(dto);
	}

	@Override
	public List<OrderListDto> orderDetailList(OrderDto dto) {

		return dao.orderDetailList(dto);
	}

	@Override
	public List<OrderListDto> AllOrderDetailList(OrderDto dto) {

		return dao.AllOrderDetailList(dto);
	}

	@Override
	public void stockReduce(OrderDetailDto dto) {
		
		dao.stockReduce(dto);
	}

	@Override
	public void buyCount(OrderDetailDto dto) {
		
		dao.buyCount(dto);
	}

	@Override
	public void delivered(OrderDto dto) {

		dao.delivered(dto);
		
	}

	
	
}
