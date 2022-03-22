package com.acorn.project.cart.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.project.cart.dto.CartDto;

@Repository
public class CartDaoImpl implements CartDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(CartDto dto) {
		//dto에 저장된 값을 받아서 sql세션에 저장하고 Mapper를 통해 cart.insert로 넘어간다
		session.insert("cart.insert", dto);
	}
	
	public List<CartDto> cartList(String id){
		List<CartDto> list=session.selectList("cart.cartList", id);
		return list;
	}
	
	@Override
	public void delete(int cart_id) {
		session.delete("cart.delete", cart_id);
	}
	
	@Override
	public void deleteAll(String id) {
		session.delete("cart.deleteAll", id);
	}
	
	

	@Override
	public void updateCart(CartDto dto) {
		session.update("cart.updateCart", dto);
	}
	

}











