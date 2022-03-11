package com.acorn.project.product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.project.product.dto.ProductDto;

@Repository
public class ProductDaoImpl implements ProductDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public void insert(ProductDto dto) {
		session.insert("product.insert", dto);
	}

	@Override
	public List<ProductDto> getList() {
		List<ProductDto> list=session.selectList("product.getList");
		return list;
	}

	@Override
	public void delete(String productId) {
		session.delete("product.delete", productId);
	}

	@Override
	public ProductDto getData(String productId) {
		return session.selectOne("product.getData", productId);
	}

	@Override
	public void update(ProductDto dto) {
		session.update("product.update", dto);
	}
	
	

	
}
