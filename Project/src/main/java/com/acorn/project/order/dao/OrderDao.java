package com.acorn.project.order.dao;

import java.util.List;

import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;
import com.acorn.project.product.dto.ProductDto;

public interface OrderDao {
	
	public void orderInfo(OrderDto dto);
	
	public void orderInfo_Detail(OrderDetailDto dtoDetail);
	
	public int getOrderId();
	
	public List<OrderDto> getList(OrderDto dto);
}
