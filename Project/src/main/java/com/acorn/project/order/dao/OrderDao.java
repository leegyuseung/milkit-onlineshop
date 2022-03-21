package com.acorn.project.order.dao;

import java.util.List;

import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;
import com.acorn.project.order.dto.OrderListDto;
import com.acorn.project.product.dto.ProductDto;

public interface OrderDao {
	
	public void orderInfo(OrderDto dto);
	
	public void orderInfo_Detail(OrderDetailDto dtoDetail);
	
	public int getOrderId();
	
	public List<OrderDto> getList(OrderDto dto);
	
	public List<OrderListDto> orderDetailList(OrderDto dto);
	
	public List<OrderDto> getAllList(OrderDto dto);

	public List<OrderListDto> AllOrderDetailList(OrderDto dto);
	
	public void stockReduce(OrderDetailDto dto);
	
	public void buyCount(OrderDetailDto dto);
	
	public void delivered(OrderDto dto);

}
