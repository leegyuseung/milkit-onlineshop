package com.acorn.project.order.dao;

import java.util.List;

import com.acorn.project.cart.dto.CartDto;
import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;
import com.acorn.project.order.dto.OrderListDto;
import com.acorn.project.product.dto.ProductDto;
import com.acorn.project.product.dto.StockBuyDto;

public interface OrderDao {
	
	public void orderInfo(OrderDto dto);
	
	public void orderInfo_Detail(OrderDetailDto dtoDetail);
	
	public int getOrderId();
	
	public List<OrderDto> getList(OrderDto dto);
	
	public List<OrderListDto> orderDetailList(OrderDto dto);
	
	public List<OrderDto> getAllList(OrderDto dto);

	public List<OrderListDto> AllOrderDetailList(OrderDto dto);
	
	public void stockReduce(StockBuyDto sbdto);
	
	public void buyCount(StockBuyDto sbdto);
	
	public void stockIncrease(StockBuyDto sbdto);
	
	public void buyCountDown(StockBuyDto sbdto);
	
	public void delivered(OrderDto dto);
	
	public List<OrderDto> thisWeek(OrderDto dto);
	
	public List<OrderDto> lastWeek(OrderDto dto);

}
