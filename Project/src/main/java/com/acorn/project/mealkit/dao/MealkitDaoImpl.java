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
	public List<MealkitDto> allList(MealkitDto dto) {
		
		return session.selectList("mealkit.allList",dto);
	}

	@Override
	public int getCount() {
		return session.selectOne("mealkit.getCount");
	}

	@Override
	public List<MealkitDto> cList(MealkitDto dto) {
		
		return session.selectList("mealkit.cList",dto);
	}

	@Override
	public List<MealkitDto> jList(MealkitDto dto) {
		
		return session.selectList("mealkit.jList",dto);

	}

	@Override
	public List<MealkitDto> kList(MealkitDto dto) {
		
		return session.selectList("mealkit.kList",dto);

	}

	@Override
	public List<MealkitDto> wList(MealkitDto dto) {
		
		return session.selectList("mealkit.wList",dto);

	}

}
