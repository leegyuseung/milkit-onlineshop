package com.acorn.project.product.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.product.dto.ProductDto;


public interface ProductService {
	public void addProduct(ProductDto dto);
	public void getListProduct(ModelAndView mView);
	public void deleteProduct(String productId);
	public void getProduct(String productId, ModelAndView mView);
	public void updateProduct(ProductDto dto);

}
