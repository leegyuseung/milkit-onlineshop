package com.acorn.project.product.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.product.dto.ProductDto;


public interface ProductService {
	public void addProduct(ProductDto dto, ModelAndView mView, HttpServletRequest request);
	public void getListProduct(ModelAndView mView);
	public void deleteProduct(String productId);
	public void getProduct(String productId, ModelAndView mView);
	public void updateProduct(ProductDto dto);
	public Map<String, Object> isExistProductId(@RequestParam String inputProductId);
}
