package com.acorn.project.mealkit.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.project.mealkit.dto.MealkitContentDto;
import com.acorn.project.mealkit.dto.MealkitDto;

@Repository
public class MealkitDaoImpl implements MealkitDao {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<MealkitDto> allList(MealkitDto dto) {
		
		return session.selectList("mealkit.allList",dto);
	}

	@Override
	public int getCount() {
		return session.selectOne("mealkit.getCount");
	}


	@Override
	public MealkitDto getData(String productId) {
		return session.selectOne("mealkit.getData", productId);

	}

	@Override
	public void insert(MealkitContentDto dto) {
		session.insert("mealkit.insert", dto);
		
	}

	@Override
	public MealkitContentDto getData2(String productId2) {
		
		return session.selectOne("mealkit.getData2", productId2);
	}
	
	public void update(MealkitContentDto dto) {
		session.update("mealkit.update", dto);
	}

	@Override
	public void delete(String productId) {
		session.delete("mealkit.delete", productId);
		
	}

}
