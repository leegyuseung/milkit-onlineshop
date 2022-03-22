package com.acorn.project.mealkit.dao;

import java.util.List;

import com.acorn.project.mealkit.dto.MealkitContentDto;
import com.acorn.project.mealkit.dto.MealkitDto;

public interface MealkitDao {
	
	public List<MealkitDto> allList(MealkitDto dto);
	public int getCount();
	public MealkitDto getData(String productId);
	public void insert(MealkitContentDto dto);
	public MealkitContentDto getData2(String productId);
	public void delete(String productId);
	public void update(MealkitContentDto dto);
}
