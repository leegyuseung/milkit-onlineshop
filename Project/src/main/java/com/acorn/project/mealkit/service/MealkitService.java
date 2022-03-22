package com.acorn.project.mealkit.service;


import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.mealkit.dto.MealkitContentDto;
import com.acorn.project.mealkit.dto.MealkitDto;

public interface MealkitService {
	
	public void allList(HttpServletRequest request, MealkitDto dto);
	public void getDetail(ModelAndView mView, String productId);
	public void saveContent(MealkitContentDto dto);
	public void deleteContent(String productId, HttpServletRequest request);
	public void updateContent(MealkitContentDto dto);

}
