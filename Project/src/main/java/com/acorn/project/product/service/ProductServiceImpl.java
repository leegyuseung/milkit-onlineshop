package com.acorn.project.product.service;

import java.util.List;

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
		dao.insert(dto);
	}

	@Override
	public void getListProduct(ModelAndView mView) {
		List<ProductDto> list=dao.getList();
		mView.addObject("list", list);
	}

}
