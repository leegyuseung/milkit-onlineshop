package com.acorn.project.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.project.cart.dto.CartDto;
import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;
import com.acorn.project.order.dto.OrderListDto;
import com.acorn.project.product.dto.StockBuyDto;

@Repository
public class OrderDaoImpl implements OrderDao{

	@Autowired
	private SqlSession session;

	@Override
	public void orderInfo(OrderDto dto) {
		session.insert("order.getInfo", dto);
		
	}

	@Override
	public void orderInfo_Detail(OrderDetailDto dtoDetail) {
		session.insert("order.getInfo_Detail", dtoDetail);
		
	}

	@Override
	public int getOrderId() {
		return session.selectOne("order.getOrderId");
		
	}

	@Override
	public List<OrderDto> getList(OrderDto dto) {

		return session.selectList("order.orderList", dto);
	}
	
	@Override
	public List<OrderDto> getAllList(OrderDto dto) {
		// TODO Auto-generated method stub
		return session.selectList("order.AllOrderList", dto);
	}

	@Override
	public List<OrderListDto> orderDetailList(OrderDto dto) {
	
		return session.selectList("order.orderDetailList", dto);
	}

	@Override
	public List<OrderListDto> AllOrderDetailList(OrderDto dto) {

		return session.selectList("order.AllOrderDetailList", dto);
	}

	@Override
	public void stockReduce(StockBuyDto sbdto) {
		
		session.update("order.stockReduce", sbdto);
		
	}

	@Override
	public void buyCount(StockBuyDto sbdto) {
		
		session.update("order.buyCount", sbdto);
	}

	@Override
	public void delivered(OrderDto dto) {

		session.update("order.delivered", dto);
		
	}

	@Override
	public List<OrderDto> weeklyOrder(OrderDto dto) {

		return session.selectList("order.weeklyOrder", dto);
	}


}
