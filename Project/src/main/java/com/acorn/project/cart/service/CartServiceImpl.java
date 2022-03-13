package com.acorn.project.cart.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.project.cart.dao.CartDao;
import com.acorn.project.cart.dto.CartDto;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartDao dao;
	private SqlSession session;
	
	@Override
	public void insert(CartDto dto) {
		dao.insert(dto);
	}
	
	@Override
	public List<CartDto> cartList(String id){
		return dao.cartList(id);
	}
	
	@Override
	public void delete(int cart_id) {
		dao.delete(cart_id);
	}
	
	@Override
	public void deleteAll(String id) {
		dao.deleteAll(id);
	}
	
	@Override
	public void update(int cart_id) {
		
	}
	
	@Override
	public int sumPrice(String id) {
		return dao.sumPrice(id);
	}
	
	@Override
	public int countCart(String id, String productid) {
		return 0;
	}
	
	@Override
	public void updateCart(CartDto dto) {
		
	}
	
	@Override
	public void modifyCart(CartDto dto) {
		dao.modifyCart(dto);
	}
	
}











