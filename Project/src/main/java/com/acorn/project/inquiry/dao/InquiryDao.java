package com.acorn.project.inquiry.dao;



import java.util.List;

import com.acorn.project.inquiry.dto.InquiryDto;

public interface InquiryDao {
	//글목록
	public List<InquiryDto> getList(InquiryDto dto);
	//글의 갯수
	public int getCount(InquiryDto dto);
	//글 추가
	public void insert(InquiryDto dto);
	//글정보 얻어오기
	public InquiryDto getData(int num);
	//키워드를 활용한 글정보 얻어오기
	public InquiryDto getData(InquiryDto dto);
	//조회수 증가 시키기
	public void addViewCount(int num);
	//글 삭제
	public void delete(int num);
	//글 수정
	public void update(InquiryDto dto);
}
