package com.acorn.project.cart.service;


import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.cart.dto.CartDto;

public interface CartService {
	public void insert(CartDto dto);
	public void cartList(CartDto dto, ModelAndView mView, HttpSession session);
	public void delete(int cart_id); //개별상품 삭제
	public void deleteAll(String id); //로그인된 사용자의 장바구니 전체 삭제
	public void update(int cart_id);
	public int sumPrice(String id);
	public int countCart(String id, String productId);
	public void updateCart(CartDto dto);
	public void modifyCart(CartDto dto);
}
