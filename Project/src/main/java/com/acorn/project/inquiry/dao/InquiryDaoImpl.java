package com.acorn.project.inquiry.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.project.inquiry.dto.InquiryDto;
@Repository
public class InquiryDaoImpl implements InquiryDao{

	@Autowired
	private SqlSession session;

	@Override
	public List<InquiryDto> getList(InquiryDto dto) {

		return session.selectList("cafe.getList", dto);
	}

	@Override
	public int getCount(InquiryDto dto) {

		return session.selectOne("cafe.getCount", dto);
	}

	@Override
	public void insert(InquiryDto dto) {
		session.insert("cafe.insert", dto);
	}

	@Override
	public InquiryDto getData(int num) {

		return session.selectOne("cafe.getData", num);
	}

	@Override
	public InquiryDto getData(InquiryDto dto) {

		return session.selectOne("cafe.getData2", dto);
	}

	@Override
	public void addViewCount(int num) {
		session.update("cafe.addViewCount", num);
	}

	@Override
	public void delete(int num) {
		session.delete("cafe.delete", num);
	}

	@Override
	public void update(InquiryDto dto) {
		session.update("cafe.update", dto);
	}

}
