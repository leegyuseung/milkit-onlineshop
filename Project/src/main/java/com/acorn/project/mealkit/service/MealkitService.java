package com.acorn.project.mealkit.service;


import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.mealkit.dto.MealkitContentDto;
import com.acorn.project.mealkit.dto.MealkitDto;

public interface MealkitService {
	
	public void allList(HttpServletRequest request);
	public void cList(HttpServletRequest request);
	public void jList(HttpServletRequest request);
	public void kList(HttpServletRequest request);
	public void wList(HttpServletRequest request);
	public void getDetail(ModelAndView mView, String productId);
	public void saveContent(MealkitContentDto dto);
	public void updateContent(MealkitContentDto dto);
}
