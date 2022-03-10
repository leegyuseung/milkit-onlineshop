package com.acorn.project.product.dao;

import java.util.List;

import com.acorn.project.product.dto.ProductDto;

public interface ProductDao {
		public void insert(ProductDto dto);
		public List<ProductDto> getList(ProductDto dto);
		public ProductDto getData(String id);
		public void update(ProductDto dto);
		public void delete(String id);
}
