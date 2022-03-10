package com.acorn.project.product.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.product.dao.ProductDao;
import com.acorn.project.product.dto.ProductDto;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao dao;

	@Override
	public void addProduct(ProductDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateProduct(ProductDto dto, HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProduct(HttpSession session, ModelAndView mView) {
		// TODO Auto-generated method stub
		
	}	
}
