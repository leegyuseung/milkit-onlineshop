package com.acorn.project.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.acorn.project.product.dao.ProductDao;
import com.acorn.project.product.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;
}
