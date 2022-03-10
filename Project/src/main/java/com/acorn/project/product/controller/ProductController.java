package com.acorn.project.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.product.dao.ProductDao;
import com.acorn.project.product.dto.ProductDto;
import com.acorn.project.product.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;
	
	//상품 추가 요청 처리 
	@RequestMapping("/staff/product/insert")
	public String insert(ProductDto dto) {
		service.addProduct(dto);
		return "staff/product/insert";
	}
	
	//상품 추가 폼 요청 처리 
	@RequestMapping("/staff/product/insertForm")
	public String insertform() {	
		return "staff/product/insertForm";
	}
	
	@RequestMapping("/staff/product/list")
	public ModelAndView list(ModelAndView mView) {
		service.getListProduct(mView);
		//view page 의 정보를 ModelAndView 객체에 담는다.
		mView.setViewName("staff/product/list");
		//ModelAndView 객체를 리턴해 준다.
		return mView;
	}
	
	@RequestMapping("/staff/product/delete")
	public ModelAndView delete(String productId, ModelAndView mView) {
		
		service.deleteProduct(productId);
		
		mView.setViewName("redirect:/staff/product/list.do");
		return mView;
	}
}
