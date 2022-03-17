package com.acorn.project.order.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.project.order.dto.OrderDetailDto;
import com.acorn.project.order.dto.OrderDto;

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

 

}
