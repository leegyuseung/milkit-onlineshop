package com.acorn.project.order.service;

import javax.servlet.http.HttpSession;

import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;

public interface OrderService {

	public void orderInfo(OrderDto dto, HttpSession session);
	
	public void orderInfo_Detail(OrderDto dto, OrderDetailDto dtoDetail, HttpSession session);
	

}
