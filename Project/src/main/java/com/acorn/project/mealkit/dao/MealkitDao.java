package com.acorn.project.mealkit.dao;

import java.util.List;

import com.acorn.project.mealkit.dto.MealkitDto;

public interface MealkitDao {
	
	public List<MealkitDto> allList(MealkitDto dto);
	public int getCount();
}
