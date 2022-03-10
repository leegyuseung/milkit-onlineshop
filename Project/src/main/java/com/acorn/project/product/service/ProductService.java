package com.acorn.project.product.service;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.product.dto.ProductDto;


public interface ProductService {
	public void addProduct(ProductDto dto);
	public void getListProduct(ModelAndView mView);


}
