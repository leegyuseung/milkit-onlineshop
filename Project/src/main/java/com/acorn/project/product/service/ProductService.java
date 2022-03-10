package com.acorn.project.product.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.product.dto.ProductDto;


public interface ProductService {
	public void addProduct(ProductDto dto);
	public void updateProduct(ProductDto dto, HttpSession session);
	public void deleteProduct(HttpSession session, ModelAndView mView);


}
