package com.acorn.project.product.dao;

import java.util.List;

import com.acorn.project.product.dto.ProductDto;

public interface ProductDao {
		public void insert(ProductDto dto);
		public List<ProductDto> getList();
		public void delete(String productId);
		public ProductDto getData(String productId);
		public void update(ProductDto dto);
		public boolean isExist(String inputProductId);
}
