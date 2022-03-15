package com.acorn.project.cart.service;


import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.cart.dto.CartDto;

public interface CartService {
	public void insert(CartDto dto);
	public void cartList(CartDto dto, ModelAndView mView, HttpSession session);
	public void delete(int cart_id);
	public void deleteAll(String id);
	public void update(int cart_id);
	public int sumPrice(String id);
	public int countCart(String id, String productId);
	public void updateCart(CartDto dto);
	public void modifyCart(CartDto dto);
}
