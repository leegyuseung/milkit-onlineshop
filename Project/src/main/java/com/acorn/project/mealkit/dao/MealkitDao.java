package com.acorn.project.mealkit.dao;

import java.util.List;

import com.acorn.project.mealkit.dto.MealkitDto;

public interface MealkitDao {
	public List<MealkitDto> getList(MealkitDto dto);
	public int getCount();
	public MealkitDto getData(int num);
}
