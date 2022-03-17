package com.acorn.project.order.dao;

import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;

public interface OrderDao {
	
	public void orderInfo(OrderDto dto);
	
	public void orderInfo_Detail(OrderDetailDto dtoDetail);
	public int getOrderId();
}
