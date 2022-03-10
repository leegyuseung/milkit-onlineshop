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
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ProductDto> getList(ProductDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductDto getData(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(ProductDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

}
