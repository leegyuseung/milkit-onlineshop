package com.acorn.project.cart.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.cart.dao.CartDao;
import com.acorn.project.cart.dto.CartDto;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartDao dao;
	
	@Override
	public void insert(CartDto dto) {

		int totalPrice=(dto.getAmount()*dto.getPrice());		
		dto.setTotalPrice(totalPrice);
		dao.insert(dto);
	}
	
	@Override
	public void cartList(CartDto dto, ModelAndView mView, HttpSession session){
		
	    String id=(String)session.getAttribute("id");
	    if(id==null) {
	    	dto.setId(session.getId());
	    }else {
	    	dto.setId(id);
	    }
	    String id2=dto.getId();
		List<CartDto> list=dao.cartList(id2);
		mView.addObject("list", list);

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
	public void updateCart(CartDto dto) {
		int totalPrice=(dto.getNewAmount()*dto.getPrice());		
		dto.setTotalPrice(totalPrice);
		dao.updateCart(dto);
	}


	
	
}











