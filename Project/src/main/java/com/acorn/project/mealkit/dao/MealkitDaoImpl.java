package com.acorn.project.mealkit.dao;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.project.mealkit.dto.MealkitDto;

@Repository
public class MealkitDaoImpl implements MealkitDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public List<MealkitDto> getList(MealkitDto dto) {
		
		return session.selectList("Mealkit.getList", dto);
	}

	@Override
	public int getCount() {
		
		return session.selectOne("mealkit.getCount");
	}

	
	@Override
	public MealkitDto getData(int num) {
		
		return session.selectOne("mealkit.getData", num);
	}

}
