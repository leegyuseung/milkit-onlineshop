package com.acorn.project.cart.dao;


import java.util.List;

import com.acorn.project.cart.dto.CartDto;

public interface CartDao {
	public void insert(CartDto dto);
	public List<CartDto> cartList(String id);
	public void delete(int cart_id);
	public void deleteAll(String id);
	public void update(int cart_id);
	public int sumPrice(String id);
	public int countCart(String id, String productId);
	public void updateCart(CartDto dto);
	public void modifyCart(CartDto dto);
	public String getImage(String productId);
}