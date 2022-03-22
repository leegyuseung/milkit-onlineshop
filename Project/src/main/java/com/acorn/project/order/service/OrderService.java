package com.acorn.project.order.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.acorn.project.cart.dto.CartDto;
import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;
import com.acorn.project.order.dto.OrderListDto;
import com.acorn.project.product.dto.StockBuyDto;

public interface OrderService {

	public void orderInfo(OrderDto dto, HttpSession session);
	
	public void orderInfo_Detail(OrderDto dto, OrderDetailDto dtoDetail, HttpSession session);
	
	public List<OrderDto> getListOrder(OrderDto dto);
	
	public List<OrderDto> getAllListOrder(OrderDto dto);

	public List<OrderListDto> orderDetailList(OrderDto dto);
	
	public List<OrderListDto> AllOrderDetailList(OrderDto dto);
	
	public void stockReduce(StockBuyDto sbdto);
	
	public void buyCount(StockBuyDto sbdto);

	public void delivered(OrderDto dto);
	
	public List<OrderDto> thisWeek(OrderDto dto);

	public List<OrderDto> lastWeek(OrderDto dto);
}
