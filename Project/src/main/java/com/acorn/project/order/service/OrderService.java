package com.acorn.project.order.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;
import com.acorn.project.order.dto.OrderListDto;

public interface OrderService {

	public void orderInfo(OrderDto dto, HttpSession session);
	
	public void orderInfo_Detail(OrderDto dto, OrderDetailDto dtoDetail, HttpSession session);
	
	public List<OrderDto> getListOrder(OrderDto dto);
	
	public List<OrderDto> getAllListOrder(OrderDto dto);

	public List<OrderListDto> orderDetailList(OrderDto dto);
	
	public List<OrderListDto> AllOrderDetailList(OrderDto dto);
	
	public void stockReduce(OrderDetailDto dto);
	
	public void buyCount(OrderDetailDto dto);


}
