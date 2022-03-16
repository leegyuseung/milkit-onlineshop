package com.acorn.project.mealkit.dao;

import java.util.List;

import com.acorn.project.mealkit.dto.MealkitContentDto;
import com.acorn.project.mealkit.dto.MealkitDto;

public interface MealkitDao {
	
	public List<MealkitDto> allList(MealkitDto dto);
	public List<MealkitDto> cList(MealkitDto dto);
	public List<MealkitDto> jList(MealkitDto dto);
	public List<MealkitDto> kList(MealkitDto dto);
	public List<MealkitDto> wList(MealkitDto dto);
	public int getCount();
	public MealkitDto getData(String productId);
	public void insert(MealkitContentDto dto);
	public MealkitContentDto getData2(String productId);
	public void delete(String productId);
}
